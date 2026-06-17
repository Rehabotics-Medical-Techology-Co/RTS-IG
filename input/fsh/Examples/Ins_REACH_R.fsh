Instance: REACHQuestionnaireResponseExample
InstanceOf: ReachQuestionnaireResponse
Usage: #example
Title: "Rating of Everyday Arm-use in the Community and at Home (REACH) 評估量表問卷回覆範例"
Description: "REACH 評估量表問卷回覆範例"
* questionnaire = Canonical(REACHQuestionnaireInstance) //使用哪個問卷
* status = #completed
* subject = Reference(stroke-patient-001) 
* authored = "2025-11-10"
// ====評估側: 右手====
* item[reach-side].linkId = "reach-side"
* item[reach-side].text = "請選擇評估側"
* item[reach-side].answer[0].valueCoding = $snomed#24028007
* item[reach-side].answer[0].valueCoding.display = "Right"
// ====評估側: 右手====
* item[reach-right].linkId = "reach-right"
* item[reach-right].text = "右上肢 REACH 評分"
* item[reach-right].answer[0].valueCoding = CSReach#4
// ====左手評估 (未啟用)====

// * item[reach-left].linkId = "reach-left"
// * item[reach-left].text = "左上肢 REACH 評分"
