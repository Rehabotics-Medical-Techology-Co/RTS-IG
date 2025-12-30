// ===========================================
// Bundle 主實例
// ===========================================
Instance: ChildBundle
InstanceOf: TWCoreBundleDocument
Usage: #example
Title: "兒童職能治療臨床文件Document"
Description: "顯示兒童職能治療在醫院中實際應用情境"
* identifier.value = "child-bundle"
* type = #document
* timestamp = "2025-12-26T00:00:00+08:00"
* entry[0].fullUrl = "https://build.fhir.org/ig/Kimsber/Rehab-IG/Composition/ChildDocumentComposition"
* entry[=].resource = ChildDocumentComposition
* entry[+].fullUrl = "https://build.fhir.org/ig/Kimsber/Rehab-IG/Patient/stroke-patient-001"
* entry[=].resource = stroke-patient-001
* entry[+].fullUrl = "https://build.fhir.org/ig/Kimsber/Rehab-IG/Condition/ConditionExample01"
* entry[=].resource = ConditionExample01
* entry[+].fullUrl = "https://build.fhir.org/ig/Kimsber/Rehab-IG/CarePlan/CarePlanExample01"
* entry[=].resource = CarePlanExample01
