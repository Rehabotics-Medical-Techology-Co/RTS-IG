Alias: $snomed = http://snomed.info/sct

// ============================================
// WMFT QuestionnaireResponse Profile
// ============================================
Profile: WMFTQuestionnaireResponse
Parent: SPACQuestionnaireResponse
Id: WMFTQuestionnaireResponse
Title: "WMFT上肢功能評估問卷回覆"
Description: "針對WMFT上肢功能評估問卷的QuestionnaireResponse Profile，強制回傳格式符合問卷結構"

// 固定問卷參考
* questionnaire = "http://example.org/fhir/Questionnaire/WMFTQuestionnaireInstance" (exactly)

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
* item ^slicing.description = "根據linkId區分WMFT問卷的主要區塊"

* item contains
    assessmentSide 1..1 MS and
    TimedJointSegmentMovements 1..1 MS and
    TimedIntegrativeFunctionalMovements 1..1 MS and
    totalScoreSection 1..1 MS

// ============================================
// 評估側別選擇
// ============================================
* item[assessmentSide].linkId = "assessment-side-wmft" (exactly)
* item[assessmentSide].text = "請選擇評估側"
* item[assessmentSide].answer 1..1
* item[assessmentSide].answer.value[x] only Coding
* item[assessmentSide].answer.valueCoding from AssessmentSideValueSet (required)

// ============================================
// Section A：定時關節分段動作評估回覆
// ============================================
* item[TimedJointSegmentMovements].linkId = "A-timed-joint-segment-movements" (exactly)
* item[TimedJointSegmentMovements].text = "A.定時關節分段動作評估"
* item[TimedJointSegmentMovements].item ^slicing.discriminator.type = #value
* item[TimedJointSegmentMovements].item ^slicing.discriminator.path = "linkId"
* item[TimedJointSegmentMovements].item ^slicing.rules = #closed
* item[TimedJointSegmentMovements].item contains
    aForearmToTableSide 1..1 and
    aForearmToBoxSide 1..1 and
    aExtendedElbowSide 1..1 and
    aExtendedElbowToTheSideWith1lbWeight 1..1 and
    aHandToTableFront 1..1 and
    aHandToBoxFront 1..1 and
    sectionASubscore 1..1

// A1. Forearm to table (side)
* item[TimedJointSegmentMovements].item[aForearmToTableSide].linkId = "A-I-forearm-to-table-side" (exactly)
* item[TimedJointSegmentMovements].item[aForearmToTableSide].text = "透過外展肩膀將前臂放在桌子上"
* item[TimedJointSegmentMovements].item[aForearmToTableSide].answer 1..1
* item[TimedJointSegmentMovements].item[aForearmToTableSide].answer.value[x] only integer
* item[TimedJointSegmentMovements].item[aForearmToTableSide].answer.valueInteger ^short = "分數 0-5"
* item[TimedJointSegmentMovements].item[aForearmToTableSide].answer.valueInteger ^minValueInteger = 0
* item[TimedJointSegmentMovements].item[aForearmToTableSide].answer.valueInteger ^maxValueInteger = 5
* item[TimedJointSegmentMovements].item[aForearmToTableSide].extension contains TestTimeExtension named testTimeA1 0..1
* item[TimedJointSegmentMovements].item[aForearmToTableSide].extension ^short = "完成時間（秒）"

// A2. Forearm to box (side)
* item[TimedJointSegmentMovements].item[aForearmToBoxSide].linkId = "A-I-forearm-to-box-side" (exactly)
* item[TimedJointSegmentMovements].item[aForearmToBoxSide].text = "將前臂放在一個 25.4 公分高的箱子上，透過肩部外展"
* item[TimedJointSegmentMovements].item[aForearmToBoxSide].answer 1..1
* item[TimedJointSegmentMovements].item[aForearmToBoxSide].answer.value[x] only integer
* item[TimedJointSegmentMovements].item[aForearmToBoxSide].answer.valueInteger ^short = "分數 0-5"
* item[TimedJointSegmentMovements].item[aForearmToBoxSide].answer.valueInteger ^minValueInteger = 0
* item[TimedJointSegmentMovements].item[aForearmToBoxSide].answer.valueInteger ^maxValueInteger = 5
* item[TimedJointSegmentMovements].item[aForearmToBoxSide].extension contains TestTimeExtension named testTimeA2 0..1
* item[TimedJointSegmentMovements].item[aForearmToBoxSide].extension ^short = "完成時間（秒）"

// A3. Extending elbow (side)
* item[TimedJointSegmentMovements].item[aExtendedElbowSide].linkId = "A-I-extended-elbow-side" (exactly)
* item[TimedJointSegmentMovements].item[aExtendedElbowSide].text = "將手肘伸向一側，越過一張 28 公分長的桌子"
* item[TimedJointSegmentMovements].item[aExtendedElbowSide].answer 1..1
* item[TimedJointSegmentMovements].item[aExtendedElbowSide].answer.value[x] only integer
* item[TimedJointSegmentMovements].item[aExtendedElbowSide].answer.valueInteger ^short = "分數 0-5"
* item[TimedJointSegmentMovements].item[aExtendedElbowSide].answer.valueInteger ^minValueInteger = 0
* item[TimedJointSegmentMovements].item[aExtendedElbowSide].answer.valueInteger ^maxValueInteger = 5
* item[TimedJointSegmentMovements].item[aExtendedElbowSide].extension contains TestTimeExtension named testTimeA3 0..1
* item[TimedJointSegmentMovements].item[aExtendedElbowSide].extension ^short = "完成時間（秒）"

// A4. Extending elbow with weight (side)
* item[TimedJointSegmentMovements].item[aExtendedElbowToTheSideWith1lbWeight].linkId = "A-I-extended-elbow-to-the-side-with-1lb-weight" (exactly)
* item[TimedJointSegmentMovements].item[aExtendedElbowToTheSideWith1lbWeight].text = "透過伸展手肘將重量推向桌子對面的外腕關節"
* item[TimedJointSegmentMovements].item[aExtendedElbowToTheSideWith1lbWeight].answer 1..1
* item[TimedJointSegmentMovements].item[aExtendedElbowToTheSideWith1lbWeight].answer.value[x] only integer
* item[TimedJointSegmentMovements].item[aExtendedElbowToTheSideWith1lbWeight].answer.valueInteger ^short = "分數 0-5"
* item[TimedJointSegmentMovements].item[aExtendedElbowToTheSideWith1lbWeight].answer.valueInteger ^minValueInteger = 0
* item[TimedJointSegmentMovements].item[aExtendedElbowToTheSideWith1lbWeight].answer.valueInteger ^maxValueInteger = 5
* item[TimedJointSegmentMovements].item[aExtendedElbowToTheSideWith1lbWeight].extension contains TestTimeExtension named testTimeA4 0..1
* item[TimedJointSegmentMovements].item[aExtendedElbowToTheSideWith1lbWeight].extension ^short = "完成時間（秒）"

// A5. Hand to table (front)
* item[TimedJointSegmentMovements].item[aHandToTableFront].linkId = "A-I-hand-to-table-front" (exactly)
* item[TimedJointSegmentMovements].item[aHandToTableFront].text = "將手放在桌上"
* item[TimedJointSegmentMovements].item[aHandToTableFront].answer 1..1
* item[TimedJointSegmentMovements].item[aHandToTableFront].answer.value[x] only integer
* item[TimedJointSegmentMovements].item[aHandToTableFront].answer.valueInteger ^short = "分數 0-5"
* item[TimedJointSegmentMovements].item[aHandToTableFront].answer.valueInteger ^minValueInteger = 0
* item[TimedJointSegmentMovements].item[aHandToTableFront].answer.valueInteger ^maxValueInteger = 5
* item[TimedJointSegmentMovements].item[aHandToTableFront].extension contains TestTimeExtension named testTimeA5 0..1
* item[TimedJointSegmentMovements].item[aHandToTableFront].extension ^short = "完成時間（秒）"

// A6. Hand to box (front)
* item[TimedJointSegmentMovements].item[aHandToBoxFront].linkId = "A-I-hand-to-box-front" (exactly)
* item[TimedJointSegmentMovements].item[aHandToBoxFront].text = "將手放在桌面上的盒子上"
* item[TimedJointSegmentMovements].item[aHandToBoxFront].answer 1..1
* item[TimedJointSegmentMovements].item[aHandToBoxFront].answer.value[x] only integer
* item[TimedJointSegmentMovements].item[aHandToBoxFront].answer.valueInteger ^short = "分數 0-5"
* item[TimedJointSegmentMovements].item[aHandToBoxFront].answer.valueInteger ^minValueInteger = 0
* item[TimedJointSegmentMovements].item[aHandToBoxFront].answer.valueInteger ^maxValueInteger = 5
* item[TimedJointSegmentMovements].item[aHandToBoxFront].extension contains TestTimeExtension named testTimeA6 0..1
* item[TimedJointSegmentMovements].item[aHandToBoxFront].extension ^short = "完成時間（秒）"

// A分量表小計（自動計算）
* item[TimedJointSegmentMovements].item[sectionASubscore].linkId = "A-timed-joint-segment-movements-subscore" (exactly)
* item[TimedJointSegmentMovements].item[sectionASubscore].text = "A.定時關節段運動分量表分數"
* item[TimedJointSegmentMovements].item[sectionASubscore].answer 1..1
* item[TimedJointSegmentMovements].item[sectionASubscore].answer.value[x] only integer
* item[TimedJointSegmentMovements].item[sectionASubscore].answer.valueInteger ^short = "分數 0-30"
* item[TimedJointSegmentMovements].item[sectionASubscore].answer.valueInteger ^minValueInteger = 0
* item[TimedJointSegmentMovements].item[sectionASubscore].answer.valueInteger ^maxValueInteger = 30

// ============================================
// Section B：定時整合功能動作評估回覆
// ============================================
* item[TimedIntegrativeFunctionalMovements].linkId = "B-timed-integrative-functional-movements" (exactly)
* item[TimedIntegrativeFunctionalMovements].text = "B.定時整合功能動作評估"
* item[TimedIntegrativeFunctionalMovements].item ^slicing.discriminator.type = #value
* item[TimedIntegrativeFunctionalMovements].item ^slicing.discriminator.path = "linkId"
* item[TimedIntegrativeFunctionalMovements].item ^slicing.rules = #closed
* item[TimedIntegrativeFunctionalMovements].item contains
    bReachAndRetrieveFront 1..1 and
    bLiftCanFront 1..1 and
    bLiftPencilFront 1..1 and
    bPickUpPaperClipFront 1..1 and
    bStackCheckersFront 1..1 and
    bFlip3CardsFront 1..1 and
    bTurningTheKeyInLockFront 1..1 and
    bFoldTowelFront 1..1 and
    bLiftBasketStanding 1..1 and
    sectionBSubscore 1..1

// B1. Reach and retrieve (front)
* item[TimedIntegrativeFunctionalMovements].item[bReachAndRetrieveFront].linkId = "B-I-reach-and-retrieve-front" (exactly)
* item[TimedIntegrativeFunctionalMovements].item[bReachAndRetrieveFront].text = "透過手肘和彎曲手腕將 1 磅重的物體拉過桌子"
* item[TimedIntegrativeFunctionalMovements].item[bReachAndRetrieveFront].answer 1..1
* item[TimedIntegrativeFunctionalMovements].item[bReachAndRetrieveFront].answer.value[x] only integer
* item[TimedIntegrativeFunctionalMovements].item[bReachAndRetrieveFront].answer.valueInteger ^short = "分數 0-5"
* item[TimedIntegrativeFunctionalMovements].item[bReachAndRetrieveFront].answer.valueInteger ^minValueInteger = 0
* item[TimedIntegrativeFunctionalMovements].item[bReachAndRetrieveFront].answer.valueInteger ^maxValueInteger = 5
* item[TimedIntegrativeFunctionalMovements].item[bReachAndRetrieveFront].extension contains TestTimeExtension named testTimeB1 0..1
* item[TimedIntegrativeFunctionalMovements].item[bReachAndRetrieveFront].extension ^short = "完成時間（秒）"

// B2. Lift can (front)
* item[TimedIntegrativeFunctionalMovements].item[bLiftCanFront].linkId = "B-I-lift-can-front" (exactly)
* item[TimedIntegrativeFunctionalMovements].item[bLiftCanFront].text = "舉起一個罐子，並用圓柱形的抓握方式將其靠近嘴唇"
* item[TimedIntegrativeFunctionalMovements].item[bLiftCanFront].answer 1..1
* item[TimedIntegrativeFunctionalMovements].item[bLiftCanFront].answer.value[x] only integer
* item[TimedIntegrativeFunctionalMovements].item[bLiftCanFront].answer.valueInteger ^short = "分數 0-5"
* item[TimedIntegrativeFunctionalMovements].item[bLiftCanFront].answer.valueInteger ^minValueInteger = 0
* item[TimedIntegrativeFunctionalMovements].item[bLiftCanFront].answer.valueInteger ^maxValueInteger = 5
* item[TimedIntegrativeFunctionalMovements].item[bLiftCanFront].extension contains TestTimeExtension named testTimeB2 0..1
* item[TimedIntegrativeFunctionalMovements].item[bLiftCanFront].extension ^short = "完成時間（秒）"

// B3. Lift pencil (front)
* item[TimedIntegrativeFunctionalMovements].item[bLiftPencilFront].linkId = "B-I-lift-pencil-front" (exactly)
* item[TimedIntegrativeFunctionalMovements].item[bLiftPencilFront].text = "使用三爪卡盤抓握來拿起鉛筆"
* item[TimedIntegrativeFunctionalMovements].item[bLiftPencilFront].answer 1..1
* item[TimedIntegrativeFunctionalMovements].item[bLiftPencilFront].answer.value[x] only integer
* item[TimedIntegrativeFunctionalMovements].item[bLiftPencilFront].answer.valueInteger ^short = "分數 0-5"
* item[TimedIntegrativeFunctionalMovements].item[bLiftPencilFront].answer.valueInteger ^minValueInteger = 0
* item[TimedIntegrativeFunctionalMovements].item[bLiftPencilFront].answer.valueInteger ^maxValueInteger = 5
* item[TimedIntegrativeFunctionalMovements].item[bLiftPencilFront].extension contains TestTimeExtension named testTimeB3 0..1
* item[TimedIntegrativeFunctionalMovements].item[bLiftPencilFront].extension ^short = "完成時間（秒）"

// B4. Pick up paper clip (front)
* item[TimedIntegrativeFunctionalMovements].item[bPickUpPaperClipFront].linkId = "B-I-pick-up-paper-clip-front" (exactly)
* item[TimedIntegrativeFunctionalMovements].item[bPickUpPaperClipFront].text = "用鉗子抓取回形針"
* item[TimedIntegrativeFunctionalMovements].item[bPickUpPaperClipFront].answer 1..1
* item[TimedIntegrativeFunctionalMovements].item[bPickUpPaperClipFront].answer.value[x] only integer
* item[TimedIntegrativeFunctionalMovements].item[bPickUpPaperClipFront].answer.valueInteger ^short = "分數 0-5"
* item[TimedIntegrativeFunctionalMovements].item[bPickUpPaperClipFront].answer.valueInteger ^minValueInteger = 0
* item[TimedIntegrativeFunctionalMovements].item[bPickUpPaperClipFront].answer.valueInteger ^maxValueInteger = 5
* item[TimedIntegrativeFunctionalMovements].item[bPickUpPaperClipFront].extension contains TestTimeExtension named testTimeB4 0..1
* item[TimedIntegrativeFunctionalMovements].item[bPickUpPaperClipFront].extension ^short = "完成時間（秒）"

// B5. Stack checkers (front)
* item[TimedIntegrativeFunctionalMovements].item[bStackCheckersFront].linkId = "B-I-stack-checkers-front" (exactly)
* item[TimedIntegrativeFunctionalMovements].item[bStackCheckersFront].text = "將棋子堆疊到中心棋子上"
* item[TimedIntegrativeFunctionalMovements].item[bStackCheckersFront].answer 1..1
* item[TimedIntegrativeFunctionalMovements].item[bStackCheckersFront].answer.value[x] only integer
* item[TimedIntegrativeFunctionalMovements].item[bStackCheckersFront].answer.valueInteger ^short = "分數 0-5"
* item[TimedIntegrativeFunctionalMovements].item[bStackCheckersFront].answer.valueInteger ^minValueInteger = 0
* item[TimedIntegrativeFunctionalMovements].item[bStackCheckersFront].answer.valueInteger ^maxValueInteger = 5
* item[TimedIntegrativeFunctionalMovements].item[bStackCheckersFront].extension contains TestTimeExtension named testTimeB5 0..1
* item[TimedIntegrativeFunctionalMovements].item[bStackCheckersFront].extension ^short = "完成時間（秒）"

// B6. Flip 3 cards (front)
* item[TimedIntegrativeFunctionalMovements].item[bFlip3CardsFront].linkId = "B-I-flip-3-cards-front" (exactly)
* item[TimedIntegrativeFunctionalMovements].item[bFlip3CardsFront].text = "用鉗子抓握，客戶嘗試翻轉每張卡片"
* item[TimedIntegrativeFunctionalMovements].item[bFlip3CardsFront].answer 1..1
* item[TimedIntegrativeFunctionalMovements].item[bFlip3CardsFront].answer.value[x] only integer
* item[TimedIntegrativeFunctionalMovements].item[bFlip3CardsFront].answer.valueInteger ^short = "分數 0-5"
* item[TimedIntegrativeFunctionalMovements].item[bFlip3CardsFront].answer.valueInteger ^minValueInteger = 0
* item[TimedIntegrativeFunctionalMovements].item[bFlip3CardsFront].answer.valueInteger ^maxValueInteger = 5
* item[TimedIntegrativeFunctionalMovements].item[bFlip3CardsFront].extension contains TestTimeExtension named testTimeB6 0..1
* item[TimedIntegrativeFunctionalMovements].item[bFlip3CardsFront].extension ^short = "完成時間（秒）"

// B7. Turning the key in lock (front)
* item[TimedIntegrativeFunctionalMovements].item[bTurningTheKeyInLockFront].linkId = "B-I-turning-the-key-in-lock-front" (exactly)
* item[TimedIntegrativeFunctionalMovements].item[bTurningTheKeyInLockFront].text = "使用鉗子抓握並保持接觸，將鑰匙向左和向右旋轉 180 度"
* item[TimedIntegrativeFunctionalMovements].item[bTurningTheKeyInLockFront].answer 1..1
* item[TimedIntegrativeFunctionalMovements].item[bTurningTheKeyInLockFront].answer.value[x] only integer
* item[TimedIntegrativeFunctionalMovements].item[bTurningTheKeyInLockFront].answer.valueInteger ^short = "分數 0-5"
* item[TimedIntegrativeFunctionalMovements].item[bTurningTheKeyInLockFront].answer.valueInteger ^minValueInteger = 0
* item[TimedIntegrativeFunctionalMovements].item[bTurningTheKeyInLockFront].answer.valueInteger ^maxValueInteger = 5
* item[TimedIntegrativeFunctionalMovements].item[bTurningTheKeyInLockFront].extension contains TestTimeExtension named testTimeB7 0..1
* item[TimedIntegrativeFunctionalMovements].item[bTurningTheKeyInLockFront].extension ^short = "完成時間（秒）"

// B8. Fold towel (front)
* item[TimedIntegrativeFunctionalMovements].item[bFoldTowelFront].linkId = "B-I-fold-towel-front" (exactly)
* item[TimedIntegrativeFunctionalMovements].item[bFoldTowelFront].text = "抓住毛巾，縱向折疊，然後用被測試的手將毛巾再次對折"
* item[TimedIntegrativeFunctionalMovements].item[bFoldTowelFront].answer 1..1
* item[TimedIntegrativeFunctionalMovements].item[bFoldTowelFront].answer.value[x] only integer
* item[TimedIntegrativeFunctionalMovements].item[bFoldTowelFront].answer.valueInteger ^short = "分數 0-5"
* item[TimedIntegrativeFunctionalMovements].item[bFoldTowelFront].answer.valueInteger ^minValueInteger = 0
* item[TimedIntegrativeFunctionalMovements].item[bFoldTowelFront].answer.valueInteger ^maxValueInteger = 5
* item[TimedIntegrativeFunctionalMovements].item[bFoldTowelFront].extension contains TestTimeExtension named testTimeB8 0..1
* item[TimedIntegrativeFunctionalMovements].item[bFoldTowelFront].extension ^short = "完成時間（秒）"

// B9. Lift basket (standing)
* item[TimedIntegrativeFunctionalMovements].item[bLiftBasketStanding].linkId = "B-I-lift-basket-standing" (exactly)
* item[TimedIntegrativeFunctionalMovements].item[bLiftBasketStanding].text = "提起一個椅子上 3 磅重的籃子，並將其放在床頭櫃上"
* item[TimedIntegrativeFunctionalMovements].item[bLiftBasketStanding].answer 1..1
* item[TimedIntegrativeFunctionalMovements].item[bLiftBasketStanding].answer.value[x] only integer
* item[TimedIntegrativeFunctionalMovements].item[bLiftBasketStanding].answer.valueInteger ^short = "分數 0-5"
* item[TimedIntegrativeFunctionalMovements].item[bLiftBasketStanding].answer.valueInteger ^minValueInteger = 0
* item[TimedIntegrativeFunctionalMovements].item[bLiftBasketStanding].answer.valueInteger ^maxValueInteger = 5
* item[TimedIntegrativeFunctionalMovements].item[bLiftBasketStanding].extension contains TestTimeExtension named testTimeB9 0..1
* item[TimedIntegrativeFunctionalMovements].item[bLiftBasketStanding].extension ^short = "完成時間（秒）"

// B 分量表分數顯示（自動計算）
* item[TimedIntegrativeFunctionalMovements].item[sectionBSubscore].linkId = "B-timed-integrative-functional-movements-subscore" (exactly)
* item[TimedIntegrativeFunctionalMovements].item[sectionBSubscore].text = "B.定時關節段運動分量表分數"
* item[TimedIntegrativeFunctionalMovements].item[sectionBSubscore].answer 1..1
* item[TimedIntegrativeFunctionalMovements].item[sectionBSubscore].answer.value[x] only integer
* item[TimedIntegrativeFunctionalMovements].item[sectionBSubscore].answer.valueInteger ^short = "分數 0-45"
* item[TimedIntegrativeFunctionalMovements].item[sectionBSubscore].answer.valueInteger ^minValueInteger = 0
* item[TimedIntegrativeFunctionalMovements].item[sectionBSubscore].answer.valueInteger ^maxValueInteger = 45

// ============================================
// Section C：總分計算
// ============================================
* item[totalScoreSection].linkId = "C-total-score-WMFT" (exactly)
* item[totalScoreSection].text = "C.WMFT總分計算"
* item[totalScoreSection].answer 1..1
* item[totalScoreSection].answer.value[x] only integer
* item[totalScoreSection].answer.valueInteger ^short = "分數 0-75"
* item[totalScoreSection].answer.valueInteger ^minValueInteger = 0
* item[totalScoreSection].answer.valueInteger ^maxValueInteger = 75