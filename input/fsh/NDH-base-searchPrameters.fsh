
Instance: sp-endpoint-mime-type
InstanceOf: SearchParameter
Usage: #definition
Title: "Endpoint mime-type"
* status = #active
* code = #mime-type
* name = "Endpoint-mine-type"
* description = "Select Endpoints that support the specified mime-type"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/sp-endpoint-mime-type"
* base[0] = #Endpoint
* type = #token
* expression = "Endpoint.payloadMimeType"
* multipleOr = true
* multipleAnd = true


Instance: sp-endpoint-organization
InstanceOf: SearchParameter
Usage: #definition
Title: "Endpoint organization"
* status = #active
* code = #organization
* name = "Endpoint-organization"
* description = "Select Endpoints managed by the specified organization"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/sp-endpoint-organization"
* base[0] = #Endpoint
* type = #reference
* target[+] = #Organization
* expression = "Endpoint.managingOrganization"
* multipleOr = true
* multipleAnd = true
* modifier[+] = #above
* modifier[+] = #below
* chain[+] = "identifier"
* chain[+] = "name"
* chain[+] = "address"
* chain[+] = "partof"
* chain[+] = "type"


Instance: sp-endpoint-usecase-standard
InstanceOf: SearchParameter
Usage: #definition
Title: "Endpoint usecase-standard"
* status = #active
* code = #usecase-standard
* name = "Endpoint-usecase-standard"
* description = "Select Endpoints that support the specified usecase standard"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/sp-endpoint-usecase-standard"
* base[0] = #Endpoint
* type = #uri
* expression = "Endpoint.extension('http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-endpoint-usecase').extention('standard')"
* multipleOr = true
* multipleAnd = true
* modifier[+] = #below


Instance: sp-endpoint-usecase-type
InstanceOf: SearchParameter
Usage: #definition
Title: "Endpoint usecase-type"
* status = #active
* code = #usecase-type
* name = "Endpoint-usecase-type"
* description = "Select Endpoints that support the type of services indicated by the specified usecase-type"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/sp-endpoint-usecase-type"
* base[0] = #Endpoint
* type = #token
* expression = "Endpoint.extension('http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-endpoint-usecase').extention('type')"
* multipleOr = true
* multipleAnd = true
* modifier[+] = #text

Instance: sp-organization-endpoint
InstanceOf: SearchParameter
Usage: #definition
Title: "Organization endpoint"
* status = #active
* code = #endpoint
* name = "Organization-endpoint"
* description = "Select Organizations with the specified endpoint"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/sp-organization-endpoint"
* base[0] = #Organization
* type = #reference
* target[+] = #Endpoint
* expression = "Organization.endpoint"
* multipleOr = true
* multipleAnd = true
* chain[+] = "identifier"
* chain[+] = "connection-type"
* chain[+] = "organization"


Instance: sp-practitioner-identifier-assigner
InstanceOf: SearchParameter
Usage: #definition
Title: "Practitioner identifier-assigner"
* status = #active
* code = #identifier-assigner
* name = "Practitioner-identifier-assigner"
* description = "Select Practitioners with an identifier issued by the specified organition"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/sp-practitioner-identifier-assigner"
* base[0] = #Practitioner
* type = #reference
* target[+] = #Organization
* expression = "Practitioner.identifier.assigner"
* multipleOr = true
* multipleAnd = true

Instance: sp-practitioner-qualification-issuer
InstanceOf: SearchParameter
Usage: #definition
Title: "Practitioner qualification-issuer"
* status = #active
* code = #qualification-issuer
* name = "Practitioner-qualification-issuer"
* description = "Select Practitioners with a qualification issued by the specified organition"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/sp-practitioner-qualification-issuer"
* base[0] = #Practitioner
* type = #reference
* target[+] = #Organization
* expression = "Practitioner.qualification.issuer"
* multipleOr = true
* multipleAnd = true
* modifier[+] = #below
* chain[+] = "identifier"
* chain[+] = "name"

Instance: sp-practitioner-qualification-code
InstanceOf: SearchParameter
Usage: #definition
Title: "Practitioner qualification-code"
* status = #active
* code = #qualification-code
* name = "Practitioner-qualification-code"
* description = "Select Practitioner with a type of qualification matching the specific code"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/sp-practitioner-qualification-code"
* base[0] = #Practitioner
* type = #token
* expression = "Practitioner.qualification.code"
* multipleOr = true
* multipleAnd = true
* modifier[+] = #text

Instance: sp-practitionerrole-network
InstanceOf: SearchParameter
Usage: #definition
Title: "PractitionerRole network"
* status = #active
* code = #network
* name = "PractitionerRole-network"
* description = "Select roles where the practitioner is a member of the specified health insurance provider network"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/sp-practitionerrole-network"
* base[0] = #PractitionerRole
* type = #reference
* target[+] = #Organization
* expression = "PractitionerRole.extension('http://hl7.org/fhir/us/ndh/StructureDefinition/network-reference')"
* multipleOr = true
* multipleAnd = true
* chain[+] = "identifier"
* chain[+] = "name"
* chain[+] = "partof"

Instance: sp-insuranceplan-coverage-area
InstanceOf: SearchParameter
Usage: #definition
Title: "InsurancePlan coverage-area"
* status = #active
* code = #insuranceplan-coverage-area
* name = "Insurance-coverage-area"
* description = "Select products that are offered in the specified location"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/sp-insuranceplan-coverage-area"
* base[0] = #InsurancePlan
* type = #reference
* target[+] = #Location
* expression = "InsurancePlan.coverageArea"
* multipleOr = true
* multipleAnd = true
* chain[+] = "identifier"
* chain[+] = "contains"


Instance: sp-insuranceplan-coverage-benefit-type
InstanceOf: SearchParameter
Usage: #definition
Title: "InsurancePlan coverage-benefit-type"
* status = #active
* code = #insuranceplan-coverage-benefit-type
* name = "Insuranceplan-coverage-benefit-type"
* description = "Select products that are offered in the specified location"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/sp-insuranceplan-coverage-benefit-type"
* base[0] = #InsurancePlan
* type = #token
* expression = "InsurancePlan.coverage.benefit.type"
* multipleOr = true
* multipleAnd = true
* modifier = #text

Instance: sp-insuranceplan-coverage-network
InstanceOf: SearchParameter
Usage: #definition
Title: "InsurancePlan coverage-network"
* status = #active
* code = #insuranceplan-coverage-network
* name = "Insuranceplan-coverage-network"
* description = "Select products offering covered benefits through the specified health insurance provider network"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/sp-insuranceplan-coverage-network"
* base[0] = #InsurancePlan
* type = #reference
* expression = "InsurancePlan.coverage.network"
* target[+] = #Organization
* multipleOr = true
* multipleAnd = true
* chain[+] = "organization-identifier"
* chain[+] = "organization-name"
* chain[+] = "organization-partof"

Instance: sp-careteam-endpoint
InstanceOf: SearchParameter
Usage: #definition
Title: "CareTeam endpoint"
* status = #active
* code = #endpoint
* name = "CareTeam-endpoint"
* description = "Select CareTeams with the specified endpoint"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/sp-careteam-endpoint"
* base[0] = #CareTeam
* type = #reference
* expression = "CareTeam.extension('http://hl7.org/fhir/us/ndh/StructureDefinition/endpoint-reference')"
* target[+] = #Endpoint
* multipleOr = true
* multipleAnd = true
* chain[+] = "identifier"
* chain[+] = "connection-type"
* chain[+] = "organization"

Instance: sp-careteam-location
InstanceOf: SearchParameter
Usage: #definition
Title: "CareTeam location"
* status = #active
* code = #location
* name = "CareTeam-location"
* description = "Select CareTeams operating at the specified location"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/sp-careteam-location"
* base[0] = #CareTeam
* type = #reference
* expression = "CareTeam.extension('http://hl7.org/fhir/us/ndh/StructureDefinition/locaion-reference')"
* target[+] = #Location
* multipleOr = true
* multipleAnd = true
* modifier[+] = #above
* modifier[+] = #below
* chain[+] = "identifier"
* chain[+] = "address"
* chain[+] = "organization"
* chain[+] = "type"

Instance: sp-careteam-organization
InstanceOf: SearchParameter
Usage: #definition
Title: "CareTeam organization"
* status = #active
* code = #organization
* name = "CareTeam-organization"
* description = "Select CareTeams managed by the specified organization"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/sp-careteam-organization"
* base[0] = #CareTeam
* type = #reference
* expression = "CareTeam.managingOrganization"
* target[+] = #Organization
* multipleOr = true
* multipleAnd = true
* modifier[+] = #above
* modifier[+] = #below
* chain[+] = "identifier"
* chain[+] = "name"
* chain[+] = "address"
* chain[+] = "partof"
* chain[+] = "type"

Instance: sp-careteam-service
InstanceOf: SearchParameter
Usage: #definition
Title: "CareTeam service"
* status = #active
* code = #service
* name = "CareTeam-service"
* description = "Select CareTeams providing the specified service"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/sp-careteam-service"
* base[0] = #CareTeam
* type = #reference
* expression = "CareTeam.extension('http://hl7.org/fhir/us/ndh/StructureDefinition/healthcareservice-reference')"
* target[+] = #HealthcareService
* multipleOr = true
* multipleAnd = true
* chain[+] = "identifier"
* chain[+] = "service-category"
* chain[+] = "organization"
* chain[+] = "location"

Instance: sp-careteam-name
InstanceOf: SearchParameter
Usage: #definition
Title: "CareTeam name"
* status = #active
* code = #name
* name = "CareTeam-service"
* description = "Select CareTeams with the specified name"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/sp-careteam-name"
* base[0] = #CareTeam
* type = #string
* expression = "CareTeam.name|CareTeam.extension('http://hl7.org/fhir/us/ndh/StructureDefinition/careteam-alias')"
* multipleOr = true
* multipleAnd = true
* modifier[+] = #exact
* modifier[+] = #contains

Instance: sp-network-coverage-area
InstanceOf: SearchParameter
Usage: #definition
Title: "Network coverage-area"
* status = #active
* code = #service
* name = "Network-coverage-area"
* description = "Select health insurance provider networks available in a regin described by the specified location"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/sp-network-coverage-area"
* base[0] = #Organization
* type = #reference
* expression = "Organization.extension('http://hl7.org/fhir/us/ndh/StructureDefinition/location-reference')"
* target[+] = #Location
* multipleOr = true
* multipleAnd = true
* chain[+] = "location-identifier"
* chain[+] = "location-contains"


Instance: sp-locaion-physical-type
InstanceOf: SearchParameter
Usage: #definition
Title: "Location physical-type"
* status = #active
* code = #physical-type
* name = "Location-physical-type"
* description = "Select Locations of the specified physical type"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/sp-locaion-physical-type"
* base[0] = #Location
* type = #token
* expression = "Location.physicalType"
* multipleOr = true
* multipleAnd = true
* modifier[+] = #text

Instance: sp-verificationresult-attestation-who
InstanceOf: SearchParameter
Usage: #definition
Title: "VerificationResult attestation-who"
* status = #active
* code = #verificationresult-attestation-who
* name = "VerificationResult-attestation-who"
* description = "Select validation information for data that was attested to by the specified individual or organization"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/sp-verificationresult-attestation-who"
* base[0] = #VerificationResult
* type = #reference
* expression = "VerificationResult.attestation.who"
* target[+] = #Practitioner
* target[+] = #PractitionerRole
* target[+] = #Organization
* multipleOr = true
* multipleAnd = true
* modifier[+] = #type
* chain[+] = "organization-identifier"
* chain[+] = "organization-address"
* chain[+] = "organization-name"
* chain[+] = "organization-partof"
* chain[+] = "practitioner-name"
* chain[+] = "practitioner-identifier"
* chain[+] = "practitionerrole-identifier"
* chain[+] = "practitionerrole-practitioner"
* chain[+] = "practitionerrole-organization"


Instance: sp-verificationresult-primarysource-who
InstanceOf: SearchParameter
Usage: #definition
Title: "VerificationResult primarysource-who"
* status = #active
* code = #verificationresult-primarysource-who
* name = "VerificationResult-primarysource-who"
* description = "Select verification information for data that was verified against the specified primary source"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/sp-verificationresult-primarysource-who"
* base[0] = #VerificationResult
* type = #reference
* expression = "VerificationResult.primarysource.who"
* target[+] = #Practitioner
* target[+] = #PractitionerRole
* target[+] = #Organization
* multipleOr = true
* multipleAnd = true
* modifier[+] = #type
* chain[+] = "organization-identifier"
* chain[+] = "organization-address"
* chain[+] = "organization-name"
* chain[+] = "organization-partof"
* chain[+] = "practitioner-name"
* chain[+] = "practitioner-identifier"
* chain[+] = "practitionerrole-identifier"
* chain[+] = "practitionerrole-practitioner"
* chain[+] = "practitionerrole-organization"






