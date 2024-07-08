xquery version "1.0" encoding "utf-8";

(:: OracleAnnotationVersion "1.0" ::)

declare namespace ns1="http://TargetNamespace.com/ConsumerAPIReference_SumOperation_response";
(:: import schema at "Resources/desc_consumer_resp.xsd" ::)
declare namespace ns2="http://TargetNamespace.com/PublisherService_SumCall_response";
(:: import schema at "Resources/des_publisher_response.xsd" ::)

declare variable $resp_consumer as element() (:: schema-element(ns1:Root-Element) ::) external;

declare function local:func($resp_consumer as element() (:: schema-element(ns1:Root-Element) ::)) as element() (:: schema-element(ns2:Root-Element) ::) {
    <ns2:Root-Element>
        <ns2:finalResult>{fn:data($resp_consumer/ns1:result)}</ns2:finalResult>
    </ns2:Root-Element>
};

local:func($resp_consumer)
