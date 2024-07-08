xquery version "1.0" encoding "utf-8";

(:: OracleAnnotationVersion "1.0" ::)

declare namespace ns1="http://TargetNamespace.com/ConsumerRestReference_ConsumerOprSum1_response";
(:: import schema at "Resources/external-service-desc-resp.xsd" ::)
declare namespace ns2="http://TargetNamespace.com/PublisherRestService_TestOpr_response";
(:: import schema at "Resources/publisher_desc_resp.xsd" ::)

declare variable $resp_consumer as element() (:: schema-element(ns1:Root-Element) ::) external;

declare function local:func($resp_consumer as element() (:: schema-element(ns1:Root-Element) ::)) as element() (:: schema-element(ns2:Root-Element) ::) {
    <ns2:Root-Element>
        <ns2:finalResult>{fn:data($resp_consumer/ns1:result)}</ns2:finalResult>
    </ns2:Root-Element>
};

local:func($resp_consumer)
