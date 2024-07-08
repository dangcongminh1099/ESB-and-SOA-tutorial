xquery version "1.0" encoding "utf-8";

(:: OracleAnnotationVersion "1.0" ::)

declare namespace ns1="http://TargetNamespace.com/PublisherRestService_TestOpr_request";
(:: import schema at "Resources/publisher_desc_request.xsd" ::)
declare namespace ns2="http://xmlns.oracle.com/CallExternalServiceApplication/MappingRespExternalServiceByXqueryFile/ConsumerRestReference";
(:: import schema at "Resources/ConsumerRestReference.wsdl" ::)

declare variable $publisher_req as element() (:: schema-element(ns1:Root-Element) ::) external;

declare function local:func($publisher_req as element() (:: schema-element(ns1:Root-Element) ::)) as element() (:: schema-element(ns2:ConsumerOprSum1_params) ::) {
    <ns2:ConsumerOprSum1_params>
        <ns2:param1>{fn:data($publisher_req/ns1:publisher_number1)}</ns2:param1>
        <ns2:param2>{fn:data($publisher_req/ns1:publisher_number2)}</ns2:param2>
    </ns2:ConsumerOprSum1_params>
};

local:func($publisher_req)
