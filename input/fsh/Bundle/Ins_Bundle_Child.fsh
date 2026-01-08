// ===========================================
// Bundle 主實例
// ===========================================
Instance: ChildBundle
InstanceOf: TWCoreBundleDocument
Usage: #example
Title: "兒童職能治療臨床文件Document"
Description: "顯示兒童職能治療在醫院中實際應用情境"
* identifier.system = "http://build.fhir.org/ig/Kimsber/Rehab-IG/Bundle/ChildBundle"
* identifier.value = "child-bundle"
* type = #document
* timestamp = "2025-12-26T00:00:00+08:00"
* entry[TWCoreComposition][0].fullUrl = "https://build.fhir.org/ig/Kimsber/Rehab-IG/Composition/ChildDocumentComposition"
* entry[TWCoreComposition][=].resource = ChildDocumentComposition
* entry[+].fullUrl = "https://build.fhir.org/ig/Kimsber/Rehab-IG/Patient/stroke-patient-001"
* entry[=].resource = PatientExample // 必須填Instance 名稱
* entry[+].fullUrl = "https://build.fhir.org/ig/Kimsber/Rehab-IG/Condition/ConditionExample01"
* entry[=].resource = ConditionExample01
* entry[+].fullUrl = "https://build.fhir.org/ig/Kimsber/Rehab-IG/CarePlan/CarePlanExample01"
* entry[=].resource = CarePlanExample01
* entry[+].fullUrl = "https://build.fhir.org/ig/Kimsber/Rehab-IG/Practitioner/ot-therapist-001"
* entry[=].resource = PractitionerExample
* entry[+].fullUrl = "https://build.fhir.org/ig/Kimsber/Rehab-IG/Organization/OrganizationExample"
* entry[=].resource = OrganizationExample
