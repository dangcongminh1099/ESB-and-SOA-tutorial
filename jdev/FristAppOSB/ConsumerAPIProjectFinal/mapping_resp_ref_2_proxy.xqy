xquery version "1.0" encoding "utf-8";

(:: OracleAnnotationVersion "1.0" ::)

declare namespace ns1="http://TargetNamespace.com/FirstAPIESBReference_FirstAPIESBOpr_response";
(:: import schema at "Resources/desc_response_first_api_ref.xsd" ::)
declare namespace ns2="http://TargetNamespace.com/ProxyService4UseExternalAPI_SumExternalAPIOperation_response";
(:: import schema at "Resources/desc_resp_2_proxy_service.xsd" ::)

declare variable $resp_proxy as element() (:: schema-element(ns1:Root-Element) ::) external;
declare variable $midConstantVar  as element() external;

declare function local:func($resp_proxy as element() (:: schema-element(ns1:Root-Element) ::),$midConstantVar as element()) as element() (:: schema-element(ns2:Root-Element) ::) {
    <ns2:Root-Element>
        <ns2:mid>{fn:data($midConstantVar)}</ns2:mid>
        <ns2:finalResult>{fn:data($resp_proxy/ns1:result)}</ns2:finalResult>
        
    </ns2:Root-Element>
};

local:func($resp_proxy,$midConstantVar)
