Instance: MRCQuestionnaireInstance
InstanceOf: SPACQuestionnaire
Usage: #definition
Title: "MRC 評估量表"
Description: "MRC肌力測試 (Medical Research Council Scale)"
// 1.肩關節活動度
* status = #active
* item[0].linkId = "abduction-arm"
* item[=].text = "肩關節外展"
* item[=].type = #choice
* item[=].required = true
* item[=].answerOption[0].valueInteger = 0
* item[=].answerOption[+].valueInteger = 1
* item[=].answerOption[+].valueInteger = 2
* item[=].answerOption[+].valueInteger = 3
* item[=].answerOption[+].valueInteger = 4
* item[=].answerOption[+].valueInteger = 5

// 2. 前臂屈曲
* item[+].linkId = "flexion-forearm"
* item[=].text = "前臂屈曲"
* item[=].type = #choice
* item[=].required = true
* item[=].answerOption[0].valueInteger = 0
* item[=].answerOption[+].valueInteger = 1
* item[=].answerOption[+].valueInteger = 2
* item[=].answerOption[+].valueInteger = 3
* item[=].answerOption[+].valueInteger = 4
* item[=].answerOption[+].valueInteger = 5

// 3.手腕向上伸張
* item[+].linkId = "extension-wrist"
* item[=].text = "手腕向上伸張"
* item[=].type = #choice
* item[=].required = true
* item[=].answerOption[0].valueInteger = 0
* item[=].answerOption[+].valueInteger = 1
* item[=].answerOption[+].valueInteger = 2
* item[=].answerOption[+].valueInteger = 3
* item[=].answerOption[+].valueInteger = 4
* item[=].answerOption[+].valueInteger = 5

// 4.總分計算
* item[+].linkId = "mrc-total-score"
* item[=].text = "MRC總分"
* item[=].type = #integer
* item[=].readOnly = true
* item[=].extension[0].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-calculatedExpression"
* item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].extension[=].valueExpression.expression = "%resource.item.descendants().where(type='choice').answer.valueInteger.sum()"

// 轉換為Observation
* item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-observationExtract"
* item[=].extension[=].valueBoolean = true

// SDC 4 requires versionAlgorithm when version is present.
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/artifact-versionAlgorithm"
* extension[=].valueCoding = http://hl7.org/fhir/version-algorithm#semver "SemVer"
