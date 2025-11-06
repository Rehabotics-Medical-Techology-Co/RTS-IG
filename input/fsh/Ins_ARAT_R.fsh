// ============================================
// ARAT QuestionnaireResponse 實例範例
// ============================================
Instance: ARATQuestionnaireResponseExample
InstanceOf: ARATQuestionnaireResponse
Usage: #example
Title: "ARAT問卷回覆範例"
Description: "一位中風患者進行ARAT上肢功能評估的完整問卷回覆範例，包含所有測試項目分數、完成時間及自動計算總分"

* id = "arat-response-example-001"
* questionnaire = "http://example.org/fhir/Questionnaire/ARATQuestionnaireInstance"
* status = #completed
* subject = Reference(Patient/stroke-patient-001) "張先生"
* authored = "2025-10-11T14:30:00+08:00"
* author = Reference(Practitioner/ot-therapist-001) "復健治療師 - 李小姐"

// ============================================
// 評估側別選擇
// ============================================
* item[assessmentSide].linkId = "assessment-side-arat"
* item[assessmentSide].text = "請選擇評估側"
* item[assessmentSide].answer.valueCoding = http://snomed.info/sct#24028007 "患者左側"

// ============================================
// Section A: 掌握分量表
// ============================================
* item[graspSubscale].linkId = "A-grasp-subscale"
* item[graspSubscale].text = "A.抓力分量表"

// A1. 方塊積木, 10 立方公分 - 分數3分，時間2.5秒
* item[graspSubscale].item[aBlock10cm3].linkId = "A-I-block-10cm3"
* item[graspSubscale].item[aBlock10cm3].text = "方塊積木, 10 立方公分"
* item[graspSubscale].item[aBlock10cm3].answer.valueInteger = 3
* item[graspSubscale].item[aBlock10cm3].extension[testTimeA1].valueDecimal = 2.5

// A2. 方塊積木, 2.5 立方公分 - 分數2分，時間4.2秒
* item[graspSubscale].item[aBlock2_5cm3].linkId = "A-I-block-2.5cm3"
* item[graspSubscale].item[aBlock2_5cm3].text = "方塊積木, 2.5 立方公分"
* item[graspSubscale].item[aBlock2_5cm3].answer.valueInteger = 2
* item[graspSubscale].item[aBlock2_5cm3].extension[testTimeA2].valueDecimal = 4.2

// A3. 方塊積木, 5 立方公分 - 分數3分，時間3.1秒
* item[graspSubscale].item[aBlock5cm3].linkId = "A-I-block-5cm3"
* item[graspSubscale].item[aBlock5cm3].text = "方塊積木, 5 立方公分"
* item[graspSubscale].item[aBlock5cm3].answer.valueInteger = 3
* item[graspSubscale].item[aBlock5cm3].extension[testTimeA3].valueDecimal = 3.1

// A4. 方塊積木, 7.5 立方公分 - 分數2分，時間5.3秒
* item[graspSubscale].item[aBlock7_5cm3].linkId = "A-I-block-7.5cm3"
* item[graspSubscale].item[aBlock7_5cm3].text = "方塊積木, 7.5 立方公分"
* item[graspSubscale].item[aBlock7_5cm3].answer.valueInteger = 2
* item[graspSubscale].item[aBlock7_5cm3].extension[testTimeA4].valueDecimal = 5.3

// A5. 板球 - 分數1分，時間8.7秒
* item[graspSubscale].item[aCricketBall].linkId = "A-I-cricket-ball"
* item[graspSubscale].item[aCricketBall].text = "板球"
* item[graspSubscale].item[aCricketBall].answer.valueInteger = 1
* item[graspSubscale].item[aCricketBall].extension[testTimeA5].valueDecimal = 8.7

// A6. 磨刀石 - 分數1分，時間9.1秒
* item[graspSubscale].item[aSharpeningStone].linkId = "A-I-sharpening-stone"
* item[graspSubscale].item[aSharpeningStone].text = "磨刀石"
* item[graspSubscale].item[aSharpeningStone].answer.valueInteger = 1
* item[graspSubscale].item[aSharpeningStone].extension[testTimeA6].valueDecimal = 9.1

// A分量表小計 (3+2+3+2+1+1 = 12)
* item[graspSubscale].item[sectionASubscore].linkId = "A-grasp-subscale-subscore"
* item[graspSubscale].item[sectionASubscore].text = "A.抓力分數"
* item[graspSubscale].item[sectionASubscore].answer.valueInteger = 12

// ============================================
// Section B: 握力分量表
// ============================================
* item[gripSubscale].linkId = "B-grip-subscale"
* item[gripSubscale].text = "B.握力分量表"

// B1. 從一個杯子倒水到另一個杯子 - 分數2分，時間6.5秒
* item[gripSubscale].item[bPourWater].linkId = "B-I-pour-water-from-one-glass-to-another"
* item[gripSubscale].item[bPourWater].text = "將水從一個杯子倒到另一個杯子"
* item[gripSubscale].item[bPourWater].answer.valueInteger = 2
* item[gripSubscale].item[bPourWater].extension[testTimeB1].valueDecimal = 6.5

// B2. 將2.25公分合金管從桌子一側移動到另一側 - 分數3分，時間4.8秒
* item[gripSubscale].item[bDisplace225cm].linkId = "B-I-pour-water-from-one-glass-to-another"
* item[gripSubscale].item[bDisplace225cm].text = "將 2.25 公分合金管從桌子的一側移到另一側"
* item[gripSubscale].item[bDisplace225cm].answer.valueInteger = 3
* item[gripSubscale].item[bDisplace225cm].extension[testTimeB2].valueDecimal = 4.8

// B3. 將1公分合金管從桌子一側移動到另一側 - 分數2分，時間7.2秒
* item[gripSubscale].item[bDisplace1cm].linkId = "B-I-displace-1-cm-alloy-tube-from-one-side-of-table-to-the-other"
* item[gripSubscale].item[bDisplace1cm].text = "將 1 公分合金管從桌子的一側移到另一側"
* item[gripSubscale].item[bDisplace1cm].answer.valueInteger = 2
* item[gripSubscale].item[bDisplace1cm].extension[testTimeB3].valueDecimal = 7.2

// B4. 將墊圈套在螺栓上 - 分數1分，時間12.3秒
* item[gripSubscale].item[bPutWasher].linkId = "B-I-put-washer-over-bolt"
* item[gripSubscale].item[bPutWasher].text = "將墊圈放在螺栓上"
* item[gripSubscale].item[bPutWasher].answer.valueInteger = 1
* item[gripSubscale].item[bPutWasher].extension[testTimeB4].valueDecimal = 12.3

// B分量表小計 (2+3+2+1 = 8)
* item[gripSubscale].item[sectionBSubscore].linkId = "B-grip-subscale-subscore"
* item[gripSubscale].item[sectionBSubscore].text = "B.握力分數"
* item[gripSubscale].item[sectionBSubscore].answer.valueInteger = 8

// ============================================
// Section C: 捏量表
// ============================================
* item[pinchSubscale].linkId = "C-pinch-subscale"
* item[pinchSubscale].text = "C.捏取分量表"  // 注意：原問卷中此處文字有誤，實際應為捏取分量表

// C1. 無名指和拇指夾住軸承 - 分數1分，時間7.5秒
* item[pinchSubscale].item[cBallBearingRing].linkId = "C-I-ball-bearing-held-between-ring-finger-and-thumb"
* item[pinchSubscale].item[cBallBearingRing].text = "滾珠軸承，握在無名指與大拇指之間"
* item[pinchSubscale].item[cBallBearingRing].answer.valueInteger = 1
* item[pinchSubscale].item[cBallBearingRing].extension[testTimeC1].valueDecimal = 7.5

// C2. 食指和拇指夾住彈珠 - 分數2分，時間5.1秒
* item[pinchSubscale].item[cMarbleIndex].linkId = "C-I-marble-held-between-index-finger-and-thumb"
* item[pinchSubscale].item[cMarbleIndex].text = "大理石，握在食指與大拇指之間"
* item[pinchSubscale].item[cMarbleIndex].answer.valueInteger = 2
* item[pinchSubscale].item[cMarbleIndex].extension[testTimeC2].valueDecimal = 5.1

// C3. 中指和拇指夾住軸承 - 分數2分，時間6.8秒
* item[pinchSubscale].item[cBallBearingMiddle].linkId = "C-I-ball-bearing-held-between-middle-finger-and-thumb"
* item[pinchSubscale].item[cBallBearingMiddle].text = "滾珠軸承，握在中指與拇指之間"
* item[pinchSubscale].item[cBallBearingMiddle].answer.valueInteger = 2
* item[pinchSubscale].item[cBallBearingMiddle].extension[testTimeC3].valueDecimal = 6.8

// C4. 食指和拇指夾住軸承 - 分數3分，時間3.9秒
* item[pinchSubscale].item[cBallBearingIndex].linkId = "C-I-ball-bearing-held-between-index-finger-and-thumb"
* item[pinchSubscale].item[cBallBearingIndex].text = "滾珠軸承，握在食指與拇指之間"
* item[pinchSubscale].item[cBallBearingIndex].answer.valueInteger = 3
* item[pinchSubscale].item[cBallBearingIndex].extension[testTimeC4].valueDecimal = 3.9

// C5. 無名指和拇指夾住彈珠 - 分數1分，時間9.2秒
* item[pinchSubscale].item[cMarbleRing].linkId = "C-I-marble-held-between-ring-finger-and-thumb"
* item[pinchSubscale].item[cMarbleRing].text = "大理石，握在無名指和大拇指之間"
* item[pinchSubscale].item[cMarbleRing].answer.valueInteger = 1
* item[pinchSubscale].item[cMarbleRing].extension[testTimeC5].valueDecimal = 9.2

// C6. 中指和拇指夾住彈珠 - 分數2分，時間6.5秒
* item[pinchSubscale].item[cMarbleMiddle].linkId = "C-I-marble-held-between-middle-finger-and-thumb"
* item[pinchSubscale].item[cMarbleMiddle].text = "大理石，握在中指與大拇指之間"
* item[pinchSubscale].item[cMarbleMiddle].answer.valueInteger = 2
* item[pinchSubscale].item[cMarbleMiddle].extension[testTimeC6].valueDecimal = 6.5

// C分量表小計 (1+2+2+3+1+2 = 11)
* item[pinchSubscale].item[sectionCSubscore].linkId = "C-pinch-subscale-subscore"
* item[pinchSubscale].item[sectionCSubscore].text = "C.捏取分數"
* item[pinchSubscale].item[sectionCSubscore].answer.valueInteger = 11

// ============================================
// Section D: 大運動分量表
// ============================================
* item[grossMovementSubscale].linkId = "D-gross-movement-subscale"
* item[grossMovementSubscale].text = "D.粗大動作分量表"  // 注意：原問卷中此處文字有誤，實際應為大運動分量表

// D1. 手碰到頭後 - 分數2分，時間4.2秒
* item[grossMovementSubscale].item[dHandBehindHead].linkId = "D-I-hand-to-behind-the-head"
* item[grossMovementSubscale].item[dHandBehindHead].text = "手放在腦後"
* item[grossMovementSubscale].item[dHandBehindHead].answer.valueInteger = 2
* item[grossMovementSubscale].item[dHandBehindHead].extension[testTimeD1].valueDecimal = 4.2

// D2. 手碰到頭頂 - 分數3分，時間3.1秒
* item[grossMovementSubscale].item[dHandTopHead].linkId = "D-I-hand-to-top-of-head"
* item[grossMovementSubscale].item[dHandTopHead].text = "手放在頭頂"
* item[grossMovementSubscale].item[dHandTopHead].answer.valueInteger = 3
* item[grossMovementSubscale].item[dHandTopHead].extension[testTimeD2].valueDecimal = 3.1

// D3. 手碰到嘴巴 - 分數3分，時間2.8秒
* item[grossMovementSubscale].item[dHandMouth].linkId = "D-I-hand-to-mouth"
* item[grossMovementSubscale].item[dHandMouth].text = "手到嘴"
* item[grossMovementSubscale].item[dHandMouth].answer.valueInteger = 3
* item[grossMovementSubscale].item[dHandMouth].extension[testTimeD3].valueDecimal = 2.8

// D分量表小計 (2+3+3 = 8)
* item[grossMovementSubscale].item[sectionDSubscore].linkId = "D-gross-movement-subscale-subscore"
* item[grossMovementSubscale].item[sectionDSubscore].text = "D.粗大動作分數"
* item[grossMovementSubscale].item[sectionDSubscore].answer.valueInteger = 8

// ============================================
// Section E: 總分計算 (12+8+11+8 = 39)
// ============================================
* item[totalScoreSection].linkId = "E-total-score-ARAT"
* item[totalScoreSection].text = "E.ARAT總分計算"
* item[totalScoreSection].answer.valueInteger = 39
