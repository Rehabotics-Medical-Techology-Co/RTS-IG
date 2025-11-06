Alias: $snomed = http://snomed.info/sct

// ============================================
// ARAT QuestionnaireResponse Profile
// ============================================
Profile: ARATQuestionnaireResponse
Parent: SPACQuestionnaireResponse
Id: ARATQuestionnaireResponse
Title: "ARAT上肢功能評估問卷回覆"
Description: "針對ARAT上肢功能評估問卷的QuestionnaireResponse Profile，強制回傳格式符合問卷結構"

// 固定問卷參考
* questionnaire = "http://example.org/fhir/Questionnaire/ARATQuestionnaireInstance" (exactly)

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
// Section A: 掌握分量表
// ============================================
* item[graspSubscale].linkId = "A-grasp-subscale" (exactly)
* item[graspSubscale].text = "A.抓力分量表"
* item[graspSubscale].item ^slicing.discriminator.type = #value
* item[graspSubscale].item ^slicing.discriminator.path = "linkId"
* item[graspSubscale].item ^slicing.rules = #closed
* item[graspSubscale].item contains
    aBlock10cm3 1..1 and
    aBlock2_5cm3 1..1 and
    aBlock5cm3 1..1 and
    aBlock7_5cm3 1..1 and
    aCricketBall 1..1 and
    aSharpeningStone 1..1 and
    sectionASubscore 1..1

// A1. 方塊積木, 10 立方公分
* item[graspSubscale].item[aBlock10cm3].linkId = "A-I-block-10cm3" (exactly)
* item[graspSubscale].item[aBlock10cm3].text = "方塊積木, 10 立方公分"
* item[graspSubscale].item[aBlock10cm3].answer 1..1
* item[graspSubscale].item[aBlock10cm3].answer.value[x] only integer
* item[graspSubscale].item[aBlock10cm3].answer.valueInteger ^short = "分數 0-3"
* item[graspSubscale].item[aBlock10cm3].answer.valueInteger ^minValueInteger = 0
* item[graspSubscale].item[aBlock10cm3].answer.valueInteger ^maxValueInteger = 3
* item[graspSubscale].item[aBlock10cm3].extension contains TestTimeExtension named testTimeA1 0..1
* item[graspSubscale].item[aBlock10cm3].extension ^short = "完成時間（秒）"

// A2. 方塊積木, 2.5 立方公分
* item[graspSubscale].item[aBlock2_5cm3].linkId = "A-I-block-2.5cm3" (exactly)
* item[graspSubscale].item[aBlock2_5cm3].text = "方塊積木, 2.5 立方公分"
* item[graspSubscale].item[aBlock2_5cm3].answer 1..1
* item[graspSubscale].item[aBlock2_5cm3].answer.value[x] only integer
* item[graspSubscale].item[aBlock2_5cm3].answer.valueInteger ^short = "分數 0-3"
* item[graspSubscale].item[aBlock2_5cm3].answer.valueInteger ^minValueInteger = 0
* item[graspSubscale].item[aBlock2_5cm3].answer.valueInteger ^maxValueInteger = 3
* item[graspSubscale].item[aBlock2_5cm3].extension contains TestTimeExtension named testTimeA2 0..1
* item[graspSubscale].item[aBlock2_5cm3].extension ^short = "完成時間（秒）"

// A3. 方塊積木, 5 立方公分
* item[graspSubscale].item[aBlock5cm3].linkId = "A-I-block-5cm3" (exactly)
* item[graspSubscale].item[aBlock5cm3].text = "方塊積木, 5 立方公分"
* item[graspSubscale].item[aBlock5cm3].answer 1..1
* item[graspSubscale].item[aBlock5cm3].answer.value[x] only integer
* item[graspSubscale].item[aBlock5cm3].answer.valueInteger ^short = "分數 0-3"
* item[graspSubscale].item[aBlock5cm3].answer.valueInteger ^minValueInteger = 0
* item[graspSubscale].item[aBlock5cm3].answer.valueInteger ^maxValueInteger = 3
* item[graspSubscale].item[aBlock5cm3].extension contains TestTimeExtension named testTimeA3 0..1
* item[graspSubscale].item[aBlock5cm3].extension ^short = "完成時間（秒）"

// A4. 方塊積木, 7.5 立方公分
* item[graspSubscale].item[aBlock7_5cm3].linkId = "A-I-block-7.5cm3" (exactly)
* item[graspSubscale].item[aBlock7_5cm3].text = "方塊積木, 7.5 立方公分"
* item[graspSubscale].item[aBlock7_5cm3].answer 1..1
* item[graspSubscale].item[aBlock7_5cm3].answer.value[x] only integer
* item[graspSubscale].item[aBlock7_5cm3].answer.valueInteger ^short = "分數 0-3"
* item[graspSubscale].item[aBlock7_5cm3].answer.valueInteger ^minValueInteger = 0
* item[graspSubscale].item[aBlock7_5cm3].answer.valueInteger ^maxValueInteger = 3
* item[graspSubscale].item[aBlock7_5cm3].extension contains TestTimeExtension named testTimeA4 0..1
* item[graspSubscale].item[aBlock7_5cm3].extension ^short = "完成時間（秒）"

// A5. 板球
* item[graspSubscale].item[aCricketBall].linkId = "A-I-cricket-ball" (exactly)
* item[graspSubscale].item[aCricketBall].text = "板球"
* item[graspSubscale].item[aCricketBall].answer 1..1
* item[graspSubscale].item[aCricketBall].answer.value[x] only integer
* item[graspSubscale].item[aCricketBall].answer.valueInteger ^short = "分數 0-3"
* item[graspSubscale].item[aCricketBall].answer.valueInteger ^minValueInteger = 0
* item[graspSubscale].item[aCricketBall].answer.valueInteger ^maxValueInteger = 3
* item[graspSubscale].item[aCricketBall].extension contains TestTimeExtension named testTimeA5 0..1
* item[graspSubscale].item[aCricketBall].extension ^short = "完成時間（秒）"

// A6. 磨刀石
* item[graspSubscale].item[aSharpeningStone].linkId = "A-I-sharpening-stone" (exactly)
* item[graspSubscale].item[aSharpeningStone].text = "磨刀石"
* item[graspSubscale].item[aSharpeningStone].answer 1..1
* item[graspSubscale].item[aSharpeningStone].answer.value[x] only integer
* item[graspSubscale].item[aSharpeningStone].answer.valueInteger ^short = "分數 0-3"
* item[graspSubscale].item[aSharpeningStone].answer.valueInteger ^minValueInteger = 0
* item[graspSubscale].item[aSharpeningStone].answer.valueInteger ^maxValueInteger = 3
* item[graspSubscale].item[aSharpeningStone].extension contains TestTimeExtension named testTimeA6 0..1
* item[graspSubscale].item[aSharpeningStone].extension ^short = "完成時間（秒）"

// A分量表小計（自動計算）
* item[graspSubscale].item[sectionASubscore].linkId = "A-grasp-subscale-subscore" (exactly)
* item[graspSubscale].item[sectionASubscore].text = "A.抓力分數"
* item[graspSubscale].item[sectionASubscore].answer 1..1
* item[graspSubscale].item[sectionASubscore].answer.value[x] only integer
* item[graspSubscale].item[sectionASubscore].answer.valueInteger ^short = "分數 0-18"
* item[graspSubscale].item[sectionASubscore].answer.valueInteger ^minValueInteger = 0
* item[graspSubscale].item[sectionASubscore].answer.valueInteger ^maxValueInteger = 18

// ============================================
// Section B: 握力分量表（簡化定義）
// ============================================
* item[gripSubscale].linkId = "B-grip-subscale" (exactly)
* item[gripSubscale].text = "B.握力分量表"
* item[gripSubscale].item ^slicing.discriminator.type = #value
* item[gripSubscale].item ^slicing.discriminator.path = "linkId"
* item[gripSubscale].item ^slicing.rules = #closed
* item[gripSubscale].item contains
    bPourWater 1..1 and
    bDisplace225cm 1..1 and
    bDisplace1cm 1..1 and
    bPutWasher 1..1 and
    sectionBSubscore 1..1

// B1. 從一個杯子倒水到另一個杯子
* item[gripSubscale].item[bPourWater].linkId = "B-I-pour-water-from-one-glass-to-another" (exactly)
* item[gripSubscale].item[bPourWater].text = "將水從一個杯子倒到另一個杯子"
* item[gripSubscale].item[bPourWater].answer 1..1
* item[gripSubscale].item[bPourWater].answer.value[x] only integer
* item[gripSubscale].item[bPourWater].answer.valueInteger ^short = "分數 0-3"
* item[gripSubscale].item[bPourWater].answer.valueInteger ^minValueInteger = 0
* item[gripSubscale].item[bPourWater].answer.valueInteger ^maxValueInteger = 3
* item[gripSubscale].item[bPourWater].extension contains TestTimeExtension named testTimeB1 0..1
* item[gripSubscale].item[bPourWater].extension ^short = "完成時間（秒）"

// B2. 從一個杯子倒水到另一個杯子
* item[gripSubscale].item[bDisplace225cm].linkId = "B-I-pour-water-from-one-glass-to-another" (exactly)
* item[gripSubscale].item[bDisplace225cm].text = "將 2.25 公分合金管從桌子的一側移到另一側"
* item[gripSubscale].item[bDisplace225cm].answer 1..1
* item[gripSubscale].item[bDisplace225cm].answer.value[x] only integer
* item[gripSubscale].item[bDisplace225cm].answer.valueInteger ^short = "分數 0-3"
* item[gripSubscale].item[bDisplace225cm].answer.valueInteger ^minValueInteger = 0
* item[gripSubscale].item[bDisplace225cm].answer.valueInteger ^maxValueInteger = 3
* item[gripSubscale].item[bDisplace225cm].extension contains TestTimeExtension named testTimeB2 0..1
* item[gripSubscale].item[bDisplace225cm].extension ^short = "完成時間（秒）"

// B3. 從一個杯子倒水到另一個杯子
* item[gripSubscale].item[bDisplace1cm].linkId = "B-I-displace-1-cm-alloy-tube-from-one-side-of-table-to-the-other" (exactly)
* item[gripSubscale].item[bDisplace1cm].text = "將 1 公分合金管從桌子的一側移到另一側"
* item[gripSubscale].item[bDisplace1cm].answer 1..1
* item[gripSubscale].item[bDisplace1cm].answer.value[x] only integer
* item[gripSubscale].item[bDisplace1cm].answer.valueInteger ^short = "分數 0-3"
* item[gripSubscale].item[bDisplace1cm].answer.valueInteger ^minValueInteger = 0
* item[gripSubscale].item[bDisplace1cm].answer.valueInteger ^maxValueInteger = 3
* item[gripSubscale].item[bDisplace1cm].extension contains TestTimeExtension named testTimeB3 0..1
* item[gripSubscale].item[bDisplace1cm].extension ^short = "完成時間（秒）"

// B4. 將墊圈套在螺栓上
* item[gripSubscale].item[bPutWasher].linkId = "B-I-put-washer-over-bolt" (exactly)
* item[gripSubscale].item[bPutWasher].text = "將墊圈放在螺栓上"
* item[gripSubscale].item[bPutWasher].answer 1..1
* item[gripSubscale].item[bPutWasher].answer.value[x] only integer
* item[gripSubscale].item[bPutWasher].answer.valueInteger ^short = "分數 0-3"
* item[gripSubscale].item[bPutWasher].answer.valueInteger ^minValueInteger = 0
* item[gripSubscale].item[bPutWasher].answer.valueInteger ^maxValueInteger = 3
* item[gripSubscale].item[bPutWasher].extension contains TestTimeExtension named testTimeB4 0..1
* item[gripSubscale].item[bPutWasher].extension ^short = "完成時間（秒）"

// B分量表小計
* item[gripSubscale].item[sectionBSubscore].linkId = "B-grip-subscale-subscore" (exactly)
* item[gripSubscale].item[sectionBSubscore].text = "B.握力分數"
* item[gripSubscale].item[sectionBSubscore].answer 1..1
* item[gripSubscale].item[sectionBSubscore].answer.value[x] only integer
* item[gripSubscale].item[sectionBSubscore].answer.valueInteger ^short = "分數 0-12"
* item[gripSubscale].item[sectionBSubscore].answer.valueInteger ^minValueInteger = 0
* item[gripSubscale].item[sectionBSubscore].answer.valueInteger ^maxValueInteger = 12

// ============================================
// Section C: 捏量表（簡化定義）
// ============================================
* item[pinchSubscale].linkId = "C-pinch-subscale" (exactly)
* item[pinchSubscale].text = "C.捏取分量表"  // 注意：原問卷中此處文字有誤
* item[pinchSubscale].item ^slicing.discriminator.type = #value
* item[pinchSubscale].item ^slicing.discriminator.path = "linkId"
* item[pinchSubscale].item ^slicing.rules = #closed
* item[pinchSubscale].item contains
    cBallBearingRing 1..1 and
    cMarbleIndex 1..1 and
    cBallBearingMiddle 1..1 and
    cBallBearingIndex 1..1 and
    cMarbleRing 1..1 and
    cMarbleMiddle 1..1 and
    sectionCSubscore 1..1

// C1. 無名指和拇指夾住軸承
* item[pinchSubscale].item[cBallBearingRing].linkId = "C-I-ball-bearing-held-between-ring-finger-and-thumb" (exactly)
* item[pinchSubscale].item[cBallBearingRing].text = "滾珠軸承，握在無名指與大拇指之間"
* item[pinchSubscale].item[cBallBearingRing].answer 1..1
* item[pinchSubscale].item[cBallBearingRing].answer.value[x] only integer
* item[pinchSubscale].item[cBallBearingRing].answer.valueInteger ^short = "分數 0-3"
* item[pinchSubscale].item[cBallBearingRing].answer.valueInteger ^minValueInteger = 0
* item[pinchSubscale].item[cBallBearingRing].answer.valueInteger ^maxValueInteger = 3
* item[pinchSubscale].item[cBallBearingRing].extension contains TestTimeExtension named testTimeC1 0..1
* item[pinchSubscale].item[cBallBearingRing].extension ^short = "完成時間（秒）"

// C2. 食指和拇指夾住彈珠
* item[pinchSubscale].item[cMarbleIndex].linkId = "C-I-marble-held-between-index-finger-and-thumb" (exactly)
* item[pinchSubscale].item[cMarbleIndex].text = "大理石，握在食指與大拇指之間"
* item[pinchSubscale].item[cMarbleIndex].answer 1..1
* item[pinchSubscale].item[cMarbleIndex].answer.value[x] only integer
* item[pinchSubscale].item[cMarbleIndex].answer.valueInteger ^short = "分數 0-3"
* item[pinchSubscale].item[cMarbleIndex].answer.valueInteger ^minValueInteger = 0
* item[pinchSubscale].item[cMarbleIndex].answer.valueInteger ^maxValueInteger = 3
* item[pinchSubscale].item[cMarbleIndex].extension contains TestTimeExtension named testTimeC2 0..1
* item[pinchSubscale].item[cMarbleIndex].extension ^short = "完成時間（秒）"

// C3. 中指和拇指夾住軸承
* item[pinchSubscale].item[cBallBearingMiddle].linkId = "C-I-ball-bearing-held-between-middle-finger-and-thumb" (exactly)
* item[pinchSubscale].item[cBallBearingMiddle].text = "滾珠軸承，握在中指與拇指之間"
* item[pinchSubscale].item[cBallBearingMiddle].answer 1..1
* item[pinchSubscale].item[cBallBearingMiddle].answer.value[x] only integer
* item[pinchSubscale].item[cBallBearingMiddle].answer.valueInteger ^short = "分數 0-3"
* item[pinchSubscale].item[cBallBearingMiddle].answer.valueInteger ^minValueInteger = 0
* item[pinchSubscale].item[cBallBearingMiddle].answer.valueInteger ^maxValueInteger = 3
* item[pinchSubscale].item[cBallBearingMiddle].extension contains TestTimeExtension named testTimeC3 0..1
* item[pinchSubscale].item[cBallBearingMiddle].extension ^short = "完成時間（秒）"

// C4. 食指和拇指夾住軸承
* item[pinchSubscale].item[cBallBearingIndex].linkId = "C-I-ball-bearing-held-between-index-finger-and-thumb" (exactly)
* item[pinchSubscale].item[cBallBearingIndex].text = "滾珠軸承，握在食指與拇指之間"
* item[pinchSubscale].item[cBallBearingIndex].answer 1..1
* item[pinchSubscale].item[cBallBearingIndex].answer.value[x] only integer
* item[pinchSubscale].item[cBallBearingIndex].answer.valueInteger ^short = "分數 0-3"
* item[pinchSubscale].item[cBallBearingIndex].answer.valueInteger ^minValueInteger = 0
* item[pinchSubscale].item[cBallBearingIndex].answer.valueInteger ^maxValueInteger = 3
* item[pinchSubscale].item[cBallBearingIndex].extension contains TestTimeExtension named testTimeC4 0..1
* item[pinchSubscale].item[cBallBearingIndex].extension ^short = "完成時間（秒）"

// C5. 無名指和拇指夾住彈珠
* item[pinchSubscale].item[cMarbleRing].linkId = "C-I-marble-held-between-ring-finger-and-thumb" (exactly)
* item[pinchSubscale].item[cMarbleRing].text = "大理石，握在無名指和大拇指之間"
* item[pinchSubscale].item[cMarbleRing].answer 1..1
* item[pinchSubscale].item[cMarbleRing].answer.value[x] only integer
* item[pinchSubscale].item[cMarbleRing].answer.valueInteger ^short = "分數 0-3"
* item[pinchSubscale].item[cMarbleRing].answer.valueInteger ^minValueInteger = 0
* item[pinchSubscale].item[cMarbleRing].answer.valueInteger ^maxValueInteger = 3
* item[pinchSubscale].item[cMarbleRing].extension contains TestTimeExtension named testTimeC5 0..1
* item[pinchSubscale].item[cMarbleRing].extension ^short = "完成時間（秒）"

// C6. 中指和拇指夾住彈珠
* item[pinchSubscale].item[cMarbleMiddle].linkId = "C-I-marble-held-between-middle-finger-and-thumb" (exactly)
* item[pinchSubscale].item[cMarbleMiddle].text = "大理石，握在中指與大拇指之間"
* item[pinchSubscale].item[cMarbleMiddle].answer 1..1
* item[pinchSubscale].item[cMarbleMiddle].answer.value[x] only integer
* item[pinchSubscale].item[cMarbleMiddle].answer.valueInteger ^short = "分數 0-3"
* item[pinchSubscale].item[cMarbleMiddle].answer.valueInteger ^minValueInteger = 0
* item[pinchSubscale].item[cMarbleMiddle].answer.valueInteger ^maxValueInteger = 3
* item[pinchSubscale].item[cMarbleMiddle].extension contains TestTimeExtension named testTimeC6 0..1
* item[pinchSubscale].item[cMarbleMiddle].extension ^short = "完成時間（秒）"

// C分量表小計
* item[pinchSubscale].item[sectionCSubscore].linkId = "C-pinch-subscale-subscore" (exactly)
* item[pinchSubscale].item[sectionCSubscore].text = "C.捏取分數"
* item[pinchSubscale].item[sectionCSubscore].answer 1..1
* item[pinchSubscale].item[sectionCSubscore].answer.value[x] only integer
* item[pinchSubscale].item[sectionCSubscore].answer.valueInteger ^short = "分數 0-18"
* item[pinchSubscale].item[sectionCSubscore].answer.valueInteger ^minValueInteger = 0
* item[pinchSubscale].item[sectionCSubscore].answer.valueInteger ^maxValueInteger = 18

// ============================================
// Section D: 大運動分量表
// ============================================
* item[grossMovementSubscale].linkId = "D-gross-movement-subscale" (exactly)
* item[grossMovementSubscale].text = "D.粗大動作分量表"  // 注意：原問卷中此處文字有誤
* item[grossMovementSubscale].item ^slicing.discriminator.type = #value
* item[grossMovementSubscale].item ^slicing.discriminator.path = "linkId"
* item[grossMovementSubscale].item ^slicing.rules = #closed
* item[grossMovementSubscale].item contains
    dHandBehindHead 1..1 and
    dHandTopHead 1..1 and
    dHandMouth 1..1 and
    sectionDSubscore 1..1

// D1. 手碰到頭後
* item[grossMovementSubscale].item[dHandBehindHead].linkId = "D-I-hand-to-behind-the-head" (exactly)
* item[grossMovementSubscale].item[dHandBehindHead].text = "手放在腦後"
* item[grossMovementSubscale].item[dHandBehindHead].answer 1..1
* item[grossMovementSubscale].item[dHandBehindHead].answer.value[x] only integer
* item[grossMovementSubscale].item[dHandBehindHead].answer.valueInteger ^short = "分數 0-3"
* item[grossMovementSubscale].item[dHandBehindHead].answer.valueInteger ^minValueInteger = 0
* item[grossMovementSubscale].item[dHandBehindHead].answer.valueInteger ^maxValueInteger = 3
* item[grossMovementSubscale].item[dHandBehindHead].extension contains TestTimeExtension named testTimeD1 0..1
* item[grossMovementSubscale].item[dHandBehindHead].extension ^short = "完成時間（秒）"

// D2. 手碰到頭頂
* item[grossMovementSubscale].item[dHandTopHead].linkId = "D-I-hand-to-top-of-head" (exactly)
* item[grossMovementSubscale].item[dHandTopHead].text = "手放在頭頂"
* item[grossMovementSubscale].item[dHandTopHead].answer 1..1
* item[grossMovementSubscale].item[dHandTopHead].answer.value[x] only integer
* item[grossMovementSubscale].item[dHandTopHead].answer.valueInteger ^short = "分數 0-3"
* item[grossMovementSubscale].item[dHandTopHead].answer.valueInteger ^minValueInteger = 0
* item[grossMovementSubscale].item[dHandTopHead].answer.valueInteger ^maxValueInteger = 3
* item[grossMovementSubscale].item[dHandTopHead].extension contains TestTimeExtension named testTimeD2 0..1
* item[grossMovementSubscale].item[dHandTopHead].extension ^short = "完成時間（秒）"

// D3. 手碰到嘴巴
* item[grossMovementSubscale].item[dHandMouth].linkId = "D-I-hand-to-mouth" (exactly)
* item[grossMovementSubscale].item[dHandMouth].text = "手到嘴"
* item[grossMovementSubscale].item[dHandMouth].answer 1..1
* item[grossMovementSubscale].item[dHandMouth].answer.value[x] only integer
* item[grossMovementSubscale].item[dHandMouth].answer.valueInteger ^short = "分數 0-3"
* item[grossMovementSubscale].item[dHandMouth].answer.valueInteger ^minValueInteger = 0
* item[grossMovementSubscale].item[dHandMouth].answer.valueInteger ^maxValueInteger = 3
* item[grossMovementSubscale].item[dHandMouth].extension contains TestTimeExtension named testTimeD3 0..1
* item[grossMovementSubscale].item[dHandMouth].extension ^short = "完成時間（秒）"

// D分量表小計
* item[grossMovementSubscale].item[sectionDSubscore].linkId = "D-gross-movement-subscale-subscore" (exactly)
* item[grossMovementSubscale].item[sectionDSubscore].text = "D.粗大動作分數"
* item[grossMovementSubscale].item[sectionDSubscore].answer 1..1
* item[grossMovementSubscale].item[sectionDSubscore].answer.value[x] only integer
* item[grossMovementSubscale].item[sectionDSubscore].answer.valueInteger ^short = "分數 0-9"
* item[grossMovementSubscale].item[sectionDSubscore].answer.valueInteger ^minValueInteger = 0
* item[grossMovementSubscale].item[sectionDSubscore].answer.valueInteger ^maxValueInteger = 9

// ============================================
// Section E: 總分計算
// ============================================
* item[totalScoreSection].linkId = "E-total-score-ARAT" (exactly)
* item[totalScoreSection].text = "E.ARAT總分計算"
* item[totalScoreSection].answer 1..1
* item[totalScoreSection].answer.value[x] only integer
* item[totalScoreSection].answer.valueInteger ^short = "ARAT總分"
* item[totalScoreSection].answer.valueInteger ^minValueInteger = 0
* item[totalScoreSection].answer.valueInteger ^maxValueInteger = 57

// ============================================
// ValueSet 定義
// ============================================
ValueSet: AssessmentSideValueSet
Id: assessment-side-valueset
Title: "評估側別選項"
Description: "受試者評估側別選項"
* $snomed#24028007 "患者左側"
* $snomed#7771000 "患者右側"

// ============================================
// Invariant 約束（範例）
// ============================================
Invariant: arat-score-consistency
Description: "各分量表分數與總分必須一致"
Expression: "item.where(linkId='arat-total-score').answer.value = item.where(linkId in ('grasp-score-display' | 'grip-score-display' | 'pinch-score-display' | 'movement-score-display')).answer.value.sum()"
Severity: #error

Invariant: subscale-score-valid
Description: "每個分量表分數必須在有效範圍內"
Expression: "item.descendants().where(linkId.endsWith('-subscore')).answer.value.all($this >= 0)"
Severity: #error