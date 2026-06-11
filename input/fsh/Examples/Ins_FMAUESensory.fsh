Alias: $snomed = http://snomed.info/sct

// Fugl-Meyer 上肢感覺評估問卷
// ============================================
Instance: FMAUESensoryQuestionnaireInstance
InstanceOf: SPACQuestionnaire
Usage: #definition
Title: "Fugl-Meyer上肢感覺評估問卷"
Description: "衛福部Fugl-Meyer上肢感覺評估問卷的完整實例，可提供實際使用。亦可依據Profile: QuestionnaireProfile內容做為範本進行擴充"

* version = "1.0.0"
* name = "FMAUESensoryQuestionnaire"
* title = "Fugl-Meyer上肢感覺評估問卷"
* description = "衛福部Fugl-Meyer上肢感覺評估問卷，總分26分"
* status = #active
* date = "2025-10-01"
* purpose = "提供標準化的上肢感覺評估工具，用於中風復健評估"
* subjectType = #Patient

// 選擇評估階段
* item[0].linkId = "assessment-phase-fmaue-sensory"
* item[=].text = "請選擇評估階段"
* item[=].type = #choice
* item[=].required = true
* item[=].answerOption[0].valueString = "初評"
* item[=].answerOption[+].valueString = "期中"
* item[=].answerOption[+].valueString = "延展"
* item[=].answerOption[+].valueString = "結案"

// 選擇患側
* item[+].linkId = "assessment-side-fmaue-sensory"
* item[=].text = "請選擇評估側"
* item[=].type = #choice
* item[=].required = true
* item[=].answerOption[0].valueCoding.system = $snomed
* item[=].answerOption[=].valueCoding = $snomed#24028007
* item[=].answerOption[=].valueCoding.display = "Right"
* item[=].answerOption[+].valueCoding.system = $snomed 
* item[=].answerOption[=].valueCoding = $snomed#7771000
* item[=].answerOption[=].valueCoding.display = "Left"

// ============================================
// Section A：輕觸覺檢測 (3個部位)
// ============================================
* item[+].linkId = "A-light-touch"
* item[=].text = "A.輕觸覺檢測"
* item[=].type = #group
* item[=].required = true

// A1. Upper arm 
* item[=].item[0].linkId = "A-I-upper-arm"
* item[=].item[=].text = "上臂輕觸覺"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerOption[0].valueInteger = 0
* item[=].item[=].answerOption[+].valueInteger = 1
* item[=].item[=].answerOption[+].valueInteger = 2

// A2. Forearm 
* item[=].item[+].linkId = "A-I-forearm"
* item[=].item[=].text = "前臂輕觸覺"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerOption[0].valueInteger = 0
* item[=].item[=].answerOption[+].valueInteger = 1
* item[=].item[=].answerOption[+].valueInteger = 2

// A3. Hand 
* item[=].item[+].linkId = "A-I-hand"
* item[=].item[=].text = "手部輕觸覺"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerOption[0].valueInteger = 0
* item[=].item[=].answerOption[+].valueInteger = 1
* item[=].item[=].answerOption[+].valueInteger = 2

// ============================================
// Section B：溫度覺檢測 (3個部位)
// ============================================
* item[+].linkId = "B-temperature"
* item[=].text = "B.溫度覺檢測"
* item[=].type = #group
* item[=].required = true

// B1. Upper arm 
* item[=].item[0].linkId = "B-I-upper-arm"
* item[=].item[=].text = "上臂溫度覺"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerOption[0].valueInteger = 0
* item[=].item[=].answerOption[+].valueInteger = 1
* item[=].item[=].answerOption[+].valueInteger = 2

// B2. Forearm 
* item[=].item[+].linkId = "B-I-forearm"
* item[=].item[=].text = "前臂溫度覺"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerOption[0].valueInteger = 0
* item[=].item[=].answerOption[+].valueInteger = 1
* item[=].item[=].answerOption[+].valueInteger = 2

// B3. Hand 
* item[=].item[+].linkId = "B-I-hand"
* item[=].item[=].text = "手部溫度覺"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerOption[0].valueInteger = 0
* item[=].item[=].answerOption[+].valueInteger = 1
* item[=].item[=].answerOption[+].valueInteger = 2

// ============================================
// Section C：觸覺定位檢測 (3個部位)
// ============================================
* item[+].linkId = "C-tactile-localization"
* item[=].text = "C.觸覺定位檢測"
* item[=].type = #group
* item[=].required = true

// C1. Upper arm 
* item[=].item[0].linkId = "C-I-upper-arm"
* item[=].item[=].text = "上臂觸覺定位"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerOption[0].valueInteger = 0
* item[=].item[=].answerOption[+].valueInteger = 1
* item[=].item[=].answerOption[+].valueInteger = 2

// C2. Forearm 
* item[=].item[+].linkId = "C-I-forearm"
* item[=].item[=].text = "前臂觸覺定位"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerOption[0].valueInteger = 0
* item[=].item[=].answerOption[+].valueInteger = 1
* item[=].item[=].answerOption[+].valueInteger = 2

// C3. Hand 
* item[=].item[+].linkId = "C-I-hand"
* item[=].item[=].text = "手部觸覺定位"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerOption[0].valueInteger = 0
* item[=].item[=].answerOption[+].valueInteger = 1
* item[=].item[=].answerOption[+].valueInteger = 2

// ============================================
// Section D：位置覺檢測 (4個關節)
// ============================================
* item[+].linkId = "D-position-sense"
* item[=].text = "D.位置覺檢測"
* item[=].type = #group
* item[=].required = true

// D1. Shoulder
* item[=].item[0].linkId = "D-I-shoulder"
* item[=].item[=].text = "肩關節位置覺"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerOption[0].valueInteger = 0
* item[=].item[=].answerOption[+].valueInteger = 1
* item[=].item[=].answerOption[+].valueInteger = 2

// D2. Elbow 
* item[=].item[+].linkId = "D-I-elbow"
* item[=].item[=].text = "肘關節位置覺"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerOption[0].valueInteger = 0
* item[=].item[=].answerOption[+].valueInteger = 1
* item[=].item[=].answerOption[+].valueInteger = 2

// D3. Wrist 
* item[=].item[+].linkId = "D-I-wrist"
* item[=].item[=].text = "腕關節位置覺"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerOption[0].valueInteger = 0
* item[=].item[=].answerOption[+].valueInteger = 1
* item[=].item[=].answerOption[+].valueInteger = 2

// D4. Thumb 
* item[=].item[+].linkId = "D-I-thumb"
* item[=].item[=].text = "拇指位置覺"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerOption[0].valueInteger = 0
* item[=].item[=].answerOption[+].valueInteger = 1
* item[=].item[=].answerOption[+].valueInteger = 2

// ============================================
// Section E：總分計算
// ============================================
* item[+].linkId = "E-total-score-FMAUESensory"
* item[=].text = "E.FMAUE感覺總分"
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
