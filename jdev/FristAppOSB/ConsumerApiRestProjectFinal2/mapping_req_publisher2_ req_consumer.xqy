xquery version "1.0" encoding "utf-8";

(:: OracleAnnotationVersion "1.0" ::)

declare namespace ns1="http://TargetNamespace.com/PublishRestAPI_CalSumOpreation_request";
(:: import schema at "Resources/desc_publish_request.xsd" ::)
declare namespace ns2="http://xmlns.oracle.com/FristAppOSB/ConsumerApiRestProjectFinal2/ConsumerReferenceRest";

(:: import schema at "Resources/ConsumerReferenceRest.wsdl" ::)

declare variable $req_publisher as element() (:: schema-element(ns1:Root-Element) ::) external;

declare function local:func($req_publisher as element() (:: schema-element(ns1:Root-Element) ::)) as element() (:: schema-element(ns2:SumOperation_params) ::) {
    <ns2:SumOperation_params>
        <ns2:param1>{fn:data($req_publisher/ns1:param1)}</ns2:param1>
        <ns2:param2>{fn:data($req_publisher/ns1:param2)}</ns2:param2>
    </ns2:SumOperation_params>
};

local:func($req_publisher)
