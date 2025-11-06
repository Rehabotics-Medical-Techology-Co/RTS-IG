Alias: $snomed = http://snomed.info/sct

// ============================================
// Fugl-Meyer Upper Extremity Sensory QuestionnaireResponse Profile
// ============================================
Profile: FMAUESensoryQuestionnaireResponse
Parent: SPACQuestionnaireResponse
Id: FMAUESensoryQuestionnaireResponse
Title: "FMAUE感覺評估問卷回覆"
Description: "針對FMAUE上肢感覺評估問卷的QuestionnaireResponse Profile，強制回傳格式符合問卷結構"

// 固定問卷參考
* questionnaire = "http://example.org/fhir/Questionnaire/FMAUESensoryQuestionnaireInstance" (exactly)

// 基本約束
* status = #completed
* subject 1..1
* subject only Reference(Patient)
* authored 1..1

// ============================================
// 第一層 item slicing
// ============================================
* item ^slicing.discriminator.type = #value
* item ^slicing.discriminator.path = "linkId"
* item ^slicing.rules = #closed
* item ^slicing.ordered = false
* item ^slicing.description = "根據linkId區分FMAUE上肢感覺問卷的主要區塊"

* item contains
    assessmentPhase 1..1 and
    assessmentSide 1..1 MS and
    LightTouch 1..1 MS and
    Temperature 1..1 MS and
    TactileLocalization 1..1 MS and
    PositionSense 1..1 MS and
    totalScoreSection 1..1 MS

// ============================================
// 評估評估階段
// ============================================
* item[assessmentPhase].linkId = "assessment-phase-fmaue-sensory" (exactly)
* item[assessmentPhase].text = "請選擇評估階段"
* item[assessmentPhase].answer 1..1
* item[assessmentPhase].answer.value[x] only string
* item[assessmentPhase].answer.value[x] ^short = "選項：初評、期中、延展、結案"

// ============================================
// 評估側別選擇
// ============================================
* item[assessmentSide].linkId = "assessment-side-fmaue-sensory" (exactly)
* item[assessmentSide].text = "請選擇評估側"
* item[assessmentSide].answer 1..1
* item[assessmentSide].answer.value[x] only Coding
* item[assessmentSide].answer.valueCoding from AssessmentSideValueSet (required)

// ============================================
// Section A: 輕觸覺檢測 (3個部位)
// ============================================
* item[LightTouch].linkId = "A-light-touch" (exactly)
* item[LightTouch].text = "A.輕觸覺檢測"
* item[LightTouch].item ^slicing.discriminator.type = #value
* item[LightTouch].item ^slicing.discriminator.path = "linkId"
* item[LightTouch].item ^slicing.rules = #closed
* item[LightTouch].item contains
    aUpperArm 1..1 and
    aForeArm 1..1 and
    aHand 1..1

// A1. 上臂輕觸覺
* item[LightTouch].item[aUpperArm].linkId = "A-I-upper-arm" (exactly)
* item[LightTouch].item[aUpperArm].text = "上臂輕觸覺"
* item[LightTouch].item[aUpperArm].answer 1..1
* item[LightTouch].item[aUpperArm].answer.value[x] only integer
* item[LightTouch].item[aUpperArm].answer.valueInteger ^short = "分數 0-2"
* item[LightTouch].item[aUpperArm].answer.valueInteger ^minValueInteger = 0
* item[LightTouch].item[aUpperArm].answer.valueInteger ^maxValueInteger = 2

// A2. 前臂輕觸覺
* item[LightTouch].item[aForeArm].linkId = "A-I-forearm" (exactly)
* item[LightTouch].item[aForeArm].text = "前臂輕觸覺"
* item[LightTouch].item[aForeArm].answer 1..1
* item[LightTouch].item[aForeArm].answer.value[x] only integer
* item[LightTouch].item[aForeArm].answer.valueInteger ^short = "分數 0-2"
* item[LightTouch].item[aForeArm].answer.valueInteger ^minValueInteger = 0
* item[LightTouch].item[aForeArm].answer.valueInteger ^maxValueInteger = 2

// A3. 手部輕觸覺
* item[LightTouch].item[aHand].linkId = "A-I-hand" (exactly)
* item[LightTouch].item[aHand].text = "手部輕觸覺"
* item[LightTouch].item[aHand].answer 1..1
* item[LightTouch].item[aHand].answer.value[x] only integer
* item[LightTouch].item[aHand].answer.valueInteger ^short = "分數 0-2"
* item[LightTouch].item[aHand].answer.valueInteger ^minValueInteger = 0
* item[LightTouch].item[aHand].answer.valueInteger ^maxValueInteger = 2

// ============================================
// Section B: 溫度覺檢測 (3個部位)
// ============================================
* item[Temperature].linkId = "B-temperature" (exactly)
* item[Temperature].text = "B.溫度覺檢測"
* item[Temperature].item ^slicing.discriminator.type = #value
* item[Temperature].item ^slicing.discriminator.path = "linkId"
* item[Temperature].item ^slicing.rules = #closed
* item[Temperature].item contains
    bUpperArm 1..1 and
    bForeArm 1..1 and
    bHand 1..1

// B1. 上臂溫度覺
* item[Temperature].item[bUpperArm].linkId = "B-I-upper-arm" (exactly)
* item[Temperature].item[bUpperArm].text = "上臂溫度覺"
* item[Temperature].item[bUpperArm].answer 1..1
* item[Temperature].item[bUpperArm].answer.value[x] only integer
* item[Temperature].item[bUpperArm].answer.valueInteger ^short = "分數 0-2"
* item[Temperature].item[bUpperArm].answer.valueInteger ^minValueInteger = 0
* item[Temperature].item[bUpperArm].answer.valueInteger ^maxValueInteger = 2

// B2. 前臂溫度覺
* item[Temperature].item[bForeArm].linkId = "B-I-forearm" (exactly)
* item[Temperature].item[bForeArm].text = "前臂溫度覺"
* item[Temperature].item[bForeArm].answer 1..1
* item[Temperature].item[bForeArm].answer.value[x] only integer
* item[Temperature].item[bForeArm].answer.valueInteger ^short = "分數 0-2"
* item[Temperature].item[bForeArm].answer.valueInteger ^minValueInteger = 0
* item[Temperature].item[bForeArm].answer.valueInteger ^maxValueInteger = 2

// B3. 手部溫度覺
* item[Temperature].item[bHand].linkId = "B-I-hand" (exactly)
* item[Temperature].item[bHand].text = "手部溫度覺"
* item[Temperature].item[bHand].answer 1..1
* item[Temperature].item[bHand].answer.value[x] only integer
* item[Temperature].item[bHand].answer.valueInteger ^short = "分數 0-2"
* item[Temperature].item[bHand].answer.valueInteger ^minValueInteger = 0
* item[Temperature].item[bHand].answer.valueInteger ^maxValueInteger = 2

// ============================================
// Section C: 觸覺定位檢測 (3個部位)
// ============================================
* item[TactileLocalization].linkId = "C-tactile-localization" (exactly)
* item[TactileLocalization].text = "C.觸覺定位檢測"  // 注意：原問卷中此處文字有誤
* item[TactileLocalization].item ^slicing.discriminator.type = #value
* item[TactileLocalization].item ^slicing.discriminator.path = "linkId"
* item[TactileLocalization].item ^slicing.rules = #closed
* item[TactileLocalization].item contains
    cUpperArm 1..1 and
    cForeArm 1..1 and
    cHand 1..1

// C1. 上臂觸覺定位
* item[TactileLocalization].item[cUpperArm].linkId = "C-I-upper-arm" (exactly)
* item[TactileLocalization].item[cUpperArm].text = "上臂觸覺定位"
* item[TactileLocalization].item[cUpperArm].answer 1..1
* item[TactileLocalization].item[cUpperArm].answer.value[x] only integer
* item[TactileLocalization].item[cUpperArm].answer.valueInteger ^short = "分數 0-2"
* item[TactileLocalization].item[cUpperArm].answer.valueInteger ^minValueInteger = 0
* item[TactileLocalization].item[cUpperArm].answer.valueInteger ^maxValueInteger = 2

// C2. 前臂觸覺定位
* item[TactileLocalization].item[cForeArm].linkId = "C-I-forearm" (exactly)
* item[TactileLocalization].item[cForeArm].text = "前臂觸覺定位"
* item[TactileLocalization].item[cForeArm].answer 1..1
* item[TactileLocalization].item[cForeArm].answer.value[x] only integer
* item[TactileLocalization].item[cForeArm].answer.valueInteger ^short = "分數 0-2"
* item[TactileLocalization].item[cForeArm].answer.valueInteger ^minValueInteger = 0
* item[TactileLocalization].item[cForeArm].answer.valueInteger ^maxValueInteger = 2

// C3. 手部觸覺定位
* item[TactileLocalization].item[cHand].linkId = "C-I-hand" (exactly)
* item[TactileLocalization].item[cHand].text = "手部觸覺定位"
* item[TactileLocalization].item[cHand].answer 1..1
* item[TactileLocalization].item[cHand].answer.value[x] only integer
* item[TactileLocalization].item[cHand].answer.valueInteger ^short = "分數 0-2"
* item[TactileLocalization].item[cHand].answer.valueInteger ^minValueInteger = 0
* item[TactileLocalization].item[cHand].answer.valueInteger ^maxValueInteger = 2

// ============================================
// Section D: 位置覺檢測 (4個關節)
// ============================================
* item[PositionSense].linkId = "D-position-sense" (exactly)
* item[PositionSense].text = "D.位置覺檢測"  // 注意：原問卷中此處文字有誤
* item[PositionSense].item ^slicing.discriminator.type = #value
* item[PositionSense].item ^slicing.discriminator.path = "linkId"
* item[PositionSense].item ^slicing.rules = #closed
* item[PositionSense].item contains
    dShoulder 1..1 and
    dElbow 1..1 and
    dWrist 1..1 and
    dThumb 1..1

// D1. 上臂觸覺定位
* item[PositionSense].item[dShoulder].linkId = "D-I-shoulder" (exactly)
* item[PositionSense].item[dShoulder].text = "肩關節位置覺"
* item[PositionSense].item[dShoulder].answer 1..1
* item[PositionSense].item[dShoulder].answer.value[x] only integer
* item[PositionSense].item[dShoulder].answer.valueInteger ^short = "分數 0-2"
* item[PositionSense].item[dShoulder].answer.valueInteger ^minValueInteger = 0
* item[PositionSense].item[dShoulder].answer.valueInteger ^maxValueInteger = 2

// D2. 前臂觸覺定位
* item[PositionSense].item[dElbow].linkId = "D-I-elbow" (exactly)
* item[PositionSense].item[dElbow].text = "肘關節位置覺"
* item[PositionSense].item[dElbow].answer 1..1
* item[PositionSense].item[dElbow].answer.value[x] only integer
* item[PositionSense].item[dElbow].answer.valueInteger ^short = "分數 0-2"
* item[PositionSense].item[dElbow].answer.valueInteger ^minValueInteger = 0
* item[PositionSense].item[dElbow].answer.valueInteger ^maxValueInteger = 2

// D3. 手部觸覺定位
* item[PositionSense].item[dWrist].linkId = "D-I-wrist" (exactly)
* item[PositionSense].item[dWrist].text = "腕關節位置覺"
* item[PositionSense].item[dWrist].answer 1..1
* item[PositionSense].item[dWrist].answer.value[x] only integer
* item[PositionSense].item[dWrist].answer.valueInteger ^short = "分數 0-2"
* item[PositionSense].item[dWrist].answer.valueInteger ^minValueInteger = 0
* item[PositionSense].item[dWrist].answer.valueInteger ^maxValueInteger = 2

// D4. 手部觸覺定位
* item[PositionSense].item[dThumb].linkId = "D-I-thumb" (exactly)
* item[PositionSense].item[dThumb].text = "拇指位置覺"
* item[PositionSense].item[dThumb].answer 1..1
* item[PositionSense].item[dThumb].answer.value[x] only integer
* item[PositionSense].item[dThumb].answer.valueInteger ^short = "分數 0-2"
* item[PositionSense].item[dWrist].answer.valueInteger ^minValueInteger = 0
* item[PositionSense].item[dWrist].answer.valueInteger ^maxValueInteger = 2

// ============================================
// Section E: 總分計算
// ============================================
* item[totalScoreSection].linkId = "E-total-score-FMAUESensory" (exactly)
* item[totalScoreSection].text = "E.FMAUE感覺總分"
* item[totalScoreSection].answer 1..1
* item[totalScoreSection].answer.value[x] only integer
* item[totalScoreSection].answer.valueInteger ^short = "分數 0-26"
* item[totalScoreSection].answer.valueInteger ^minValueInteger = 0
* item[totalScoreSection].answer.valueInteger ^maxValueInteger = 26