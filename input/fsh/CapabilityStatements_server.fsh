// ================================================
// CapabilityStatement
// ================================================

Instance: MyFHIRServerCapabilityStatement
InstanceOf: CapabilityStatement
Usage: #definition
* url = "https://build.fhir.org/ig/Rehabotics-Medical-Techology-Co/RTS-IG/CapabilityStatement/MyFHIRServerCapabilityStatement"
* name = "MyFHIRServerCapabilityStatement"
* title = "My FHIR Server Capability Statement"
* status = #active
* experimental = false
* date = "2025-10-24"
* publisher = "Example Organization"
* description = "Server CapabilityStatement for the Rehab IG FHIR RESTful API."
* kind = #instance
* fhirVersion = #4.0.1
* implementation.description = "Rehab FHIR Server"
* implementation.url = "https://build.fhir.org/ig/Rehabotics-Medical-Techology-Co/RTS-IG"
* software.name = "RehabIG Server"
* software.version = "1.0.0"
* format[0] = #xml
* format[+] = #json
* patchFormat = #application/json-patch+json
* rest.mode = #server

* rest.resource[0].type = #Patient //0
* rest.resource[=].profile = "https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Patient-twcore"
* rest.resource[=].supportedProfile[0] = "https://build.fhir.org/ig/Rehabotics-Medical-Techology-Co/RTS-IG/StructureDefinition/Patient"
* rest.resource[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].extension[=].valueCode = #SHOULD
* rest.resource[=].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #read
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #search-type
* rest.resource[=].operation[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].operation[=].extension.valueCode = #SHOULD
* rest.resource[=].operation[=].name = "everything"
* rest.resource[=].operation[=].definition = "http://hl7.org/fhir/OperationDefinition/Patient-everything"
* rest.resource[=].searchParam[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHOULD
* rest.resource[=].searchParam[=].name = "_id"
* rest.resource[=].searchParam[=].definition = "https://twcore.mohw.gov.tw/ig/twcore/SearchParameter/Patient-id"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHOULD
* rest.resource[=].searchParam[=].name = "birthdate"
* rest.resource[=].searchParam[=].definition = "https://twcore.mohw.gov.tw/ig/twcore/SearchParameter/Patient-birthdate"
* rest.resource[=].searchParam[=].type = #date
* rest.resource[=].searchParam[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHOULD
* rest.resource[=].searchParam[=].name = "gender"
* rest.resource[=].searchParam[=].definition = "https://twcore.mohw.gov.tw/ig/twcore/SearchParameter/Patient-gender"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHOULD
* rest.resource[=].searchParam[=].name = "identifier"
* rest.resource[=].searchParam[=].definition = "https://twcore.mohw.gov.tw/ig/twcore/SearchParameter/Patient-identifier"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHOULD
* rest.resource[=].searchParam[=].name = "name"
* rest.resource[=].searchParam[=].definition = "https://twcore.mohw.gov.tw/ig/twcore/SearchParameter/Patient-name"
* rest.resource[=].searchParam[=].type = #string

* rest.resource[+].type = #Bundle //1
* rest.resource[=].profile = "http://hl7.org/fhir/StructureDefinition/Bundle"
* rest.resource[=].supportedProfile[0] = "https://build.fhir.org/ig/Rehabotics-Medical-Techology-Co/RTS-IG/StructureDefinition/ReponseBundle"
* rest.resource[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].extension[=].valueCode = #SHOULD
* rest.resource[=].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #read
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #search-type
* rest.resource[=].searchParam[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHOULD
* rest.resource[=].searchParam[=].name = "_id"
* rest.resource[=].searchParam[=].definition = "https://twcore.mohw.gov.tw/ig/twcore/SearchParameter/Bundle-id"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHOULD
* rest.resource[=].searchParam[=].name = "identifier"
* rest.resource[=].searchParam[=].definition = "https://twcore.mohw.gov.tw/ig/twcore/SearchParameter/Bundle-identifier"
* rest.resource[=].searchParam[=].type = #token

* rest.resource[+].type = #CarePlan //2
* rest.resource[=].profile = "https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/CarePlan-twcore"
* rest.resource[=].supportedProfile[0] = "https://build.fhir.org/ig/Rehabotics-Medical-Techology-Co/RTS-IG/StructureDefinition/CarePlan"
* rest.resource[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].extension[=].valueCode = #SHOULD
* rest.resource[=].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #read
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #search-type
* rest.resource[=].searchParam[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHOULD
* rest.resource[=].searchParam[=].name = "patient"
* rest.resource[=].searchParam[=].definition = "https://twcore.mohw.gov.tw/ig/twcore/SearchParameter/CarePlan-patient"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHOULD
* rest.resource[=].searchParam[=].name = "category"
* rest.resource[=].searchParam[=].definition = "https://twcore.mohw.gov.tw/ig/twcore/SearchParameter/CarePlan-category"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHOULD
* rest.resource[=].searchParam[=].name = "date"
* rest.resource[=].searchParam[=].definition = "https://twcore.mohw.gov.tw/ig/twcore/SearchParameter/CarePlan-date"
* rest.resource[=].searchParam[=].type = #date
* rest.resource[=].searchParam[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHOULD
* rest.resource[=].searchParam[=].name = "status"
* rest.resource[=].searchParam[=].definition = "https://twcore.mohw.gov.tw/ig/twcore/SearchParameter/CarePlan-status"
* rest.resource[=].searchParam[=].type = #token

* rest.resource[+].type = #Condition //3
* rest.resource[=].profile = "https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Condition-twcore"
* rest.resource[=].supportedProfile[0] = "https://build.fhir.org/ig/Rehabotics-Medical-Techology-Co/RTS-IG/StructureDefinition/PACCondition"
* rest.resource[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].extension[=].valueCode = #SHOULD
* rest.resource[=].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #read
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #search-type
* rest.resource[=].searchParam[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHOULD
* rest.resource[=].searchParam[=].name = "_id"
* rest.resource[=].searchParam[=].definition = "https://twcore.mohw.gov.tw/ig/twcore/SearchParameter/Condition-id"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHOULD
* rest.resource[=].searchParam[=].name = "clinical-status"
* rest.resource[=].searchParam[=].definition = "https://twcore.mohw.gov.tw/ig/twcore/SearchParameter/Condition-clinical-status"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHOULD
* rest.resource[=].searchParam[=].name = "code"
* rest.resource[=].searchParam[=].definition = "https://twcore.mohw.gov.tw/ig/twcore/SearchParameter/Condition-code"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHOULD
* rest.resource[=].searchParam[=].name = "subject"
* rest.resource[=].searchParam[=].definition = "https://twcore.mohw.gov.tw/ig/twcore/SearchParameter/Condition-subject"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHOULD
* rest.resource[=].searchParam[=].name = "onset-date"
* rest.resource[=].searchParam[=].definition = "https://twcore.mohw.gov.tw/ig/twcore/SearchParameter/Condition-onset-date"
* rest.resource[=].searchParam[=].type = #date
* rest.resource[=].searchParam[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHOULD
* rest.resource[=].searchParam[=].name = "abatement-date"
* rest.resource[=].searchParam[=].definition = "https://twcore.mohw.gov.tw/ig/twcore/SearchParameter/Condition-abatement-date"
* rest.resource[=].searchParam[=].type = #date
* rest.resource[=].searchParam[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHOULD
* rest.resource[=].searchParam[=].name = "severity"
* rest.resource[=].searchParam[=].definition = "https://twcore.mohw.gov.tw/ig/twcore/SearchParameter/Condition-severity"
* rest.resource[=].searchParam[=].type = #token

* rest.resource[+].type = #Encounter //4
* rest.resource[=].profile = "https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Encounter-twcore"
* rest.resource[=].supportedProfile[0] = "https://build.fhir.org/ig/Rehabotics-Medical-Techology-Co/RTS-IG/StructureDefinition/Encounter"
* rest.resource[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].extension[=].valueCode = #SHOULD
* rest.resource[=].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #read
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #search-type
* rest.resource[=].searchParam[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHOULD
* rest.resource[=].searchParam[=].name = "_id"
* rest.resource[=].searchParam[=].definition = "https://twcore.mohw.gov.tw/ig/twcore/SearchParameter/Encounter-id"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHOULD
* rest.resource[=].searchParam[=].name = "class"
* rest.resource[=].searchParam[=].definition = "https://twcore.mohw.gov.tw/ig/twcore/SearchParameter/Encounter-class"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHOULD
* rest.resource[=].searchParam[=].name = "date"
* rest.resource[=].searchParam[=].definition = "https://twcore.mohw.gov.tw/ig/twcore/SearchParameter/Encounter-date"
* rest.resource[=].searchParam[=].type = #date
* rest.resource[=].searchParam[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHOULD
* rest.resource[=].searchParam[=].name = "identifier"
* rest.resource[=].searchParam[=].definition = "https://twcore.mohw.gov.tw/ig/twcore/SearchParameter/Encounter-identifier"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHOULD
* rest.resource[=].searchParam[=].name = "location"
* rest.resource[=].searchParam[=].definition = "https://twcore.mohw.gov.tw/ig/twcore/SearchParameter/Encounter-location"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHOULD
* rest.resource[=].searchParam[=].name = "subject"
* rest.resource[=].searchParam[=].definition = "https://twcore.mohw.gov.tw/ig/twcore/SearchParameter/Encounter-subject"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHOULD
* rest.resource[=].searchParam[=].name = "status"
* rest.resource[=].searchParam[=].definition = "https://twcore.mohw.gov.tw/ig/twcore/SearchParameter/Encounter-status"
* rest.resource[=].searchParam[=].type = #token

* rest.resource[+].type = #Goal //5
* rest.resource[=].profile = "https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Goal-twcore"
* rest.resource[=].supportedProfile[0] = "https://build.fhir.org/ig/Rehabotics-Medical-Techology-Co/RTS-IG/StructureDefinition/Goal"
* rest.resource[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].extension[=].valueCode = #SHOULD
* rest.resource[=].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #read
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #search-type
* rest.resource[=].searchParam[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHOULD
* rest.resource[=].searchParam[=].name = "patient"
* rest.resource[=].searchParam[=].definition = "https://twcore.mohw.gov.tw/ig/twcore/SearchParameter/Goal-patient"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHOULD
* rest.resource[=].searchParam[=].name = "lifecycle-status"
* rest.resource[=].searchParam[=].definition = "https://twcore.mohw.gov.tw/ig/twcore/SearchParameter/Goal-lifecycle-status"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHOULD
* rest.resource[=].searchParam[=].name = "target-date"
* rest.resource[=].searchParam[=].definition = "https://twcore.mohw.gov.tw/ig/twcore/SearchParameter/Goal-target-date"
* rest.resource[=].searchParam[=].type = #date
* rest.resource[=].searchParam[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHOULD
* rest.resource[=].searchParam[=].name = "description"
* rest.resource[=].searchParam[=].definition = "https://twcore.mohw.gov.tw/ig/twcore/SearchParameter/Goal-description"
* rest.resource[=].searchParam[=].type = #token

* rest.resource[+].type = #MedicationAdministration //6
* rest.resource[=].profile = "http://hl7.org/fhir/StructureDefinition/MedicationAdministration"
* rest.resource[=].supportedProfile[0] = "https://build.fhir.org/ig/Rehabotics-Medical-Techology-Co/RTS-IG/StructureDefinition/MyMedicationAdministration"
* rest.resource[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].extension[=].valueCode = #SHOULD
* rest.resource[=].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #read
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #search-type
* rest.resource[=].searchParam[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHOULD
* rest.resource[=].searchParam[=].name = "code"
* rest.resource[=].searchParam[=].definition = "https://build.fhir.org/ig/Rehabotics-Medical-Techology-Co/RTS-IG/SearchParameter/MedicationAdministration-code"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHOULD
* rest.resource[=].searchParam[=].name = "identifier"
* rest.resource[=].searchParam[=].definition = "https://build.fhir.org/ig/Rehabotics-Medical-Techology-Co/RTS-IG/SearchParameter/MedicationAdministration-identifier"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHOULD
* rest.resource[=].searchParam[=].name = "medication"
* rest.resource[=].searchParam[=].definition = "https://build.fhir.org/ig/Rehabotics-Medical-Techology-Co/RTS-IG/SearchParameter/MedicationAdministration-medication"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHOULD
* rest.resource[=].searchParam[=].name = "patient"
* rest.resource[=].searchParam[=].definition = "https://build.fhir.org/ig/Rehabotics-Medical-Techology-Co/RTS-IG/SearchParameter/MedicationAdministration-patient"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHOULD
* rest.resource[=].searchParam[=].name = "status"
* rest.resource[=].searchParam[=].definition = "https://build.fhir.org/ig/Rehabotics-Medical-Techology-Co/RTS-IG/SearchParameter/MedicationAdministration-status"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHOULD
* rest.resource[=].searchParam[=].name = "context"
* rest.resource[=].searchParam[=].definition = "https://build.fhir.org/ig/Rehabotics-Medical-Techology-Co/RTS-IG/SearchParameter/MedicationAdministration-context"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHOULD
* rest.resource[=].searchParam[=].name = "device"
* rest.resource[=].searchParam[=].definition = "https://build.fhir.org/ig/Rehabotics-Medical-Techology-Co/RTS-IG/SearchParameter/MedicationAdministration-device"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHOULD
* rest.resource[=].searchParam[=].name = "effective-time"
* rest.resource[=].searchParam[=].definition = "https://build.fhir.org/ig/Rehabotics-Medical-Techology-Co/RTS-IG/SearchParameter/MedicationAdministration-effective-time"
* rest.resource[=].searchParam[=].type = #date
* rest.resource[=].searchParam[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHOULD
* rest.resource[=].searchParam[=].name = "performer"
* rest.resource[=].searchParam[=].definition = "https://build.fhir.org/ig/Rehabotics-Medical-Techology-Co/RTS-IG/SearchParameter/MedicationAdministration-performer"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHOULD
* rest.resource[=].searchParam[=].name = "reason-given"
* rest.resource[=].searchParam[=].definition = "https://build.fhir.org/ig/Rehabotics-Medical-Techology-Co/RTS-IG/SearchParameter/MedicationAdministration-reason-given"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHOULD
* rest.resource[=].searchParam[=].name = "reason-not-given"
* rest.resource[=].searchParam[=].definition = "https://build.fhir.org/ig/Rehabotics-Medical-Techology-Co/RTS-IG/SearchParameter/MedicationAdministration-reason-not-given"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHOULD
* rest.resource[=].searchParam[=].name = "request"
* rest.resource[=].searchParam[=].definition = "https://build.fhir.org/ig/Rehabotics-Medical-Techology-Co/RTS-IG/SearchParameter/MedicationAdministration-request"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHOULD
* rest.resource[=].searchParam[=].name = "subject"
* rest.resource[=].searchParam[=].definition = "https://build.fhir.org/ig/Rehabotics-Medical-Techology-Co/RTS-IG/SearchParameter/MedicationAdministration-subject"
* rest.resource[=].searchParam[=].type = #reference

* rest.resource[+].type = #Observation //7
* rest.resource[=].profile = "https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Observation-screening-assessment-twcore"
* rest.resource[=].supportedProfile[0] = "https://build.fhir.org/ig/Rehabotics-Medical-Techology-Co/RTS-IG/StructureDefinition/ObservationScreeningAssessment"
* rest.resource[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].extension[=].valueCode = #SHOULD
* rest.resource[=].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #read
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #search-type
* rest.resource[=].searchParam[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHOULD
* rest.resource[=].searchParam[=].name = "_id"
* rest.resource[=].searchParam[=].definition = "https://twcore.mohw.gov.tw/ig/twcore/SearchParameter/Observation-id"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHOULD
* rest.resource[=].searchParam[=].name = "category"
* rest.resource[=].searchParam[=].definition = "https://twcore.mohw.gov.tw/ig/twcore/SearchParameter/Observation-category"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHOULD
* rest.resource[=].searchParam[=].name = "code"
* rest.resource[=].searchParam[=].definition = "https://twcore.mohw.gov.tw/ig/twcore/SearchParameter/Observation-clinical-code"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHOULD
* rest.resource[=].searchParam[=].name = "date"
* rest.resource[=].searchParam[=].definition = "https://twcore.mohw.gov.tw/ig/twcore/SearchParameter/Observation-date"
* rest.resource[=].searchParam[=].type = #date
* rest.resource[=].searchParam[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHOULD
* rest.resource[=].searchParam[=].name = "performer"
* rest.resource[=].searchParam[=].definition = "https://twcore.mohw.gov.tw/ig/twcore/SearchParameter/Observation-performer"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHOULD
* rest.resource[=].searchParam[=].name = "status"
* rest.resource[=].searchParam[=].definition = "https://twcore.mohw.gov.tw/ig/twcore/SearchParameter/Observation-status"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHOULD
* rest.resource[=].searchParam[=].name = "subject"
* rest.resource[=].searchParam[=].definition = "https://twcore.mohw.gov.tw/ig/twcore/SearchParameter/Observation-subject"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHOULD
* rest.resource[=].searchParam[=].name = "patient"
* rest.resource[=].searchParam[=].definition = "https://twcore.mohw.gov.tw/ig/twcore/SearchParameter/Observation-patient"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHOULD
* rest.resource[=].searchParam[=].name = "_lastUpdated"
* rest.resource[=].searchParam[=].definition = "https://twcore.mohw.gov.tw/ig/twcore/SearchParameter/Observation-lastupdated"
* rest.resource[=].searchParam[=].type = #date

* rest.resource[+].type = #Organization //8
* rest.resource[=].profile = "https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Organization-twcore"
* rest.resource[=].supportedProfile[0] = "https://build.fhir.org/ig/Rehabotics-Medical-Techology-Co/RTS-IG/StructureDefinition/Organization"
* rest.resource[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].extension[=].valueCode = #SHOULD
* rest.resource[=].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #read
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #search-type
* rest.resource[=].searchParam[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHOULD
* rest.resource[=].searchParam[=].name = "_id"
* rest.resource[=].searchParam[=].definition = "https://twcore.mohw.gov.tw/ig/twcore/SearchParameter/Organization-id"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHOULD
* rest.resource[=].searchParam[=].name = "identifier"
* rest.resource[=].searchParam[=].definition = "https://twcore.mohw.gov.tw/ig/twcore/SearchParameter/Organization-identifier"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHOULD
* rest.resource[=].searchParam[=].name = "name"
* rest.resource[=].searchParam[=].definition = "https://twcore.mohw.gov.tw/ig/twcore/SearchParameter/Organization-name"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHOULD
* rest.resource[=].searchParam[=].name = "type"
* rest.resource[=].searchParam[=].definition = "https://twcore.mohw.gov.tw/ig/twcore/SearchParameter/Organization-type"
* rest.resource[=].searchParam[=].type = #token

* rest.resource[+].type = #Practitioner //9
* rest.resource[=].profile = "https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Practitioner-twcore"
* rest.resource[=].supportedProfile[0] = "https://build.fhir.org/ig/Rehabotics-Medical-Techology-Co/RTS-IG/StructureDefinition/Practitioner"
* rest.resource[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].extension[=].valueCode = #SHOULD
* rest.resource[=].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #read
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #search-type
* rest.resource[=].searchParam[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHOULD
* rest.resource[=].searchParam[=].name = "_id"
* rest.resource[=].searchParam[=].definition = "https://twcore.mohw.gov.tw/ig/twcore/SearchParameter/Practitioner-id"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHOULD
* rest.resource[=].searchParam[=].name = "identifier"
* rest.resource[=].searchParam[=].definition = "https://twcore.mohw.gov.tw/ig/twcore/SearchParameter/Practitioner-identifier"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHOULD
* rest.resource[=].searchParam[=].name = "name"
* rest.resource[=].searchParam[=].definition = "https://twcore.mohw.gov.tw/ig/twcore/SearchParameter/Practitioner-name"
* rest.resource[=].searchParam[=].type = #string

* rest.resource[+].type = #PractitionerRole //10
* rest.resource[=].profile = "https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/PractitionerRole-twcore"
* rest.resource[=].supportedProfile[0] = "https://build.fhir.org/ig/Rehabotics-Medical-Techology-Co/RTS-IG/StructureDefinition/PractitionerRole"
* rest.resource[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].extension[=].valueCode = #SHOULD
* rest.resource[=].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #read
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #search-type
* rest.resource[=].searchParam[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHOULD
* rest.resource[=].searchParam[=].name = "_id"
* rest.resource[=].searchParam[=].definition = "https://twcore.mohw.gov.tw/ig/twcore/SearchParameter/PractitionerRole-id"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHOULD
* rest.resource[=].searchParam[=].name = "identifier"
* rest.resource[=].searchParam[=].definition = "https://twcore.mohw.gov.tw/ig/twcore/SearchParameter/PractitionerRole-identifier"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHOULD
* rest.resource[=].searchParam[=].name = "specialty"
* rest.resource[=].searchParam[=].definition = "https://twcore.mohw.gov.tw/ig/twcore/SearchParameter/PractitionerRole-specialty"
* rest.resource[=].searchParam[=].type = #token

* rest.resource[+].type = #Procedure //11
* rest.resource[=].profile = "https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Procedure-twcore"
* rest.resource[=].supportedProfile[0] = "https://build.fhir.org/ig/Rehabotics-Medical-Techology-Co/RTS-IG/StructureDefinition/Procedure"
* rest.resource[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].extension[=].valueCode = #SHOULD
* rest.resource[=].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #read
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #search-type
* rest.resource[=].searchParam[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHOULD
* rest.resource[=].searchParam[=].name = "_id"
* rest.resource[=].searchParam[=].definition = "https://twcore.mohw.gov.tw/ig/twcore/SearchParameter/Procedure-id"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHOULD
* rest.resource[=].searchParam[=].name = "code"
* rest.resource[=].searchParam[=].definition = "https://twcore.mohw.gov.tw/ig/twcore/SearchParameter/Procedure-code"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHOULD
* rest.resource[=].searchParam[=].name = "status"
* rest.resource[=].searchParam[=].definition = "https://twcore.mohw.gov.tw/ig/twcore/SearchParameter/Procedure-status"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHOULD
* rest.resource[=].searchParam[=].name = "subject"
* rest.resource[=].searchParam[=].definition = "https://twcore.mohw.gov.tw/ig/twcore/SearchParameter/Procedure-subject"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHOULD
* rest.resource[=].searchParam[=].name = "date"
* rest.resource[=].searchParam[=].definition = "https://twcore.mohw.gov.tw/ig/twcore/SearchParameter/Procedure-date"
* rest.resource[=].searchParam[=].type = #date

* rest.resource[+].type = #QuestionnaireResponse //12
* rest.resource[=].profile = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaireresponse"
* rest.resource[=].supportedProfile[0] = "https://build.fhir.org/ig/Rehabotics-Medical-Techology-Co/RTS-IG/StructureDefinition/SPACQuestionnaireResponse"
* rest.resource[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].extension[=].valueCode = #SHOULD
* rest.resource[=].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #read
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #search-type
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL  // Server must accept submissions
* rest.resource[=].interaction[=].code = #create
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD  // Server should support update
* rest.resource[=].interaction[=].code = #update
* rest.resource[=].operation[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].operation[=].extension.valueCode = #SHALL  // Server must support extract
* rest.resource[=].operation[=].name = "extract"
* rest.resource[=].operation[=].definition = "http://hl7.org/fhir/uv/sdc/OperationDefinition/QuestionnaireResponse-extract"
* rest.resource[=].operation[=].documentation = """

The server must implement $extract to:

1. Receive a completed QuestionnaireResponse.
2. Parse extraction extensions from the Questionnaire.
3. Convert the response into structured FHIR resources.
4. Return a Bundle or a single extracted resource.

Technical expectations:
- Support ObservationExtract as the common extraction path.
- Support DefinitionExtract, TemplateExtract, or StructureMapExtract when required by the Questionnaire design.

Extraction priority:
1. Simple Observation extraction, such as scores or measurements.
2. Complex resource extraction, such as diagnosis or medication data.
3. Calculated fields, such as BMI.
4. Transaction Bundle generation.

Example response format:
{
  "resourceType": "Bundle",
  "type": "transaction",
  "entry": [
    {
      "resource": {
        "resourceType": "Observation",
        "code": { "coding": [{ "code": "PHQ9", "system": "http://loinc.org" }] },
        "value": { "integer": 12 },
        "derivedFrom": [{ "reference": "QuestionnaireResponse/qr123" }]
      }
    }
  ]
}

This is the final SDC workflow step for importing structured data automatically.
"""
* rest.resource[=].searchParam[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHOULD
* rest.resource[=].searchParam[=].name = "_id"
* rest.resource[=].searchParam[=].definition = "https://twcore.mohw.gov.tw/ig/twcore/SearchParameter/QuestionnaireResponse-id"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHOULD
* rest.resource[=].searchParam[=].name = "patient"
* rest.resource[=].searchParam[=].definition = "https://twcore.mohw.gov.tw/ig/twcore/SearchParameter/QuestionnaireResponse-patient"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHOULD
* rest.resource[=].searchParam[=].name = "status"
* rest.resource[=].searchParam[=].definition = "https://twcore.mohw.gov.tw/ig/twcore/SearchParameter/QuestionnaireResponse-status"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHOULD
* rest.resource[=].searchParam[=].name = "authored"
* rest.resource[=].searchParam[=].definition = "https://twcore.mohw.gov.tw/ig/twcore/SearchParameter/QuestionnaireResponse-authored"
* rest.resource[=].searchParam[=].type = #date
* rest.resource[=].searchParam[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHOULD
* rest.resource[=].searchParam[=].name = "questionnaire"
* rest.resource[=].searchParam[=].definition = "https://twcore.mohw.gov.tw/ig/twcore/SearchParameter/QuestionnaireResponse-questionnaire"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[+].type = #Questionnaire //13
* rest.resource[=].profile = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-extr-obsn"
* rest.resource[=].supportedProfile[0] = "https://build.fhir.org/ig/Rehabotics-Medical-Techology-Co/RTS-IG/StructureDefinition/SPACQuestionnaire"
* rest.resource[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].extension[=].valueCode = #SHOULD
* rest.resource[=].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #read
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #search-type
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD  // Server should support questionnaire upload
* rest.resource[=].interaction[=].code = #create
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD  // Server should support questionnaire update
* rest.resource[=].interaction[=].code = #update
* rest.resource[=].operation[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].operation[=].extension.valueCode = #SHALL  // Server must support populate
* rest.resource[=].operation[=].name = "populate"
* rest.resource[=].operation[=].definition = "http://hl7.org/fhir/uv/sdc/OperationDefinition/Questionnaire-populate"
* rest.resource[=].operation[=].documentation = """

The server must implement $populate to:

1. Receive a pre-population request from a client.
2. Query patient data according to questionnaire.item.definition.
3. Pre-fill answers according to FHIRPath expressions.
4. Return the pre-populated QuestionnaireResponse.

Technical expectations:
- Support a FHIRPath engine.
- Support data lookup for resources such as Patient and Observation.
- Parse extensions such as processingPriority, itemWeight, and calculatedExpression.

Implementation priority:
1. Basic pre-population from definition.
2. FHIRPath evaluation.
3. answerExpression support.
4. Complex expressions and conditions.

Example response format:
{
  "resourceType": "QuestionnaireResponse",
  "questionnaire": "Questionnaire/q1",
  "status": "in-progress",
  "item": [
    {
      "linkId": "patient-name",
      "answer": [{ "valueString": "[automatically populated patient name]" }]
    }
  ]
}
"""
* rest.resource[=].operation[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].operation[=].extension.valueCode = #MAY  // Server may support render
* rest.resource[=].operation[=].name = "render"
* rest.resource[=].operation[=].definition = "http://hl7.org/fhir/OperationDefinition/StructureDefinition-questionnaire"
* rest.resource[=].operation[=].documentation = """

The server may support $render to:
- Convert Questionnaire into a renderable format, such as HTML, PDF, or JSON.
- Apply themes or custom presentation rules.
- Support multilingual rendering.

Most clients can render questionnaires themselves, so this operation is optional.
"""

* rest.resource[=].searchParam[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHOULD
* rest.resource[=].searchParam[=].name = "identifier"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Questionnaire-identifier"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHOULD
* rest.resource[=].searchParam[=].name = "title"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Questionnaire-title"
* rest.resource[=].searchParam[=].type = #string

