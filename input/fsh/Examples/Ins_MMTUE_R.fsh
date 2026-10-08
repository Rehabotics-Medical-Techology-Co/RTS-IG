// ============================================
// MMT for UE QuestionnaireResponse 實例範例
// ============================================
Instance: MMTUEQuestionnaireResponseExample
InstanceOf: MMTUEQuestionnaireResponse
Usage: #example
Title: "MMT for UE問卷回覆範例"
Description: "一位中風患者進行上肢徒手肌力檢查（MMT for UE）的完整問卷回覆範例，包含評估側與八個上肢動作的數字分級。"

* id = "mmt-ue-response-example-001"
* questionnaire = Canonical(MMTUEQuestionnaireInstance)
* status = #completed
* subject = Reference(stroke-patient-001) "王小姐"
* authored = "2025-10-11T15:00:00+08:00"
* author = Reference(ot-therapist-001) "復健治療師 - 李小姐"

// ============================================
// 評估側別
// ============================================
* item[assessmentSide].linkId = "assessment-side-mmt-ue"
* item[assessmentSide].text = "患側手"
* item[assessmentSide].answer.valueCoding = http://snomed.info/sct#24028007 "Right"

// ============================================
// MMT for UE
// ============================================
* item[mmtUESection].linkId = "mmt-ue"
* item[mmtUESection].text = "徒手肌力檢查 Manual Muscle Test; MMT for UE"

// 肩膀外展 = 4
* item[mmtUESection].item[0].linkId = "mmt-shoulder-abduction"
* item[mmtUESection].item[0].text = "肩膀外展"
* item[mmtUESection].item[0].answer.valueInteger = 4

// 肩膀內收 = 3
* item[mmtUESection].item[1].linkId = "mmt-shoulder-adduction"
* item[mmtUESection].item[1].text = "肩膀內收"
* item[mmtUESection].item[1].answer.valueInteger = 3

// 手肘屈曲 = 5
* item[mmtUESection].item[2].linkId = "mmt-elbow-flexion"
* item[mmtUESection].item[2].text = "手肘屈曲"
* item[mmtUESection].item[2].answer.valueInteger = 5

// 手肘伸直 = 4
* item[mmtUESection].item[3].linkId = "mmt-elbow-extension"
* item[mmtUESection].item[3].text = "手肘伸直"
* item[mmtUESection].item[3].answer.valueInteger = 4

// 手腕屈曲 = 3
* item[mmtUESection].item[4].linkId = "mmt-wrist-flexion"
* item[mmtUESection].item[4].text = "手腕屈曲"
* item[mmtUESection].item[4].answer.valueInteger = 3

// 手腕伸直 = 3
* item[mmtUESection].item[5].linkId = "mmt-wrist-extension"
* item[mmtUESection].item[5].text = "手腕伸直"
* item[mmtUESection].item[5].answer.valueInteger = 3

// 手指屈曲 = 2
* item[mmtUESection].item[6].linkId = "mmt-finger-flexion"
* item[mmtUESection].item[6].text = "手指屈曲"
* item[mmtUESection].item[6].answer.valueInteger = 2

// 手指伸直 = 2
* item[mmtUESection].item[7].linkId = "mmt-finger-extension"
* item[mmtUESection].item[7].text = "手指伸直"
* item[mmtUESection].item[7].answer.valueInteger = 2
