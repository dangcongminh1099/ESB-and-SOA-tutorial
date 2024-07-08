xquery version "1.0" encoding "utf-8";

(:: OracleAnnotationVersion "1.0" ::)

declare namespace ns1="http://TargetNamespace.com/PublishService_ExternalAPICall_response";
(:: import schema at "Resources/publish-service-resp_desciption.xsd" ::)
declare namespace ns2="http://xmlns.oracle.com/FristAppOSB/FristAppESB/SumService";
(:: import schema at "../FristAppESB/Resources/SumService.wsdl" ::)

declare variable $rq as element() (:: schema-element(ns1:Root-Element) ::) external;

declare function local:func($rq as element() (:: schema-element(ns1:Root-Element) ::)) as element() (:: schema-element(ns2:SumOperation_params) ::) {
    <ns2:SumOperation_params/>
};

local:func($rq)
