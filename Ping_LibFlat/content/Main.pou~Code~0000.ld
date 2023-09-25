<?xml version="1.0" encoding="utf-8"?>
<body xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
 <LD>
  <inVariable localId="10" height="4" width="8" executionOrderId="1">
   <position x="76" y="12" />
   <connectionPointOut>
    <relPosition x="8" y="2" />
   </connectionPointOut>
   <expression>TRUE</expression>
   <addData>
    <data name="objectInformation" handleUnknown="preserve">
     <objectInformation networkId="1" subNetworkId="0" />
    </data>
   </addData>
  </inVariable>
  <inVariable localId="11" height="4" width="13" executionOrderId="2">
   <position x="71" y="28" />
   <connectionPointOut>
    <relPosition x="13" y="2" />
   </connectionPointOut>
   <expression>'10.0.2.15'</expression>
   <addData>
    <data name="objectInformation" handleUnknown="preserve">
     <objectInformation networkId="1" subNetworkId="0" />
    </data>
   </addData>
  </inVariable>
  <block localId="1" width="23" height="24" typeName="Ping" instanceName="Ping1" executionOrderId="3">
   <position x="86" y="8" />
   <inputVariables>
    <variable formalParameter="xEnable">
     <connectionPointIn>
      <relPosition x="0" y="6" />
      <connection refLocalId="10">
       <position x="86" y="14" />
       <position x="84" y="14" />
       <addData>
        <data name="connectionInformation" handleUnknown="preserve">
         <connectionInformation useAutoConnector="false" useUserConnector="false" implicitMultiRouted="false" invisible="false" wasExplicitFeedback="false" />
        </data>
       </addData>
      </connection>
     </connectionPointIn>
    </variable>
    <variable formalParameter="tPing">
     <connectionPointIn>
      <relPosition x="0" y="10" />
     </connectionPointIn>
    </variable>
    <variable formalParameter="iPing">
     <connectionPointIn>
      <relPosition x="0" y="14" />
     </connectionPointIn>
    </variable>
    <variable formalParameter="tTimeout">
     <connectionPointIn>
      <relPosition x="0" y="18" />
     </connectionPointIn>
    </variable>
    <variable formalParameter="sIPAddress">
     <connectionPointIn>
      <relPosition x="0" y="22" />
      <connection refLocalId="11">
       <position x="86" y="30" />
       <position x="84" y="30" />
       <addData>
        <data name="connectionInformation" handleUnknown="preserve">
         <connectionInformation useAutoConnector="false" useUserConnector="false" implicitMultiRouted="false" invisible="false" wasExplicitFeedback="false" />
        </data>
       </addData>
      </connection>
     </connectionPointIn>
    </variable>
   </inputVariables>
   <inOutVariables />
   <outputVariables>
    <variable formalParameter="xHostAlive">
     <connectionPointOut>
      <relPosition x="23" y="6" />
     </connectionPointOut>
    </variable>
    <variable formalParameter="xOutError">
     <connectionPointOut>
      <relPosition x="23" y="10" />
     </connectionPointOut>
    </variable>
    <variable formalParameter="wOutError">
     <connectionPointOut>
      <relPosition x="23" y="14" />
     </connectionPointOut>
    </variable>
   </outputVariables>
   <addData>
    <data name="objectInformation" handleUnknown="preserve">
     <objectInformation networkId="1" subNetworkId="0" />
    </data>
    <data name="blockInformation" handleUnknown="preserve">
     <blockInformation canEditLabel="true" extensible="false" imageWidth="8" imageHeight="0" />
    </data>
    <data name="parameterInformations" handleUnknown="preserve">
     <parameterInformations>
      <parameterInformation formalParameter="xEnable" localId="2" executionOrderId="3" negatable="true" editorParameter="false" priority="1" />
      <parameterInformation formalParameter="tPing" localId="3" executionOrderId="3" editorParameter="false" priority="2" />
      <parameterInformation formalParameter="iPing" localId="4" executionOrderId="3" editorParameter="false" priority="3" />
      <parameterInformation formalParameter="tTimeout" localId="5" executionOrderId="3" editorParameter="false" priority="4" />
      <parameterInformation formalParameter="sIPAddress" localId="6" executionOrderId="3" editorParameter="false" priority="5" />
      <parameterInformation formalParameter="xHostAlive" localId="7" executionOrderId="3" negatable="true" editorParameter="false" priority="6" />
      <parameterInformation formalParameter="xOutError" localId="8" executionOrderId="3" negatable="true" editorParameter="false" priority="7" />
      <parameterInformation formalParameter="wOutError" localId="9" executionOrderId="3" negatable="true" editorParameter="false" priority="8" />
     </parameterInformations>
    </data>
   </addData>
  </block>
 </LD>
 <addData>
  <data name="docInformation" handleUnknown="preserve">
   <docInformation gridActive="true" pageWidth="-1">
    <version>2.6.4.129.0:A1.10</version>
    <multilineOptions maximumContactWidth="18" minimumContactWidth="18" maximumContactLines="7" contactEllipse="true" maximumInstanceNameWidth="32" maximumInstanceNameLines="5" instanceNameEllipse="true" maximumVariableWidth="2147483647" variableEllipse="false" />
   </docInformation>
  </data>
 </addData>
</body>