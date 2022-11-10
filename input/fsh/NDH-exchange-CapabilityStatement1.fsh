RuleSet:       CapabilityCommon
* jurisdiction        = http://unstats.un.org/unsd/methods/m49/m49.htm#001
* status              = #active
* date                = "2022-11-01"
* publisher           = "HL7 International - Patient Administration Work Group"
* contact[0].telecom[0].system = #url
* contact[0].telecom[0].value  = "http://hl7.org/Special/committees/pafm"
* kind                = #requirements
* fhirVersion         = #4.0.1
* format[+]           = #xml
* format[+]           = #json

Instance: CapabilityNdhExchangeServer
InstanceOf: CapabilityStatement
Usage: #definition
Title: "NDH Exchange Capability Statement"

* id = "ndh-exchange-server"
* name = "NDH Exchange Capability Statement"
* url = "http://hl7.org/fhir/us/ndh/CapabilityStatement/ndh-exchange-server"
* description = "Capabilities for NDH Exchange Server"
* text.div = 
"<div xmlns=\"http://www.w3.org/1999/xhtml\">
    <h3 id=\"resource-details\">FHIR RESTful Capabilities by Resource/Profile:</h3>
    <h4>Summary</h4>
    <table class=\"grid\">
        <thead>
            <tr>
                <th>Resource Type</th>
                <th>Supported Profiles</th>
                <th>Conformance Expectation</th>
                <th>Supported Searches</th>
                <th>Supported <code>_includes</code></th>
                <th>Supported <code>_revincludes</code></th>
                <th>Supported Operations</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td><a href=\"#endpoint\">Endpoint</a></td>
                <td><a href=\"StructureDefinition-ndhEx-endpoint.html\">NDH Exchange Endpoint</a></td>
                <td><strong>SHALL</strong></td>
                <td>mime-type, organization, usecase-standard, usecase-type</td>
                <td>-</td>
                <td>-</td>
                <td>-</td>
            </tr>
             <tr>
                <td><a href=\"#healthcareService\">HealthcareService</a></td>
                <td><a href=\"StructureDefinition-ndhEx-healthcareService.html\">NDH Exchange HealthcareService</a></td>
                <td><strong>SHALL</strong></td>
                <td>endpoint, coverage-area, location, name, organization, service-category, service-type, specialty</td>
                <td>-</td>
                <td>-</td>
                <td>-</td>
            </tr>
            <tr>
                <td><a href=\"#location\">Location</a></td>
                <td><a href=\"StructureDefinition-ndhEx-location.html\">NDH Exchange Location</a></td>
                <td><strong>SHALL</strong></td>
                <td>address, endpoint, organization, partOf, physicalType, type</td>
                <td>-</td>
                <td>-</td>
                <td>-</td>
            </tr>
            <tr>
                <td><a href=\"#organizationAffiliation\">OrganizationAffiliation</a></td>
                <td><a href=\"StructureDefinition-ndhEx-organizationAffiliation.html\">NDH Exchange OrganizationAffiliation</a></td>
                <td><strong>SHALL</strong></td>
                <td>endpoint, location, network, participating-orgnization, primary-orgnization, role, service, specialty</td>
                <td>-</td>
                <td>-</td>
                <td>-</td>
            </tr>
            <tr>
                <td><a href=\"#practitionerRole\">PractitionerRole</a></td>
                <td><a href=\"StructureDefinition-ndhEx-practitionerRole.html\">NDH Exchange practitionerRole</a></td>
                <td><strong>SHALL</strong></td>
                <td>endpoint, location, network, orgnization, practitioner, role, service, specialty</td>
                <td>-</td>
                <td>-</td>
                <td>-</td>
            </tr>
            <tr>
                <td><a href=\"#organization\">Organization</a></td>
                <td><a href=\"StructureDefinition-ndh-organization.html\">NDH Base Organization</a></td>
                <td><strong>SHALL</strong></td>
                <td>address, endpoint, identifier, name, partOf, type</td>
                <td>-</td>
                <td>-</td>
                <td>-</td>
            </tr>
            <tr>
                <td><a href=\"#practitioner\">Practitioner</a></td>
                <td><a href=\"StructureDefinition-ndh-practitioner.html\">NDH Base Practitioner</a></td>
                <td><strong>SHALL</strong></td>
                <td>identifier, identifier-assigned, family, given name, qualification-code, qualification-issuer</td>
                <td>-</td>
                <td>-</td>
                <td>-</td>
            </tr>
            <tr>
                <td><a href=\"#restriction\">Restriction</a></td>
                <td><a href=\"StructureDefinition-ndh-restriction.html\">NDH Base Restriction</a></td>
                <td><strong>SHALL</strong></td>
                <td>administrated-by, _id, coverage_area, _lastUpdated, owned-by, plan-type </td>
                <td>-</td>
                <td>-</td>
                <td>-</td>
            </tr>
            <tr>
                <td><a href=\"#careTeam\">CareTeam</a></td>
                <td><a href=\"StructureDefinition-ndh-careteam.html\">NDH Base CareTeam</a></td>
                <td><strong>SHOULD</strong></td>
                <td>category, endpoint, location, name, organization, service</td>
                <td>-</td>
                <td>-</td>
                <td>-</td>
            </tr>
            <tr>
                <td><a href=\"#insurancePlan\">InsurancePlan</a></td>
                <td><a href=\"StructureDefinition-ndh-insurancePlan.html\">NDH Base InsurancePlan</a></td>
                <td><strong>SHOULD</strong></td>
                <td>administrated-by, identifier, coverage-area, coverage-benefit-type, coverage-network, owned-by, type</td>
                <td>-</td>
                <td>-</td>
                <td>-</td>
            </tr>
            <tr>
                <td><a href=\"#network\">Network</a></td>
                <td><a href=\"StructureDefinition-ndh-network.html\">NDH Base Network</a></td>
                <td><strong>SHOULD</strong></td>
                <td>coverage-area, name</td>
                <td>-</td>
                <td>-</td>
                <td>-</td>
            </tr>
            <tr>
                <td><a href=\"#verification\">Verification</a></td>
                <td><a href=\"StructureDefinition-ndh-verification.html\">NDH Base Validation</a></td>
                <td><strong>MAY</strong></td>
                <td>administrated-by, _id, coverage_area, _lastUpdated, owned-by, plan-type </td>
                <td>-</td>
                <td>-</td>
                <td>-</td>
            </tr>
        </tbody>
    </table>
    <h4 class=\"no_toc\" id=\"endpoint\">Endpoint</h4>
    <p>Conformance Expectation: <strong>SHALL</strong></p>
    <p>Interactions:</p>
    <ul>
        <li>A Server <strong>SHALL</strong> be capable of returning a Endpoint resource using: <code
                class=\"highlighter-rouge\">GET [base]/Endpoint/[id]</code></li>
        <li>A Server <strong>SHALL</strong> be capable of searching for Endpoint resources using: <code
                class=\"highlighter-rouge\">GET [base]/Endpoint/?[parameters]</code></li>
    </ul>
    <p>Search Parameter Defined by NDH:</p>
    <table class=\"grid\">
        <thead>
            <tr>
                <th>Conformance</th>
                <th>Parameter</th>
                <th>Type</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td><strong>SHALL</strong></td>
                <td><a href=\"SearchParameter-endpoint-mime-type.html\">mime-type</a></td>
                <td>token</td>
            </tr>
            <tr>
                <td><strong>SHALL</strong></td>
                <td><a href=\"SearchParameter-endpoint-organization.html\">organization</a></td>
                <td>reference</td>
            </tr>
            <tr>
                <td><strong>SHOULD</strong></td>
                <td><a href=\"SearchParameter-endpoint-usecase-standard.html\">usecase-standard</a></td>
                <td>uri</td>
            </tr>
            <tr>
                <td><strong>SHOULD</strong></td>
                <td><a href=\"SearchParameter-endpoint-usecase-type.html\">usecase-type</a></td>
                <td>token</td>
            </tr>
        </tbody>
    </table>
    <h4 class=\"no_toc\" id=\"healthcareService\">HealthcareService</h4>
    <p>Conformance Expectation: <strong>SHALL</strong></p>
    <h4 class=\"no_toc\" id=\"location\">Location</h4>
    <p>Conformance Expectation: <strong>SHALL</strong></p>
    <h4 class=\"no_toc\" id=\"organizationAffiliation\">OrganizationAffiliation</h4>
    <p>Conformance Expectation: <strong>SHALL</strong></p>
    <h4 class=\"no_toc\" id=\"practitionerRole\">PractitionerRole</h4>
    <p>Conformance Expectation: <strong>SHALL</strong></p>
    <h4 class=\"no_toc\" id=\"organization\">Organization</h4>
    <p>Conformance Expectation: <strong>SHALL</strong></p>
    <h4 class=\"no_toc\" id=\"practitioner\">Practitioner</h4>
    <p>Conformance Expectation: <strong>SHALL</strong></p>
    <h4 class=\"no_toc\" id=\"restriction\">Restriction</h4>
    <p>Conformance Expectation: <strong>SHALL</strong></p>
    <h4 class=\"no_toc\" id=\"careTeam\">CareTeam</h4>
    <p>Conformance Expectation: <strong>SHOULD</strong></p>
    <h4 class=\"no_toc\" id=\"insurancePlan\">InsurancePlan</h4>
    <p>Conformance Expectation: <strong>SHOULD</strong></p>
    <h4 class=\"no_toc\" id=\"network\">Network</h4>
    <p>Conformance Expectation: <strong>SHOULD</strong></p>
    <h4 class=\"no_toc\" id=\"verification\">Verification</h4>
    <p>Conformance Expectation: <strong>MAY</strong></p>
</div>"
* text.status = #generated
* insert CapabilityCommon
* rest[+].mode = #server
* rest[=].mode.extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[+].type = #Endpoint
* rest[=].resource[=].type.extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].supportedProfile[+] = "http://hl7.org/fhir/us/ndh/StructureDefinition/ndhEx-Endpoint"
* rest[=].resource[=].supportedProfile[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].interaction[+].code = #read
* rest[=].resource[=].interaction[=].code.extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].searchParam[+].name = "EndpointMineTypeSearchParameter"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/ndh/SearchParameter/endpoint-mime-type"
* rest[=].resource[=].searchParam[=].type = #token
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].searchParam[+].name = "organization"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/ndh/SearchParameter/endpoint-organization"
* rest[=].resource[=].searchParam[=].type = #reference
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].searchParam[+].name = "usecase-standard"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/ndh/SearchParameter/endpoint-usecase-standard"
* rest[=].resource[=].searchParam[=].type = #uri
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].searchParam[+].name = "usecase-type"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/ndh/SearchParameter/endpoint-usecase-type"
* rest[=].resource[=].searchParam[=].type = #token
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].searchParam[+].name = "identifier"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Endpoint-identifier"
* rest[=].resource[=].searchParam[=].type = #token
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
