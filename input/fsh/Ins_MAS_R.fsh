Instance: MASQuestionnaireResponseExample
InstanceOf: MASQuestionnaireResponse
Usage: #example
* status = #completed
* subject = Reference(Patient/stroke-patient-001) "張先生"
* authored = "2025-10-21T14:30:00+08:00"
* author = Reference(Practitioner/ot-therapist-001) "復健治療師 - 李小姐"

// 左側肩
* item[left-shoulder].linkId = "left-shoulder"
* item[left-shoulder].answer[0].valueCoding = #0

// 左側手腕
* item[left-wrist].linkId = "left-wrist"
* item[left-wrist].answer[0].valueCoding = #1

// 左手
* item[left-hand].linkId = "left-hand"
* item[left-hand].answer[0].valueCoding = #1+

// 右側肩
* item[right-shoulder].linkId = "right-shoulder"
* item[right-shoulder].answer[0].valueCoding = #2

// 右側手腕
* item[right-wrist].linkId = "right-wrist"
* item[right-wrist].answer[0].valueCoding = #3

// 右手
* item[right-hand].linkId = "right-hand"
* item[right-hand].answer[0].valueCoding = #4
