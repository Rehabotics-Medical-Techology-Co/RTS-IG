Alias: $snomed = http://snomed.info/sct

// Fugl-Meyer 上肢動作評估問卷 FSH
// ============================================
Instance: FMAUEMotorQuestionnaireInstance
InstanceOf: SPACQuestionnaire
Usage: #definition
Title: "Fugl-Meyer上肢動作評估問卷"
Description: "衛福部Fugl-Meyer上肢動作評估問卷的完整實例，可提供實際使用。亦可依據Profile: QuestionnaireProfile內容做為範本進行擴充"

* version = "1.0.0"
* name = "FMAUEMotorQuestionnaire"
* title = "Fugl-Meyer上肢動作評估問卷"
* description = "衛福部Fugl-Meyer上肢動作評估問卷，總分66分"
* status = #active
* date = "2025-10-01"
* purpose = "提供標準化的上肢動作功能評估工具，用於中風復健評估"
* subjectType = #Patient

// 選擇評估階段
* item[0].linkId = "assessment-phase-fmaue-motion"
* item[=].text = "請選擇評估階段"
* item[=].type = #choice
* item[=].required = true
* item[=].answerOption[0].valueString = "初評"
* item[=].answerOption[+].valueString = "期中"
* item[=].answerOption[+].valueString = "延展"
* item[=].answerOption[+].valueString = "結案"

// 選擇患側
* item[+].linkId = "assessment-side-fmaue-motion"
* item[=].text = "請選擇評估側"
* item[=].type = #choice
* item[=].required = true
* item[=].answerOption[0].valueCoding.system = $snomed
* item[=].answerOption[=].valueCoding.code = $snomed#24028007
* item[=].answerOption[=].valueCoding.display = "Right"
* item[=].answerOption[+].valueCoding.system = $snomed
* item[=].answerOption[=].valueCoding.code = $snomed#7771000
* item[=].answerOption[=].valueCoding.display = "Left"


// ============================================
// Section A：肩關節/肘關節/前臂動作評估
// ============================================
* item[+].linkId = "A-shoulder-elbow-forearm"
* item[=].text = "A.肩部/肘部/前臂"
* item[=].type = #group
* item[=].required = true

// Subsection I
* item[=].item[0].linkId = "A-I-FMAUEMotion"
* item[=].item[=].text = "I.反射反應"
* item[=].item[=].type = #group
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "A-I-a-flexors"
* item[=].item[=].item[=].text = "二頭肌或手指屈肌"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].answerOption[0].valueInteger = 0
* item[=].item[=].item[=].answerOption[+].valueInteger = 2

* item[=].item[=].item[1].linkId = "A-I-a-extensors"
* item[=].item[=].item[=].text = "三頭肌"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].answerOption[0].valueInteger = 0
* item[=].item[=].item[=].answerOption[+].valueInteger = 2

// Subsection II-a
* item[=].item[1].linkId = "A-II-a-FMAUEMotion"
* item[=].item[=].text = "II.a.屈肌協同動作"
* item[=].item[=].type = #group
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "A-II-a-shoulder-retraction"
* item[=].item[=].item[=].text = "肩部回縮"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].answerOption[0].valueInteger = 0
* item[=].item[=].item[=].answerOption[+].valueInteger = 1
* item[=].item[=].item[=].answerOption[+].valueInteger = 2

* item[=].item[=].item[1].linkId = "A-II-a-shoulder-elevation"
* item[=].item[=].item[=].text = "肩部抬高"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].answerOption[0].valueInteger = 0
* item[=].item[=].item[=].answerOption[+].valueInteger = 1
* item[=].item[=].item[=].answerOption[+].valueInteger = 2

* item[=].item[=].item[2].linkId = "A-II-a-shoulder-abduction"
* item[=].item[=].item[=].text = "肩外展"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].answerOption[0].valueInteger = 0
* item[=].item[=].item[=].answerOption[+].valueInteger = 1
* item[=].item[=].item[=].answerOption[+].valueInteger = 2

* item[=].item[=].item[3].linkId = "A-II-a-shoulder-outwards-rotation"
* item[=].item[=].item[=].text = "肩膀外旋"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].answerOption[0].valueInteger = 0
* item[=].item[=].item[=].answerOption[+].valueInteger = 1
* item[=].item[=].item[=].answerOption[+].valueInteger = 2

* item[=].item[=].item[4].linkId = "A-II-a-elbow-flexion"
* item[=].item[=].item[=].text = "手肘屈曲"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].answerOption[0].valueInteger = 0
* item[=].item[=].item[=].answerOption[+].valueInteger = 1
* item[=].item[=].item[=].answerOption[+].valueInteger = 2

* item[=].item[=].item[5].linkId = "A-II-a-forearm-supination"
* item[=].item[=].item[=].text = "前臂旋後"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].answerOption[0].valueInteger = 0
* item[=].item[=].item[=].answerOption[+].valueInteger = 1
* item[=].item[=].item[=].answerOption[+].valueInteger = 2

// Subsection II-b
* item[=].item[2].linkId = "A-II-b-FMAUEMotion"
* item[=].item[=].text = "II.b.伸肌協同動作"
* item[=].item[=].type = #group
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "A-II-b-shoulder-add-inward-rotation"
* item[=].item[=].item[=].text = "肩部內旋/外旋"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].answerOption[0].valueInteger = 0
* item[=].item[=].item[=].answerOption[+].valueInteger = 1
* item[=].item[=].item[=].answerOption[+].valueInteger = 2

* item[=].item[=].item[1].linkId = "A-II-b-elbow-extension"
* item[=].item[=].item[=].text = "手肘伸展"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].answerOption[0].valueInteger = 0
* item[=].item[=].item[=].answerOption[+].valueInteger = 1
* item[=].item[=].item[=].answerOption[+].valueInteger = 2

* item[=].item[=].item[2].linkId = "A-II-b-forearm-pronation"
* item[=].item[=].item[=].text = "前臂旋前"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].answerOption[0].valueInteger = 0
* item[=].item[=].item[=].answerOption[+].valueInteger = 1
* item[=].item[=].item[=].answerOption[+].valueInteger = 2

// Subsection III
* item[=].item[3].linkId = "A-III-FMAUEMotion"
* item[=].item[=].text = "III.部份協同動作（不可代償）"
* item[=].item[=].type = #group
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "A-III-hand-to-lumbar-spine"
* item[=].item[=].item[=].text = "手到腰椎"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].answerOption[0].valueInteger = 0
* item[=].item[=].item[=].answerOption[+].valueInteger = 1
* item[=].item[=].item[=].answerOption[+].valueInteger = 2

* item[=].item[=].item[1].linkId = "A-III-shoulder-flexion-0-90"
* item[=].item[=].item[=].text = "肩部屈曲0° - 90°"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].answerOption[0].valueInteger = 0
* item[=].item[=].item[=].answerOption[+].valueInteger = 1
* item[=].item[=].item[=].answerOption[+].valueInteger = 2

* item[=].item[=].item[2].linkId = "A-III-elbow-pro-supination"
* item[=].item[=].item[=].text = "手肘 90° 前傾/旋後"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].answerOption[0].valueInteger = 0
* item[=].item[=].item[=].answerOption[+].valueInteger = 1
* item[=].item[=].item[=].answerOption[+].valueInteger = 2

// Subsection IV
* item[=].item[4].linkId = "A-IV-FMAUEMotion"
* item[=].item[=].text = "IV.自主運動"
* item[=].item[=].type = #group
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "A-IV-shoulder-abduction-0-90"
* item[=].item[=].item[=].text = "肩外展 0° - 90°"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].answerOption[0].valueInteger = 0
* item[=].item[=].item[=].answerOption[+].valueInteger = 1
* item[=].item[=].item[=].answerOption[+].valueInteger = 2

* item[=].item[=].item[1].linkId = "A-IV-shoulder-flexion-90-180"
* item[=].item[=].item[=].text = "肩部屈曲90°-180°"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].answerOption[0].valueInteger = 0
* item[=].item[=].item[=].answerOption[+].valueInteger = 1
* item[=].item[=].item[=].answerOption[+].valueInteger = 2

* item[=].item[=].item[2].linkId = "A-IV-elbow-0-pronation-supination"
* item[=].item[=].item[=].text = "手肘 0° 前傾/旋後"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].answerOption[0].valueInteger = 0
* item[=].item[=].item[=].answerOption[+].valueInteger = 1
* item[=].item[=].item[=].answerOption[+].valueInteger = 2

// Subsection V
* item[=].item[5].linkId = "A-V-FMAUEMotion"
* item[=].item[=].text = "V.反射強度"
* item[=].item[=].type = #group
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "A-V-normal-reflex-activity"
* item[=].item[=].item[=].text = "正常反射活動（屈肌/伸肌）"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].answerOption[0].valueInteger = 0
* item[=].item[=].item[=].answerOption[+].valueInteger = 1
* item[=].item[=].item[=].answerOption[+].valueInteger = 2

// ============================================
// Section B：手腕
// ============================================
* item[+].linkId = "B-wrist-hand"
* item[=].text = "B.手腕/手部"
* item[=].type = #group
* item[=].required = true

// Subsection I
* item[=].item[0].linkId = "B-I-FMAUEMotion"
* item[=].item[=].text = "I.手腕穩定度"
* item[=].item[=].type = #group
* item[=].item[=].required = true

// Elbow 90°
* item[=].item[=].item[0].linkId = "B-I-elbow-90-wrist-stability"
* item[=].item[=].item[=].text = "手肘 90° 腕部穩定性"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].answerOption[0].valueInteger = 0
* item[=].item[=].item[=].answerOption[+].valueInteger = 1
* item[=].item[=].item[=].answerOption[+].valueInteger = 2

* item[=].item[=].item[1].linkId = "B-I-elbow-90-wrist-flex-extension"
* item[=].item[=].item[=].text = "手肘 90° 腕關節屈曲/伸展"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].answerOption[0].valueInteger = 0
* item[=].item[=].item[=].answerOption[+].valueInteger = 1
* item[=].item[=].item[=].answerOption[+].valueInteger = 2

// Elbow 0°
* item[=].item[=].item[2].linkId = "B-I-elbow-0-wrist-stability"
* item[=].item[=].item[=].text = "手肘 0° 腕部穩定性"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].answerOption[0].valueInteger = 0
* item[=].item[=].item[=].answerOption[+].valueInteger = 1
* item[=].item[=].item[=].answerOption[+].valueInteger = 2

* item[=].item[=].item[3].linkId = "B-I-elbow-0-wrist-flex-extension"
* item[=].item[=].item[=].text = "手肘 0° 腕部屈曲/伸展"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].answerOption[0].valueInteger = 0
* item[=].item[=].item[=].answerOption[+].valueInteger = 1
* item[=].item[=].item[=].answerOption[+].valueInteger = 2

// wrist circumduction
* item[=].item[=].item[4].linkId = "B-I-wrist-circumduction"
* item[=].item[=].item[=].text = "腕部旋轉"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].answerOption[0].valueInteger = 0
* item[=].item[=].item[=].answerOption[+].valueInteger = 1
* item[=].item[=].item[=].answerOption[+].valueInteger = 2

// Subsection II
* item[=].item[1].linkId = "B-II-FMAUEMotion"
* item[=].item[=].text = "II.手指伸屈"
* item[=].item[=].type = #group
* item[=].item[=].required = true

// 手指伸屈
* item[=].item[=].item[0].linkId = "B-II-fingers-mass-flexion"
* item[=].item[=].item[=].text = "手指屈曲"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].answerOption[0].valueInteger = 0
* item[=].item[=].item[=].answerOption[+].valueInteger = 1
* item[=].item[=].item[=].answerOption[+].valueInteger = 2

* item[=].item[=].item[1].linkId = "B-II-fingers-mass-extension"
* item[=].item[=].item[=].text = "手指伸展"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].answerOption[0].valueInteger = 0
* item[=].item[=].item[=].answerOption[+].valueInteger = 1
* item[=].item[=].item[=].answerOption[+].valueInteger = 2

// Subsection III
* item[=].item[2].linkId = "B-III-FMAUEMotion"
* item[=].item[=].text = "III.抓握功能"
* item[=].item[=].type = #group
* item[=].item[=].required = true

// Grasp
* item[=].item[=].item[0].linkId = "B-III-grasp-a"
* item[=].item[=].item[=].text = "a. MP 關節伸展，PIP 和 DIP 彎曲；測試抓握力是否抵抗阻力"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].answerOption[0].valueInteger = 0
* item[=].item[=].item[=].answerOption[+].valueInteger = 1
* item[=].item[=].item[=].answerOption[+].valueInteger = 2

* item[=].item[=].item[1].linkId = "B-III-grasp-b"
* item[=].item[=].item[=].text = "b. 指導患者將拇指內收，其他關節在 0° 位置"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].answerOption[0].valueInteger = 0
* item[=].item[=].item[=].answerOption[+].valueInteger = 1
* item[=].item[=].item[=].answerOption[+].valueInteger = 2

* item[=].item[=].item[2].linkId = "B-III-grasp-c"
* item[=].item[=].item[=].text = "c. 食指拇指肚對著，中間插一支鉛筆"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].answerOption[0].valueInteger = 0
* item[=].item[=].item[=].answerOption[+].valueInteger = 1
* item[=].item[=].item[=].answerOption[+].valueInteger = 2

* item[=].item[=].item[3].linkId = "B-III-grasp-d"
* item[=].item[=].item[=].text = "d. 患者用食指和中指的掌側表面互相抵住，抓住一個圓柱形物體（小罐子）。"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].answerOption[0].valueInteger = 0
* item[=].item[=].item[=].answerOption[+].valueInteger = 1
* item[=].item[=].item[=].answerOption[+].valueInteger = 2

* item[=].item[=].item[4].linkId = "B-III-grasp-e"
* item[=].item[=].item[=].text = "e. 球形抓握；病人抓住一個網球"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].answerOption[0].valueInteger = 0
* item[=].item[=].item[=].answerOption[+].valueInteger = 1
* item[=].item[=].item[=].answerOption[+].valueInteger = 2

// ============================================
// Section C：協調性/速度
// ============================================
* item[+].linkId = "C-coordination-speed"
* item[=].text = "C.協調性/速度"
* item[=].type = #group
* item[=].required = true

// Subsection I
* item[=].item[0].linkId = "C-I-FMAUEMotion"
* item[=].item[=].text = "I.協調性/速度"
* item[=].item[=].type = #group
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "C-I-finger-to-nose-tremor"
* item[=].item[=].item[=].text = "手指觸碰鼻子：顫抖"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].answerOption[0].valueInteger = 0
* item[=].item[=].item[=].answerOption[+].valueInteger = 1
* item[=].item[=].item[=].answerOption[+].valueInteger = 2

* item[=].item[=].item[1].linkId = "C-I-finger-to-nose-dysmetria"
* item[=].item[=].item[=].text = "手指觸鼻：辨距不良"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].answerOption[0].valueInteger = 0
* item[=].item[=].item[=].answerOption[+].valueInteger = 1
* item[=].item[=].item[=].answerOption[+].valueInteger = 2

* item[=].item[=].item[2].linkId = "C-I-finger-to-nose-time"
* item[=].item[=].item[=].text = "手指到鼻子：時間"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].answerOption[0].valueInteger = 0
* item[=].item[=].item[=].answerOption[+].valueInteger = 1
* item[=].item[=].item[=].answerOption[+].valueInteger = 2

// ============================================
// Section D：總分計算
// ============================================
* item[+].linkId = "D-total-score-FMAUEMotion"
* item[=].text = "D.FMAUE動作總分"
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
