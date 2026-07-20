
// ============================================
// ARAT QuestionnaireResponse Profile
// ============================================
Profile: ARATQuestionnaireResponse
Parent: SPACQuestionnaireResponse
Id: ARATQuestionnaireResponse
Title: "ARAT上肢功能評估問卷回覆"
Description: "針對ARAT上肢功能評估問卷的QuestionnaireResponse Profile，強制回傳格式符合問卷結構"

// 固定問卷參考
* questionnaire = Canonical(ARATQuestionnaireInstance) (exactly)

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
* item ^slicing.description = "根據linkId區分ARAT問卷的主要區塊"

* item contains
    assessmentSide 1..1 MS and
    graspSubscale 1..1 MS and
    gripSubscale 1..1 MS and
    pinchSubscale 1..1 MS and
    grossMovementSubscale 1..1 MS and
    totalScoreSection 1..1 MS

// ============================================
// 評估側別選擇
// ============================================
* item[assessmentSide].linkId = "assessment-side-arat" (exactly)
* item[assessmentSide].text = "請選擇評估側"
* item[assessmentSide].answer 1..1
* item[assessmentSide].answer.value[x] only Coding
* item[assessmentSide].answer.valueCoding from AssessmentSideValueSet (required)

// ============================================
// Section A+B+C+D
// ============================================
* item[graspSubscale].linkId = "A-grasp-subscale" 
* item[graspSubscale].text = "A.抓力分量表"
* item[gripSubscale].linkId = "B-grip-subscale"
* item[gripSubscale].text = "B.握力分量表"
* item[pinchSubscale].linkId = "C-pinch-subscale"
* item[pinchSubscale].text = "C.捏取分量表"
* item[grossMovementSubscale].linkId = "D-gross-movement-subscale"
* item[grossMovementSubscale].text = "D.粗大動作分量表"
* item[totalScoreSection].linkId = "E-total-score-ARAT" (exactly)
* item[totalScoreSection].text = "E.ARAT總分計算"


// ============================================
// 限制各section 只能填整數integer
// ============================================
* item[graspSubscale].item ^slicing.discriminator.type = #value
* item[graspSubscale].item ^slicing.discriminator.path = "linkId"
* item[graspSubscale].item ^slicing.rules = #closed
* item[graspSubscale].item contains
    block10cm3 1..1 MS and
    block25cm3 1..1 MS and
    block5cm3 1..1 MS and
    block75cm3 1..1 MS and
    cricketBall 1..1 MS and
    sharpeningStone 1..1 MS and
    graspSubscore 1..1 MS
* item[graspSubscale].item[block10cm3].linkId = "A-I-block-10cm3" (exactly)
* item[graspSubscale].item[block25cm3].linkId = "A-I-block-2.5cm3" (exactly)
* item[graspSubscale].item[block5cm3].linkId = "A-I-block-5cm3" (exactly)
* item[graspSubscale].item[block75cm3].linkId = "A-I-block-7.5cm3" (exactly)
* item[graspSubscale].item[cricketBall].linkId = "A-I-cricket-ball" (exactly)
* item[graspSubscale].item[sharpeningStone].linkId = "A-I-sharpening-stone" (exactly)
* item[graspSubscale].item[graspSubscore].linkId = "A-grasp-subscale-subscore" (exactly)
* item[graspSubscale].item[block10cm3].answer 1..1
* item[graspSubscale].item[block25cm3].answer 1..1
* item[graspSubscale].item[block5cm3].answer 1..1
* item[graspSubscale].item[block75cm3].answer 1..1
* item[graspSubscale].item[cricketBall].answer 1..1
* item[graspSubscale].item[sharpeningStone].answer 1..1
* item[graspSubscale].item[graspSubscore].answer 1..1
* item[graspSubscale].item[block10cm3].answer.value[x] only integer
* item[graspSubscale].item[block25cm3].answer.value[x] only integer
* item[graspSubscale].item[block5cm3].answer.value[x] only integer
* item[graspSubscale].item[block75cm3].answer.value[x] only integer
* item[graspSubscale].item[cricketBall].answer.value[x] only integer
* item[graspSubscale].item[sharpeningStone].answer.value[x] only integer
* item[graspSubscale].item[graspSubscore].answer.value[x] only integer

* item[gripSubscale].item ^slicing.discriminator.type = #value
* item[gripSubscale].item ^slicing.discriminator.path = "linkId"
* item[gripSubscale].item ^slicing.rules = #closed
* item[gripSubscale].item contains
    pourWater 1..1 MS and
    displace225Tube 1..1 MS and
    displace1Tube 1..1 MS and
    washerBolt 1..1 MS and
    gripSubscore 1..1 MS
* item[gripSubscale].item[pourWater].linkId = "B-I-pour-water-from-one-glass-to-another" (exactly)
* item[gripSubscale].item[displace225Tube].linkId = "B-I-displace-2.25-cm-alloy-tube-from-one-side-oftable-to-the-other" (exactly)
* item[gripSubscale].item[displace1Tube].linkId = "B-I-displace-1-cm-alloy-tube-from-one-side-of-table-to-the-other" (exactly)
* item[gripSubscale].item[washerBolt].linkId = "B-I-put-washer-over-bolt" (exactly)
* item[gripSubscale].item[gripSubscore].linkId = "B-grip-subscale-subscore" (exactly)
* item[gripSubscale].item[pourWater].answer 1..1
* item[gripSubscale].item[displace225Tube].answer 1..1
* item[gripSubscale].item[displace1Tube].answer 1..1
* item[gripSubscale].item[washerBolt].answer 1..1
* item[gripSubscale].item[gripSubscore].answer 1..1
* item[gripSubscale].item[pourWater].answer.value[x] only integer
* item[gripSubscale].item[displace225Tube].answer.value[x] only integer
* item[gripSubscale].item[displace1Tube].answer.value[x] only integer
* item[gripSubscale].item[washerBolt].answer.value[x] only integer
* item[gripSubscale].item[gripSubscore].answer.value[x] only integer

* item[pinchSubscale].item ^slicing.discriminator.type = #value
* item[pinchSubscale].item ^slicing.discriminator.path = "linkId"
* item[pinchSubscale].item ^slicing.rules = #closed
* item[pinchSubscale].item contains
    ballRingThumb 1..1 MS and
    marbleIndexThumb 1..1 MS and
    ballMiddleThumb 1..1 MS and
    ballIndexThumb 1..1 MS and
    marbleRingThumb 1..1 MS and
    marbleMiddleThumb 1..1 MS and
    pinchSubscore 1..1 MS
* item[pinchSubscale].item[ballRingThumb].linkId = "C-I-ball-bearing-held-between-ring-finger-and-thumb" (exactly)
* item[pinchSubscale].item[marbleIndexThumb].linkId = "C-I-marble-held-between-index-finger-and-thumb" (exactly)
* item[pinchSubscale].item[ballMiddleThumb].linkId = "C-I-ball-bearing-held-between-middle-finger-and-thumb" (exactly)
* item[pinchSubscale].item[ballIndexThumb].linkId = "C-I-ball-bearing-held-between-index-finger-and-thumb" (exactly)
* item[pinchSubscale].item[marbleRingThumb].linkId = "C-I-marble-held-between-ring-finger-and-thumb" (exactly)
* item[pinchSubscale].item[marbleMiddleThumb].linkId = "C-I-marble-held-between-middle-finger-and-thumb" (exactly)
* item[pinchSubscale].item[pinchSubscore].linkId = "C-pinch-subscale-subscore" (exactly)
* item[pinchSubscale].item[ballRingThumb].answer 1..1
* item[pinchSubscale].item[marbleIndexThumb].answer 1..1
* item[pinchSubscale].item[ballMiddleThumb].answer 1..1
* item[pinchSubscale].item[ballIndexThumb].answer 1..1
* item[pinchSubscale].item[marbleRingThumb].answer 1..1
* item[pinchSubscale].item[marbleMiddleThumb].answer 1..1
* item[pinchSubscale].item[pinchSubscore].answer 1..1
* item[pinchSubscale].item[ballRingThumb].answer.value[x] only integer
* item[pinchSubscale].item[marbleIndexThumb].answer.value[x] only integer
* item[pinchSubscale].item[ballMiddleThumb].answer.value[x] only integer
* item[pinchSubscale].item[ballIndexThumb].answer.value[x] only integer
* item[pinchSubscale].item[marbleRingThumb].answer.value[x] only integer
* item[pinchSubscale].item[marbleMiddleThumb].answer.value[x] only integer
* item[pinchSubscale].item[pinchSubscore].answer.value[x] only integer

* item[grossMovementSubscale].item ^slicing.discriminator.type = #value
* item[grossMovementSubscale].item ^slicing.discriminator.path = "linkId"
* item[grossMovementSubscale].item ^slicing.rules = #closed
* item[grossMovementSubscale].item contains
    handBehindHead 1..1 MS and
    handTopHead 1..1 MS and
    handMouth 1..1 MS and
    grossMovementSubscore 1..1 MS
* item[grossMovementSubscale].item[handBehindHead].linkId = "D-I-hand-to-behind-the-head" (exactly)
* item[grossMovementSubscale].item[handTopHead].linkId = "D-I-hand-to-top-of-head" (exactly)
* item[grossMovementSubscale].item[handMouth].linkId = "D-I-hand-to-mouth" (exactly)
* item[grossMovementSubscale].item[grossMovementSubscore].linkId = "D-gross-movement-subscale-subscore" (exactly)
* item[grossMovementSubscale].item[handBehindHead].answer 1..1
* item[grossMovementSubscale].item[handTopHead].answer 1..1
* item[grossMovementSubscale].item[handMouth].answer 1..1
* item[grossMovementSubscale].item[grossMovementSubscore].answer 1..1
* item[grossMovementSubscale].item[handBehindHead].answer.value[x] only integer
* item[grossMovementSubscale].item[handTopHead].answer.value[x] only integer
* item[grossMovementSubscale].item[handMouth].answer.value[x] only integer
* item[grossMovementSubscale].item[grossMovementSubscore].answer.value[x] only integer

* item[totalScoreSection].answer 1..1
* item[totalScoreSection].answer.value[x] only integer



// ============================================
// ValueSet 定義
// ============================================
ValueSet: AssessmentSideValueSet
Id: assessment-side-valueset
Title: "評估側別選項"
Description: "受試者評估側別選項"
* ^experimental = false
* insert ShareableTerminologyMetadata
* $SCT#24028007 "患者左側"
* $SCT#7771000 "患者右側"
