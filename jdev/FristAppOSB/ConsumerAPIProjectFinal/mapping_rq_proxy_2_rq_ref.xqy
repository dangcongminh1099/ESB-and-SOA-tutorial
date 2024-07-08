xquery version "1.0" encoding "utf-8";

(:: OracleAnnotationVersion "1.0" ::)

declare namespace ns2="http://TargetNamespace.com/ProxyService4UseExternalAPI_SumExternalAPIOperation_request";
(:: import schema at "Resources/desc_req_2_proxy_service.xsd" ::)
declare namespace ns1="http://xmlns.oracle.com/FristAppOSB/ConsumerAPIProjectFinal/FirstAPIESBReference";
(:: import schema at "Resources/FirstAPIESBReference.wsdl" ::)

declare variable $req_proxy as element() (:: schema-element(ns2:Root-Element) ::) external;

declare function local:func($req_proxy as element() (:: schema-element(ns2:Root-Element) ::)) as element() (:: schema-element(ns1:FirstAPIESBOpr_params) ::) {
    <ns1:FirstAPIESBOpr_params>
        <ns1:param1>{fn:data($req_proxy/ns2:value1)}</ns1:param1>
        <ns1:param2>{fn:data($req_proxy/ns2:value2)}</ns1:param2>
    </ns1:FirstAPIESBOpr_params>
};

local:func($req_proxy)
