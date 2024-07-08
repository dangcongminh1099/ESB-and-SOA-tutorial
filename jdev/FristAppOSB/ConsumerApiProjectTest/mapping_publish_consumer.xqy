xquery version "1.0" encoding "utf-8";

(:: OracleAnnotationVersion "1.0" ::)

declare namespace ns1="http://TargetNamespace.com/ConsumerServiceApi_SumOperation_request";
(:: import schema at "Resources/consumer_service_req_desc.xsd" ::)
declare namespace ns2="http://xmlns.oracle.com/FristAppOSB/ConsumerApiProjectTest/PublishServiceApi";
(:: import schema at "Resources/PublishServiceApi.wsdl" ::)

declare variable $req as element() (:: schema-element(ns2:Operation1_params) ::) external;

declare function local:func($req as element() (:: schema-element(ns2:Operation1_params) ::)) as element() (:: schema-element(ns1:Root-Element) ::) {
    <ns1:Root-Element>
        <ns1:var1>{fn:data($req/ns2:param1)}</ns1:var1>
        <ns1:var2>{fn:data($req/ns2:param2)}</ns1:var2>
    </ns1:Root-Element>
};

local:func($req)
