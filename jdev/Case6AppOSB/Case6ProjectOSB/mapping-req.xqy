xquery version "1.0" encoding "utf-8";

(:: OracleAnnotationVersion "1.0" ::)

declare namespace ns1="http://TargetNamespace.com/ConcatExposeService_ConcatSoaCallOpr_request";
(:: import schema at "Resources/req-call-soap-concat-desc.xsd" ::)
declare namespace ns2="http://TargetNamespace.com/ConcatNameExposeService_ConCatOpr_request";
(:: import schema at "Resources/req_concat_service_desc.xsd" ::)

declare variable $requestFrClient as element() (:: schema-element(ns1:Root-Element) ::) external;

declare function local:func($requestFrClient as element() (:: schema-element(ns1:Root-Element) ::)) as element() (:: schema-element(ns2:Root-Element) ::) {
    <ns2:Root-Element>
        <ns2:firstName>{fn:data($requestFrClient/ns1:param1FirstName)}</ns2:firstName>
        <ns2:lastName>{fn:data($requestFrClient/ns1:param2LastName)}</ns2:lastName>
    </ns2:Root-Element>
};

local:func($requestFrClient)
