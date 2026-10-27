Instance: TaiwanNationalIdNamingSystem
InstanceOf: NamingSystem
Usage: #definition
Title: "Taiwan national identification number system"
Description: "Documents the identifier system required by the TW Core Patient idCardNumber slice. This IG does not maintain that namespace."
* name = "TaiwanNationalIdNamingSystem"
* status = #active
* kind = #identifier
* date = "2026-10-27"
* responsible = "Ministry of the Interior, Taiwan"
* uniqueId[0].type = #uri
* uniqueId[=].value = "http://www.moi.gov.tw"
* uniqueId[=].preferred = true

Instance: ExamplePractitionerIdNamingSystem
InstanceOf: NamingSystem
Usage: #definition
Title: "Example practitioner identifier system"
Description: "Identifier namespace used only by the practitioner examples in this IG."
* name = "ExamplePractitionerIdNamingSystem"
* status = #active
* kind = #identifier
* date = "2026-10-27"
* uniqueId[0].type = #uri
* uniqueId[=].value = "https://build.fhir.org/ig/Rehabotics-Medical-Techology-Co/RTS-IG/sid/example-practitioner-id"
* uniqueId[=].preferred = true

Instance: ExampleOrganizationIdNamingSystem
InstanceOf: NamingSystem
Usage: #definition
Title: "Example organization identifier system"
Description: "Identifier namespace used only by the organization examples in this IG."
* name = "ExampleOrganizationIdNamingSystem"
* status = #active
* kind = #identifier
* date = "2026-10-27"
* uniqueId[0].type = #uri
* uniqueId[=].value = "https://build.fhir.org/ig/Rehabotics-Medical-Techology-Co/RTS-IG/sid/example-organization-id"
* uniqueId[=].preferred = true
