CASE iState OF
    
    0:
        IF xEnable AND NOT xInitDone THEN
           iState    := 10;
           xOutError := FALSE;
           iCounts   := 0;
        ELSIF xEnable AND xInitDone THEN
           xPollEN   := TRUE;
           iState    := 5;
        ELSE
           xPollEN   := FALSE;
           xOutError := FALSE;
           xHostAlive := FALSE;
           xInitDone := FALSE;
        END_IF;
     5: (* Query timer *)
        IF NOT TP1.Q THEN
           xPollEN := FALSE;
           iState  := 100;
        END_IF;      
     10: (* Query compose *)
        diTimeout := TO_DINT(tTimeout);
        sCommand  := CONCAT('nohup ping -c1 -W', TO_STRING(diTimeout/1000, '{0:d} '));
        sCommand  := CONCAT(sCommand, sIPAddress);
        sCommand  := CONCAT(sCommand, ' | awk \'/bytes from/ {print 1; found=1} END {if (!found) print 0}\'');
        xInitDone := TRUE;
        iState    := 100;
     100:
        xExecute  := TRUE;
        iState    := 200;
     200:
        IF xDone AND NOT xError THEN
           IF TO_BYTE(sResult) = 1 THEN
              xHostAlive := TRUE;
              iCounts    := 0;
           ELSE
              iCounts    := iCounts + 1;
           END_IF;
           xExecute  := FALSE;
           xOutError := FALSE;
           xPollEN   := FALSE;
           iState    := 300;
        ELSIF xError THEN
           xOutError := TRUE;
           wOutError := wDiagCode;        
        END_IF;
     300:
        IF iCounts >= iPing THEN
           xHostAlive := FALSE;
           iCounts    := 0;
        END_IF;
           iState     := 0;
            
END_CASE;
TP1(IN := xPollEN, PT := tPing);