Alias: $loinc = http://loinc.org
Instance: MIULQuestionnaireResponseExample
InstanceOf: SPACQuestionnaireResponse
Usage: #example
Title: "MIUL 問卷回覆範例"
Description: "完整的MI-UL 上肢運動功能評估量表問卷回覆範例"
* status = #completed
* questionnaire = Canonical(MIULQuuestionnaireInstance) (exactly)
* authored = "2025-11-12"
* subject = Reference(Patient/stroke-patient-001)
//問卷實際內容
// 1. 抓握能力
* item[0].linkId = "pinch-grasp"
* item[=].text = "抓握能力"
* item[=].answer[0].valueInteger = 20

// 2. 肘部屈曲
* item[+].linkId = "elbow-flexion"
* item[=].text = "肘部屈曲"
* item[=].answer[0].valueInteger = 15
// 3. 肩膀
* item[+].linkId = "shoulder-abduction"
* item[=].text = "肩外展"
* item[=].answer[0].valueInteger = 30

// 總分
* item[+].linkId = "total-score-miul"
* item[=].text = "總分"
* item[=].answer[0].valueInteger = 65
