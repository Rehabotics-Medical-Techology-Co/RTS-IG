Instance: REACHQuestionnaireResponseExample
InstanceOf: SPACQuestionnaireResponse
Usage: #example
Title: "Rating of Everyday Arm-use in the Community and at Home (REACH) 評估量表問卷回覆範例"
Description: "REACH 評估量表問卷回覆範例"
* questionnaire = Canonical(REACHQuestionnaireInstance) //使用哪個問卷
* status = #completed
* subject = Reference(stroke-patient-001) 
* authored = "2025-11-10"
// ====評估側: 右手====
* item[0].linkId = "reach-side"
* item[=].text = "請選擇評估側"
* item[=].answer[0].valueCoding = $snomed#24028007
* item[=].answer[0].valueCoding.display = "Right"
// ====評估側: 右手====
* item[+].linkId = "reach-right"
* item[=].text = "右上肢 REACH 評分"
* item[=].answer[0].valueCoding = CSReach#4
// ====左手評估 (未啟用)====

// * item[+].linkId = "reach-left"
// * item[=].text = "左上肢 REACH 評分"
