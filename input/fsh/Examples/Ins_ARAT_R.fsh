// ============================================
// ARAT QuestionnaireResponse 實例範例
// ============================================
Instance: ARATQuestionnaireResponseExample
InstanceOf: ARATQuestionnaireResponse
Usage: #example
Title: "ARAT問卷回覆範例"
Description: "一位中風患者進行ARAT上肢功能評估的完整問卷回覆範例，包含所有測試項目分數、完成時間及自動計算總分"

* id = "arat-response-example-001" // server 可以被查詢的id 
* questionnaire = Canonical(ARATQuestionnaireInstance)
* status = #completed
* subject = Reference(stroke-patient-001) "王小姐"
* authored = "2025-10-11T14:30:00+08:00"
* author = Reference(ot-therapist-001) "復健治療師 - 李小姐"

//================================
//評估側別選擇 item 0 
//================================
* item[assessmentSide].linkId = "assessment-side-arat"
* item[assessmentSide].text = "請選擇評估側"
* item[assessmentSide].answer.valueCoding = http://snomed.info/sct#24028007 "Right"

    
// ============================================
// Section A: 掌握分量表 item 1
// ============================================
* item[graspSubscale].linkId = "A-grasp-subscale"
* item[graspSubscale].text = "A.抓力分量表"
* item[graspSubscale].item[block10cm3].linkId =  "A-I-block-10cm3"
* item[graspSubscale].item[block10cm3].answer.valueInteger = 3
* item[graspSubscale].item[block25cm3].linkId = "A-I-block-2.5cm3"
* item[graspSubscale].item[block25cm3].text = "方塊積木, 2.5 立方公分"
* item[graspSubscale].item[block25cm3].answer.valueInteger = 2
* item[graspSubscale].item[block5cm3].linkId = "A-I-block-5cm3"
* item[graspSubscale].item[block5cm3].text = "方塊積木, 5 立方公分"
* item[graspSubscale].item[block5cm3].answer.valueInteger = 3
* item[graspSubscale].item[block75cm3].linkId = "A-I-block-7.5cm3"
* item[graspSubscale].item[block75cm3].text = "方塊積木, 7.5 立方公分"
* item[graspSubscale].item[block75cm3].answer.valueInteger = 2
* item[graspSubscale].item[cricketBall].linkId = "A-I-cricket-ball"
* item[graspSubscale].item[cricketBall].text = "板球"
* item[graspSubscale].item[cricketBall].answer.valueInteger = 1
* item[graspSubscale].item[sharpeningStone].linkId = "A-I-sharpening-stone"
* item[graspSubscale].item[sharpeningStone].text = "磨刀石"
* item[graspSubscale].item[sharpeningStone].answer.valueInteger = 1
* item[graspSubscale].item[graspSubscore].linkId = "A-grasp-subscale-subscore"
* item[graspSubscale].item[graspSubscore].text = "A.抓力分數"
* item[graspSubscale].item[graspSubscore].answer.valueInteger = 12

// ============================================
// Section B: 握力分量表 item 2
// ============================================
* item[gripSubscale].linkId = "B-grip-subscale"
* item[gripSubscale].text = "B.握力分量表"
* item[gripSubscale].item[pourWater].linkId = "B-I-pour-water-from-one-glass-to-another"
* item[gripSubscale].item[pourWater].text = "將水從一個杯子倒到另一個杯子"
* item[gripSubscale].item[pourWater].answer.valueInteger = 2
* item[gripSubscale].item[displace225Tube].linkId = "B-I-displace-2.25-cm-alloy-tube-from-one-side-oftable-to-the-other"
* item[gripSubscale].item[displace225Tube].text = "將 2.25 公分合金管從桌子的一側移到另一側"
* item[gripSubscale].item[displace225Tube].answer.valueInteger = 3
* item[gripSubscale].item[displace1Tube].linkId = "B-I-displace-1-cm-alloy-tube-from-one-side-of-table-to-the-other"
* item[gripSubscale].item[displace1Tube].text = "將 1 公分合金管從桌子的一側移到另一側"
* item[gripSubscale].item[displace1Tube].answer.valueInteger = 2
* item[gripSubscale].item[washerBolt].linkId = "B-I-put-washer-over-bolt"
* item[gripSubscale].item[washerBolt].text = "將墊圈放在螺栓上"
* item[gripSubscale].item[washerBolt].answer.valueInteger = 1
* item[gripSubscale].item[gripSubscore].linkId = "B-grip-subscale-subscore"
* item[gripSubscale].item[gripSubscore].text = "B.握力分數"
* item[gripSubscale].item[gripSubscore].answer.valueInteger = 8

// ============================================
// Section C: 捏量表
// ============================================
* item[pinchSubscale].linkId = "C-pinch-subscale"
* item[pinchSubscale].text = "C.捏取分量表"  // 注意：原問卷中此處文字有誤，實際應為捏取分量表
* item[pinchSubscale].item[ballRingThumb].linkId = "C-I-ball-bearing-held-between-ring-finger-and-thumb"
* item[pinchSubscale].item[ballRingThumb].text = "滾珠軸承，握在無名指與大拇指之間"
* item[pinchSubscale].item[ballRingThumb].answer.valueInteger = 1
* item[pinchSubscale].item[marbleIndexThumb].linkId = "C-I-marble-held-between-index-finger-and-thumb"
* item[pinchSubscale].item[marbleIndexThumb].text = "大理石，握在食指與大拇指之間"
* item[pinchSubscale].item[marbleIndexThumb].answer.valueInteger = 2
* item[pinchSubscale].item[ballMiddleThumb].linkId = "C-I-ball-bearing-held-between-middle-finger-and-thumb"
* item[pinchSubscale].item[ballMiddleThumb].text = "滾珠軸承，握在中指與拇指之間"
* item[pinchSubscale].item[ballMiddleThumb].answer.valueInteger = 2
* item[pinchSubscale].item[ballIndexThumb].linkId = "C-I-ball-bearing-held-between-index-finger-and-thumb"
* item[pinchSubscale].item[ballIndexThumb].text = "滾珠軸承，握在食指與拇指之間"
* item[pinchSubscale].item[ballIndexThumb].answer.valueInteger = 3
* item[pinchSubscale].item[marbleRingThumb].linkId = "C-I-marble-held-between-ring-finger-and-thumb"
* item[pinchSubscale].item[marbleRingThumb].text = "大理石，握在無名指和大拇指之間"
* item[pinchSubscale].item[marbleRingThumb].answer.valueInteger = 1
* item[pinchSubscale].item[marbleMiddleThumb].linkId = "C-I-marble-held-between-middle-finger-and-thumb"
* item[pinchSubscale].item[marbleMiddleThumb].text = "大理石，握在中指與大拇指之間"
* item[pinchSubscale].item[marbleMiddleThumb].answer.valueInteger = 2
* item[pinchSubscale].item[pinchSubscore].linkId = "C-pinch-subscale-subscore"
* item[pinchSubscale].item[pinchSubscore].text = "C.捏取分數"
* item[pinchSubscale].item[pinchSubscore].answer.valueInteger = 11

// ============================================
// Section D: 大運動分量表
// ============================================
* item[grossMovementSubscale].linkId = "D-gross-movement-subscale"
* item[grossMovementSubscale].text = "D.粗大動作分量表"  // 注意：原問卷中此處文字有誤，實際應為大運動分量表
* item[grossMovementSubscale].item[handBehindHead].linkId = "D-I-hand-to-behind-the-head"
* item[grossMovementSubscale].item[handBehindHead].text = "手放在腦後"
* item[grossMovementSubscale].item[handBehindHead].answer.valueInteger = 2
* item[grossMovementSubscale].item[handTopHead].linkId = "D-I-hand-to-top-of-head"
* item[grossMovementSubscale].item[handTopHead].text = "手放在頭頂"
* item[grossMovementSubscale].item[handTopHead].answer.valueInteger = 3
* item[grossMovementSubscale].item[handMouth].linkId = "D-I-hand-to-mouth"
* item[grossMovementSubscale].item[handMouth].text = "手到嘴"
* item[grossMovementSubscale].item[handMouth].answer.valueInteger = 3
* item[grossMovementSubscale].item[grossMovementSubscore].linkId = "D-gross-movement-subscale-subscore"
* item[grossMovementSubscale].item[grossMovementSubscore].text = "D.粗大動作分數"
* item[grossMovementSubscale].item[grossMovementSubscore].answer.valueInteger = 8

// ============================================
// Section E: 總分計算 (12+8+11+8 = 39)
// ============================================
* item[totalScoreSection].linkId = "E-total-score-ARAT"
* item[totalScoreSection].text = "E.ARAT總分計算"
* item[totalScoreSection].answer.valueInteger = 39
