xquery version "1.0" encoding "utf-8";

(:: OracleAnnotationVersion "1.0" ::)

declare namespace ns1="http://TargetNamespace.com/ConsumerService_Operation1_request";
(:: import schema at "Resources/consumer_request_description.xsd" ::)
declare namespace ns2="http://TargetNamespace.com/PublishService_ExternalAPICall_response";
(:: import schema at "Resources/publish-service-resp_desciption.xsd" ::)

declare variable $req_consumer as element() (:: schema-element(ns1:Root-Element) ::) external;

declare function local:func($req_consumer as element() (:: schema-element(ns1:Root-Element) ::)) as element() (:: schema-element(ns2:Root-Element) ::) {
    <ns2:Root-Element/>
};

local:func($req_consumer)
