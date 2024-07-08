xquery version "1.0" encoding "utf-8";

(:: OracleAnnotationVersion "1.0" ::)

declare namespace ns2="http://TargetNamespace.com/PublishRestAPI_CalSumOpreation_response";
(:: import schema at "Resources/desc_publish_resp.xsd" ::)
declare namespace ns1="http://TargetNamespace.com/SumService_SumOperation_response";
(:: import schema at "../FristAppESB/Resources/nxsd_schema1.xsd" ::)

declare variable $resp_consumer as element() (:: schema-element(ns1:Root-Element) ::) external;

declare function local:func($resp_consumer as element() (:: schema-element(ns1:Root-Element) ::)) as element() (:: schema-element(ns2:Root-Element) ::) {
    <ns2:Root-Element>
        <ns2:finalResult>{fn:data($resp_consumer/ns1:result)}</ns2:finalResult>
    </ns2:Root-Element>
};

local:func($resp_consumer)
