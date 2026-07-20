Alias: $snomed = http://snomed.info/sct

// WMFT 上肢功能評估問卷回覆 FSH
// ============================================
Instance: WMFTQuestionnaireResponseExample
InstanceOf: WMFTQuestionnaireResponse
Usage: #example
Title: "WMFT上肢功能評估問卷回覆範例"
Description: "針對 WMFT 上肢功能評估問卷的完整回覆範例，展示右側上肢功能評估結果，包含功能評分與完成時間記錄"

* questionnaire = Canonical(WMFTQuestionnaireInstance)
* status = #completed
* subject = Reference(PatientExample)
* authored = "2025-10-06T13:30:00+08:00"

// ============================================
// 評估側別選擇
// ============================================
* item[assessmentSide].linkId = "assessment-side-wmft"
* item[assessmentSide].text = "請選擇評估側"
* item[assessmentSide].answer.valueCoding = $snomed#24028007 "Right"

// ============================================
// Section A：定時關節分段動作評估回覆
// ============================================
* item[TimedJointSegmentMovements].linkId = "A-timed-joint-segment-movements"
* item[TimedJointSegmentMovements].item[forearmTable].linkId = "A-I-forearm-to-table-side" //A1
* item[TimedJointSegmentMovements].item[forearmTable].answer[0].valueInteger = 4
* item[TimedJointSegmentMovements].item[forearmBox].linkId = "A-I-forearm-to-box-side" //A2
* item[TimedJointSegmentMovements].item[forearmBox].answer[0].valueInteger = 3
* item[TimedJointSegmentMovements].item[extendedElbow].linkId = "A-I-extended-elbow-side" //A3
* item[TimedJointSegmentMovements].item[extendedElbow].answer[0].valueInteger = 4 
* item[TimedJointSegmentMovements].item[extendedElbowWeight].linkId = "A-I-extended-elbow-to-the-side-with-1lb-weight" //A4
* item[TimedJointSegmentMovements].item[extendedElbowWeight].answer[0].valueInteger = 2 
* item[TimedJointSegmentMovements].item[handTable].linkId = "A-I-hand-to-table-front" //A5
* item[TimedJointSegmentMovements].item[handTable].answer[0].valueInteger = 5 
* item[TimedJointSegmentMovements].item[handBox].linkId = "A-I-hand-to-box-front"
* item[TimedJointSegmentMovements].item[handBox].answer[0].valueInteger = 5 
* item[TimedJointSegmentMovements].item[timedJointSubscore].linkId = "A-timed-joint-segment-movements-subscore"
* item[TimedJointSegmentMovements].item[timedJointSubscore].answer[0].valueInteger = 21

// ============================================
// Section B：定時整合功能動作評估回覆
// ============================================
* item[TimedIntegrativeFunctionalMovements].linkId = "B-timed-integrative-functional-movements"
* item[TimedIntegrativeFunctionalMovements].item[reachRetrieve].linkId = "B-I-reach-and-retrieve-front"
* item[TimedIntegrativeFunctionalMovements].item[reachRetrieve].answer[0].valueInteger = 3
* item[TimedIntegrativeFunctionalMovements].item[liftCan].linkId = "B-I-lift-can-front"
* item[TimedIntegrativeFunctionalMovements].item[liftCan].answer[0].valueInteger = 2
* item[TimedIntegrativeFunctionalMovements].item[liftPencil].linkId = "B-I-lift-pencil-front"
* item[TimedIntegrativeFunctionalMovements].item[liftPencil].answer[0].valueInteger = 2
* item[TimedIntegrativeFunctionalMovements].item[paperClip].linkId = "B-I-pick-up-paper-clip-front"
* item[TimedIntegrativeFunctionalMovements].item[paperClip].answer[0].valueInteger = 1
* item[TimedIntegrativeFunctionalMovements].item[stackCheckers].linkId = "B-I-stack-checkers-front"
* item[TimedIntegrativeFunctionalMovements].item[stackCheckers].answer[0].valueInteger = 2
* item[TimedIntegrativeFunctionalMovements].item[flipCards].linkId = "B-I-flip-3-cards-front"
* item[TimedIntegrativeFunctionalMovements].item[flipCards].answer[0].valueInteger = 2
* item[TimedIntegrativeFunctionalMovements].item[turnKey].linkId = "B-I-turning-the-key-in-lock-front"
* item[TimedIntegrativeFunctionalMovements].item[turnKey].answer[0].valueInteger = 1
* item[TimedIntegrativeFunctionalMovements].item[foldTowel].linkId = "B-I-fold-towel-front"
* item[TimedIntegrativeFunctionalMovements].item[foldTowel].answer[0].valueInteger = 3
* item[TimedIntegrativeFunctionalMovements].item[liftBasket].linkId = "B-I-lift-basket-standing"
* item[TimedIntegrativeFunctionalMovements].item[liftBasket].answer[0].valueInteger = 4
* item[TimedIntegrativeFunctionalMovements].item[timedFunctionalSubscore].linkId = "B-timed-integrative-functional-movements-subscore"
* item[TimedIntegrativeFunctionalMovements].item[timedFunctionalSubscore].answer[0].valueInteger = 21

// ============================================
// Section C：WMFT 總分計算（自動計算結果）
// ============================================
* item[totalScoreSection].linkId = "C-total-score-WMFT"
* item[totalScoreSection].answer.valueInteger = 39
