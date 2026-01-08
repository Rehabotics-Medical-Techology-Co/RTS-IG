// ============================================
// Bundle 範例（包含完整評估資料）
// ============================================
Instance: ARATAssessmentBundle
InstanceOf: TWCoreBundle
Usage: #example
Title: "以ARAT評估量表為範例之臨床文件-Document"
Description: "包含患者、治療師及問卷回覆的完整評估資料(電子病歷EMR)"

* id = "arat-bundle-001" 
* type = #collection 
* timestamp = "2025-10-11T14:35:00+08:00"

// 患者資源 [0]
* entry[0].fullUrl = "https://build.fhir.org/ig/Kimsber/Rehab-IG/Patient/stroke-patient-001"
* entry[=].resource = PatientExample

// 治療師資源 [1]
* entry[+].fullUrl = "https://build.fhir.org/ig/Kimsber/Rehab-IG/Practitioner/ot-therapist-001"
* entry[=].resource = PractitionerExample

// ARAT問卷回覆 [2]
* entry[+].fullUrl = "https://build.fhir.org/ig/Kimsber/Rehab-IG/QuestionnaireResponse/arat-response-example-001"
* entry[=].resource = ARATQuestionnaireResponseExample

// 評估會期 [3]
* entry[+].fullUrl = "https://build.fhir.org/ig/Kimsber/Rehab-IG/Encounter/arat-assessment-encounter-001"
* entry[=].resource = ARATAssessmentEncounter
