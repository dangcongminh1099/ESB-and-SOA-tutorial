xquery version "1.0" encoding "utf-8";

(:: OracleAnnotationVersion "1.0" ::)

declare namespace ns1="http://TargetNamespace.com/PublisherService_SumCall_request";
(:: import schema at "Resources/des_publisher_req.xsd" ::)
declare namespace ns2="http://xmlns.oracle.com/FristAppOSB/ConsumerTest3/ConsumerAPIReference";
(:: import schema at "Resources/ConsumerAPIReference.wsdl" ::)

declare variable $rq_publisher as element() (:: schema-element(ns1:Root-Element) ::) external;

declare function local:func($rq_publisher as element() (:: schema-element(ns1:Root-Element) ::)) as element() (:: schema-element(ns2:SumOperation_params) ::) {
    <ns2:SumOperation_params>
        <ns2:param1>{fn:data($rq_publisher/ns1:var1)}</ns2:param1>
        <ns2:param2>{fn:data($rq_publisher/ns1:var2)}</ns2:param2>
    </ns2:SumOperation_params>
};

local:func($rq_publisher)
