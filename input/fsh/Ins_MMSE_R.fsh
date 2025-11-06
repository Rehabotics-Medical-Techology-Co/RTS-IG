Instance: MMSEQuestionnaireResponseExample
InstanceOf: MMSEQuestionnaireResponse
Usage: #example
* status = #completed
* questionnaire = Canonical(MMSEQuestionnaireInstance)
* subject = Reference(Patient/stroke-patient-001) "張先生"
* authored = "2025-10-11T14:30:00+08:00"
* author = Reference(Practitioner/ot-therapist-001) "復健治療師 - 李小姐"
// section 1 答案
* item[0].linkId = "section-a-time" //看codebook
* item[0].item[0].linkId = "a-1-year"
* item[0].item[0].answer[0].valueInteger = 0
* item[0].item[+].linkId = "a-2-month"
* item[0].item[=].answer[0].valueInteger = 1
* item[0].item[+].linkId = "a-3-date"
* item[0].item[=].answer[0].valueInteger = 1
* item[0].item[+].linkId = "a-4-week"
* item[0].item[=].answer[0].valueInteger = 0
* item[0].item[+].linkId = "a-5-season"
* item[0].item[=].answer[0].valueInteger = 1
// section 2 答案
* item[+].linkId = "section-b-place"
* item[=].item[0].linkId = "b-1-city"
* item[=].item[0].answer[0].valueInteger = 0
* item[=].item[+].linkId = "b-2-loc"
* item[=].item[=].answer[0].valueInteger = 1
* item[=].item[+].linkId = "b-3-hos"
* item[=].item[=].answer[0].valueInteger = 1
* item[=].item[+].linkId = "b-4-floor"
* item[=].item[=].answer[0].valueInteger = 0
* item[=].item[+].linkId = "b-5-number"
* item[=].item[=].answer[0].valueInteger = 1
// section 3 答案
* item[+].linkId = "section-c-memory"
* item[=].item[0].linkId = "c-item"
* item[=].item[=].answer[0].valueInteger = 3
// section 4 答案
* item[+].linkId = "section-d-language"
* item[=].item[0].linkId = "d-cal"
* item[=].item[=].answer[0].valueInteger = 4
// section 5 答案
* item[+].linkId = "section-e-oral"
* item[=].item[0].linkId = "e-1-rep"
* item[=].item[=].answer.valueInteger = 2
* item[=].item[+].linkId = "e-2-stuff"
* item[=].item[=].answer[0].valueInteger = 2
* item[=].item[+].linkId = "e-3-phrase"
* item[=].item[=].answer[0].valueInteger = 1
* item[=].item[+].linkId = "e-4-fold"
* item[=].item[=].answer[0].valueInteger = 2
* item[=].item[+].linkId = "e-5-sen"
* item[=].item[=].answer[0].valueInteger = 0
// section 6 答案
* item[+].linkId = "section-f-build"
* item[=].item[0].linkId = "f-1-paper"
* item[=].item[0].answer[0].valueInteger = 1
* item[=].item[+].linkId = "f-2-draw"
* item[=].item[=].answer[0].valueInteger = 0
// 總分計算

* item[total-score].linkId = "total-score-mmse"
* item[total-score].answer[0].valueInteger = 21
