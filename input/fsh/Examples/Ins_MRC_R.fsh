Instance: MRCQuestionnaireResponseExample
InstanceOf: MRCQuestionnaireResponse
Usage: #example

* status = #completed
* questionnaire = Canonical(MRCQuestionnaireInstance)
* subject = Reference(Patient/stroke-patient-001) "張先生"
* authored = "2025-10-11T14:30:00+08:00"
* author = Reference(Practitioner/ot-therapist-001) "復健治療師 - 李小姐"
// ============================================
// 評估部位分數
// ============================================
* item[abduction-arm].linkId = "abduction-arm"
* item[abduction-arm].answer.valueInteger = 0
* item[flexion-forearm].linkId = "flexion-forearm"
* item[flexion-forearm].answer.valueInteger = 2
* item[extension-wrist].linkId = "extension-wrist"
* item[extension-wrist].answer.valueInteger = 4
