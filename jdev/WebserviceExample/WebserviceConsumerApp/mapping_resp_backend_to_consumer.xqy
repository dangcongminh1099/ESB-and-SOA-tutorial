xquery version "1.0" encoding "utf-8";

(:: OracleAnnotationVersion "1.0" ::)

declare default element namespace "";
(:: import schema at "Resources/ExternalServiceReference.wsdl" ::)
declare namespace ns1="http://xmlns.oracle.com/WebserviceExample/WebserviceConsumerApp/ProxyWebService";
(:: import schema at "ProxyWebService.wsdl" ::)

declare variable $resp_backend as element() (:: schema-element(response) ::) external;

declare function local:func($resp_backend as element() (:: schema-element(response) ::)) as element() (:: schema-element(ns1:string) ::) {
    <ns1:string>{fn:data($resp_backend)}</ns1:string>
};

local:func($resp_backend)
