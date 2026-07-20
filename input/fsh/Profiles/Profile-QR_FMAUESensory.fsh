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
* questionnaire = Canonical(FMAUESensoryQuestionnaireInstance)

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
// Section A+B+C+D
// ============================================
* item[LightTouch].linkId = "A-light-touch" (exactly)
* item[Temperature].linkId = "B-temperature"
* item[TactileLocalization].linkId = "C-tactile-localization"
* item[PositionSense].linkId = "D-position-sense"


// ========== 限定每個 section 中的分數型題目必須是整數 ==========

* item[LightTouch].item ^slicing.discriminator.type = #value
* item[LightTouch].item ^slicing.discriminator.path = "linkId"
* item[LightTouch].item ^slicing.rules = #closed
* item[LightTouch].item contains
    upperArm 1..1 MS and
    forearm 1..1 MS and
    hand 1..1 MS
* item[LightTouch].item[upperArm].linkId = "A-I-upper-arm" (exactly)
* item[LightTouch].item[forearm].linkId = "A-I-forearm" (exactly)
* item[LightTouch].item[hand].linkId = "A-I-hand" (exactly)
* item[LightTouch].item[upperArm].answer 1..1
* item[LightTouch].item[forearm].answer 1..1
* item[LightTouch].item[hand].answer 1..1
* item[LightTouch].item[upperArm].answer.value[x] only integer
* item[LightTouch].item[forearm].answer.value[x] only integer
* item[LightTouch].item[hand].answer.value[x] only integer

* item[Temperature].item ^slicing.discriminator.type = #value
* item[Temperature].item ^slicing.discriminator.path = "linkId"
* item[Temperature].item ^slicing.rules = #closed
* item[Temperature].item contains
    upperArm 1..1 MS and
    forearm 1..1 MS and
    hand 1..1 MS
* item[Temperature].item[upperArm].linkId = "B-I-upper-arm" (exactly)
* item[Temperature].item[forearm].linkId = "B-I-forearm" (exactly)
* item[Temperature].item[hand].linkId = "B-I-hand" (exactly)
* item[Temperature].item[upperArm].answer 1..1
* item[Temperature].item[forearm].answer 1..1
* item[Temperature].item[hand].answer 1..1
* item[Temperature].item[upperArm].answer.value[x] only integer
* item[Temperature].item[forearm].answer.value[x] only integer
* item[Temperature].item[hand].answer.value[x] only integer

* item[TactileLocalization].item ^slicing.discriminator.type = #value
* item[TactileLocalization].item ^slicing.discriminator.path = "linkId"
* item[TactileLocalization].item ^slicing.rules = #closed
* item[TactileLocalization].item contains
    upperArm 1..1 MS and
    forearm 1..1 MS and
    hand 1..1 MS
* item[TactileLocalization].item[upperArm].linkId = "C-I-upper-arm" (exactly)
* item[TactileLocalization].item[forearm].linkId = "C-I-forearm" (exactly)
* item[TactileLocalization].item[hand].linkId = "C-I-hand" (exactly)
* item[TactileLocalization].item[upperArm].answer 1..1
* item[TactileLocalization].item[forearm].answer 1..1
* item[TactileLocalization].item[hand].answer 1..1
* item[TactileLocalization].item[upperArm].answer.value[x] only integer
* item[TactileLocalization].item[forearm].answer.value[x] only integer
* item[TactileLocalization].item[hand].answer.value[x] only integer

* item[PositionSense].item ^slicing.discriminator.type = #value
* item[PositionSense].item ^slicing.discriminator.path = "linkId"
* item[PositionSense].item ^slicing.rules = #closed
* item[PositionSense].item contains
    shoulder 1..1 MS and
    elbow 1..1 MS and
    wrist 1..1 MS and
    thumb 1..1 MS
* item[PositionSense].item[shoulder].linkId = "D-I-shoulder" (exactly)
* item[PositionSense].item[elbow].linkId = "D-I-elbow" (exactly)
* item[PositionSense].item[wrist].linkId = "D-I-wrist" (exactly)
* item[PositionSense].item[thumb].linkId = "D-I-thumb" (exactly)
* item[PositionSense].item[shoulder].answer 1..1
* item[PositionSense].item[elbow].answer 1..1
* item[PositionSense].item[wrist].answer 1..1
* item[PositionSense].item[thumb].answer 1..1
* item[PositionSense].item[shoulder].answer.value[x] only integer
* item[PositionSense].item[elbow].answer.value[x] only integer
* item[PositionSense].item[wrist].answer.value[x] only integer
* item[PositionSense].item[thumb].answer.value[x] only integer
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
