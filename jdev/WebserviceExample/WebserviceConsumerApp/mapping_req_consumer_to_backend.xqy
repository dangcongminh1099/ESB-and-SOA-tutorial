xquery version "1.0" encoding "utf-8";

(:: OracleAnnotationVersion "1.0" ::)

declare default element namespace "";
(:: import schema at "../BackendApp/Resources/desc_request_to_backend.xsd" ::)

declare variable $req_consumer as element() (:: schema-element(varReq) ::) external;

declare function local:func($req_consumer as element() (:: schema-element(varReq) ::)) as element() (:: schema-element(varReq) ::) {
    <varReq>{fn:data($req_consumer)}</varReq>
};

local:func($req_consumer)
