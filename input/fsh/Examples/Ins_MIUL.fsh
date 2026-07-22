Alias: $loinc = http://loinc.org
Alias: $sdcCalc = http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-calculatedExpression
Instance: MIULQuuestionnaireInstance
InstanceOf: SPACQuestionnaire
Usage: #definition
Title: "MI-UL 評估量表"
Description: "MI-UL 上肢運動功能評估量表"
* status = #active
* language = #zh-TW
//* url = "https://build.fhir.org/ig/Rehabotics-Medical-Techology-Co/RTS-IG/StructureDefinition/Questionnaire/MIULQuuestionnaireInstance"
// 1. pinch grasp
* item[0].linkId = "pinch-grasp"
* item[=].text = "抓握能力"
* item[=].type = #integer
* item[=].required = true
* item[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/minValue"
* item[=].extension[0].valueInteger = 0
* item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/maxValue"
* item[=].extension[=].valueInteger = 33


// 2. Elbow flexion
* item[+].linkId = "elbow-flexion"
* item[=].text = "肘部屈曲"
* item[=].type = #integer
* item[=].required = true
* item[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/minValue"
* item[=].extension[0].valueInteger = 0
* item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/maxValue"
* item[=].extension[=].valueInteger = 33

// 3. Shoulder abduction
* item[+].linkId = "shoulder-abduction"
* item[=].text = "肩外展"
* item[=].type = #integer
* item[=].required = true
* item[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/minValue"
* item[=].extension[0].valueInteger = 0
* item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/maxValue"
* item[=].extension[=].valueInteger = 33

// 總分
* item[+].linkId = "total-score-miul"
* item[=].text = "總分"
* item[=].code[0] = CSAssessmentExtract#miul-total "MI-UL total score"
* item[=].type = #integer
* item[=].readOnly = true
* item[=].extension[0].url = $sdcCalc
* item[=].extension[0].valueExpression.language = #text/fhirpath
* item[=].extension[0].valueExpression.expression = "item.where(linkId='pinch-grasp').answer.valueInteger.sum() + item.where(linkId='elbow-flexion').answer.valueInteger.sum() + item.where(linkId='shoulder-abduction').answer.valueInteger.sum()"

// 轉換為Observation
* item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-observationExtract"
* item[=].extension[=].valueBoolean = true

// SDC 4 requires versionAlgorithm when version is present.
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/artifact-versionAlgorithm"
* extension[=].valueCoding = http://hl7.org/fhir/version-algorithm#semver "SemVer"
