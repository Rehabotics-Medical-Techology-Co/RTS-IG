Alias: $snomed = http://snomed.info/sct

// WMFT 上肢功能評估問卷回覆 FSH
// ============================================
Instance: WMFTQuestionnaireResponseExample
InstanceOf: WMFTQuestionnaireResponse
Usage: #example
Title: "WMFT上肢功能評估問卷回覆範例"
Description: "針對 WMFT 上肢功能評估問卷的完整回覆範例，展示右側上肢功能評估結果，包含功能評分與完成時間記錄"

* questionnaire = "http://example.org/fhir/Questionnaire/WMFTQuestionnaireInstance"
* status = #completed
* subject = Reference(Patient/PatientPACExample)
* authored = "2025-10-06T13:30:00+08:00"

// ============================================
// 評估側別選擇
// ============================================
* item[assessmentSide].linkId = "assessment-side-wmft"
* item[assessmentSide].text = "請選擇評估側"
* item[assessmentSide].answer.valueCoding.code = $snomed#24028007 "患者右側"

// ============================================
// Section A：定時關節分段動作評估回覆
// ============================================
* item[TimedJointSegmentMovements].linkId = "A-timed-joint-segment-movements"
* item[TimedJointSegmentMovements].text = "A.定時關節分段動作評估"

// A1. Forearm to table (side)
* item[TimedJointSegmentMovements].item[aForearmToTableSide].linkId = "A-I-forearm-to-table-side"
* item[TimedJointSegmentMovements].item[aForearmToTableSide].text = "透過外展肩膀將前臂放在桌子上"
* item[TimedJointSegmentMovements].item[aForearmToTableSide].answer.valueInteger = 4
* item[TimedJointSegmentMovements].item[aForearmToTableSide].extension[testTimeA1].valueDecimal = 7.2

// A2. Forearm to box (side)
* item[TimedJointSegmentMovements].item[aForearmToBoxSide].linkId = "A-I-forearm-to-box-side"
* item[TimedJointSegmentMovements].item[aForearmToBoxSide].text = "將前臂放在一個 25.4 公分高的箱子上，透過肩部外展"
* item[TimedJointSegmentMovements].item[aForearmToBoxSide].answer.valueInteger = 3
* item[TimedJointSegmentMovements].item[aForearmToBoxSide].extension[testTimeA2].valueDecimal = 12.5

// A3. Extending elbow (side)
* item[TimedJointSegmentMovements].item[aExtendedElbowSide].linkId = "A-I-extended-elbow-side"
* item[TimedJointSegmentMovements].item[aExtendedElbowSide].text = "將手肘伸向一側，越過一張 28 公分長的桌子"
* item[TimedJointSegmentMovements].item[aExtendedElbowSide].answer.valueInteger = 4
* item[TimedJointSegmentMovements].item[aExtendedElbowSide].extension[testTimeA3].valueDecimal = 5.7

// A4. Extending elbow with weight (side)
* item[TimedJointSegmentMovements].item[aExtendedElbowToTheSideWith1lbWeight].linkId = "A-I-extended-elbow-to-the-side-with-1lb-weight"
* item[TimedJointSegmentMovements].item[aExtendedElbowToTheSideWith1lbWeight].text = "透過伸展手肘將重量推向桌子對面的外腕關節"
* item[TimedJointSegmentMovements].item[aExtendedElbowToTheSideWith1lbWeight].answer.valueInteger = 2
* item[TimedJointSegmentMovements].item[aExtendedElbowToTheSideWith1lbWeight].extension[testTimeA4].valueDecimal = 17.3

// A5. Hand to table (front)
* item[TimedJointSegmentMovements].item[aHandToTableFront].linkId = "A-I-hand-to-table-front"
* item[TimedJointSegmentMovements].item[aHandToTableFront].text = "將手放在桌上"
* item[TimedJointSegmentMovements].item[aHandToTableFront].answer.valueInteger = 5
* item[TimedJointSegmentMovements].item[aHandToTableFront].extension[testTimeA5].valueDecimal = 3.2

// A6. Hand to box (front)
* item[TimedJointSegmentMovements].item[aHandToBoxFront].linkId = "A-I-hand-to-box-front"
* item[TimedJointSegmentMovements].item[aHandToBoxFront].text = "將手放在桌面上的盒子上"
* item[TimedJointSegmentMovements].item[aHandToBoxFront].answer.valueInteger = 5
* item[TimedJointSegmentMovements].item[aHandToBoxFront].extension[testTimeA6].valueDecimal = 4.0

// A 分量表分數（自動計算結果）
* item[TimedJointSegmentMovements].item[sectionASubscore].linkId = "A-timed-joint-segment-movements-subscore"
* item[TimedJointSegmentMovements].item[sectionASubscore].text = "A.定時關節段運動分量表分數"
* item[TimedJointSegmentMovements].item[sectionASubscore].answer.valueInteger = 21

// ============================================
// Section B：定時整合功能動作評估回覆
// ============================================
* item[TimedIntegrativeFunctionalMovements].linkId = "B-timed-integrative-functional-movements"
* item[TimedIntegrativeFunctionalMovements].text = "B.定時整合功能動作評估"

// B1. Reach and retrieve (front)
* item[TimedIntegrativeFunctionalMovements].item[bReachAndRetrieveFront].linkId = "B-I-reach-and-retrieve-front"
* item[TimedIntegrativeFunctionalMovements].item[bReachAndRetrieveFront].text = "透過手肘和彎曲手腕將 1 磅重的物體拉過桌子"
* item[TimedIntegrativeFunctionalMovements].item[bReachAndRetrieveFront].answer.valueInteger = 3
* item[TimedIntegrativeFunctionalMovements].item[bReachAndRetrieveFront].extension[testTimeB1].valueDecimal = 4.0


// B2. Lift can (front)
* item[TimedIntegrativeFunctionalMovements].item[bLiftCanFront].linkId = "B-I-lift-can-front"
* item[TimedIntegrativeFunctionalMovements].item[bLiftCanFront].text = "舉起一個罐子，並用圓柱形的抓握方式將其靠近嘴唇"
* item[TimedIntegrativeFunctionalMovements].item[bLiftCanFront].answer.valueInteger = 2
* item[TimedIntegrativeFunctionalMovements].item[bLiftCanFront].extension[testTimeB2].valueDecimal = 4.0

// B3. Lift pencil (front)
* item[TimedIntegrativeFunctionalMovements].item[bLiftPencilFront].linkId = "B-I-lift-pencil-front"
* item[TimedIntegrativeFunctionalMovements].item[bLiftPencilFront].text = "使用三爪卡盤抓握來拿起鉛筆"
* item[TimedIntegrativeFunctionalMovements].item[bLiftPencilFront].answer.valueInteger = 2
* item[TimedIntegrativeFunctionalMovements].item[bLiftPencilFront].extension[testTimeB3].valueDecimal = 4.0

// B4. Pick up paper clip (front)
* item[TimedIntegrativeFunctionalMovements].item[bPickUpPaperClipFront].linkId = "B-I-pick-up-paper-clip-front"
* item[TimedIntegrativeFunctionalMovements].item[bPickUpPaperClipFront].text = "用鉗子抓取回形針"
* item[TimedIntegrativeFunctionalMovements].item[bPickUpPaperClipFront].answer.valueInteger = 1
* item[TimedIntegrativeFunctionalMovements].item[bPickUpPaperClipFront].extension[testTimeB4].valueDecimal = 4.0

// B5. Stack checkers (front)
* item[TimedIntegrativeFunctionalMovements].item[bStackCheckersFront].linkId = "B-I-stack-checkers-front"
* item[TimedIntegrativeFunctionalMovements].item[bStackCheckersFront].text = "將棋子堆疊到中心棋子上"
* item[TimedIntegrativeFunctionalMovements].item[bStackCheckersFront].answer.valueInteger = 2
* item[TimedIntegrativeFunctionalMovements].item[bStackCheckersFront].extension[testTimeB5].valueDecimal = 4.0

// B6. Flip 3 cards (front)
* item[TimedIntegrativeFunctionalMovements].item[bFlip3CardsFront].linkId = "B-I-flip-3-cards-front"
* item[TimedIntegrativeFunctionalMovements].item[bFlip3CardsFront].text = "用鉗子抓握，客戶嘗試翻轉每張卡片"
* item[TimedIntegrativeFunctionalMovements].item[bFlip3CardsFront].answer.valueInteger = 2
* item[TimedIntegrativeFunctionalMovements].item[bFlip3CardsFront].extension[testTimeB6].valueDecimal = 4.0

// B7. Turning the key in lock (front)
* item[TimedIntegrativeFunctionalMovements].item[bTurningTheKeyInLockFront].linkId = "B-I-turning-the-key-in-lock-front"
* item[TimedIntegrativeFunctionalMovements].item[bTurningTheKeyInLockFront].text = "使用鉗子抓握並保持接觸，將鑰匙向左和向右旋轉 180 度"
* item[TimedIntegrativeFunctionalMovements].item[bTurningTheKeyInLockFront].answer.valueInteger = 1
* item[TimedIntegrativeFunctionalMovements].item[bTurningTheKeyInLockFront].extension[testTimeB7].valueDecimal = 4.0

// B8. Fold towel (front)
* item[TimedIntegrativeFunctionalMovements].item[bFoldTowelFront].linkId = "B-I-fold-towel-front"
* item[TimedIntegrativeFunctionalMovements].item[bFoldTowelFront].text = "抓住毛巾，縱向折疊，然後用被測試的手將毛巾再次對折"
* item[TimedIntegrativeFunctionalMovements].item[bFoldTowelFront].answer.valueInteger = 3
* item[TimedIntegrativeFunctionalMovements].item[bFoldTowelFront].extension[testTimeB8].valueDecimal = 4.0

// B9. Lift basket (standing)
* item[TimedIntegrativeFunctionalMovements].item[bLiftBasketStanding].linkId = "B-I-lift-basket-standing"
* item[TimedIntegrativeFunctionalMovements].item[bLiftBasketStanding].text = "提起一個椅子上 3 磅重的籃子，並將其放在床頭櫃上"
* item[TimedIntegrativeFunctionalMovements].item[bLiftBasketStanding].answer.valueInteger = 4
* item[TimedIntegrativeFunctionalMovements].item[bLiftBasketStanding].extension[testTimeB9].valueDecimal = 4.0

// B 分量表分數顯示（自動計算）
* item[TimedIntegrativeFunctionalMovements].item[sectionBSubscore].linkId = "B-timed-integrative-functional-movements-subscore"
* item[TimedIntegrativeFunctionalMovements].item[sectionBSubscore].text = "B.定時關節段運動分量表分數"
* item[TimedIntegrativeFunctionalMovements].item[sectionBSubscore].answer.valueInteger = 21

// ============================================
// Section C：WMFT 總分計算（自動計算結果）
// ============================================
* item[totalScoreSection].linkId = "C-total-score-WMFT"
* item[totalScoreSection].text = "C.WMFT總分計算"
* item[totalScoreSection].answer.valueInteger = 39