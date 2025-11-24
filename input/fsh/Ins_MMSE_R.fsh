Instance: MMSEQuestionnaireResponseExample
InstanceOf: MMSEQuestionnaireResponse
Usage: #example
* status = #completed
* questionnaire = Canonical(MMSEQuestionnaireInstance)
* subject = Reference(Patient/stroke-patient-001) "張先生"
* authored = "2025-10-11T14:30:00+08:00"
* author = Reference(Practitioner/ot-therapist-001) "復健治療師 - 李小姐"
// section 1 答案
* item[section-1].linkId = "section-a-time" //看codebook
* item[section-1].item[0].linkId = "a-1-year-score"
* item[section-1].item[0].answer[0].valueInteger = 0
* item[section-1].item[+].linkId = "a-2-month-score"
* item[section-1].item[=].answer[0].valueInteger = 1
* item[section-1].item[+].linkId = "a-3-date-score"
* item[section-1].item[=].answer[0].valueInteger = 1
* item[section-1].item[+].linkId = "a-4-week-score"
* item[section-1].item[=].answer[0].valueInteger = 0
* item[section-1].item[+].linkId = "a-5-season-score"
* item[section-1].item[=].answer[0].valueInteger = 1
// section 2 答案
* item[section-2].linkId = "section-b-place"
* item[section-2].item[0].linkId = "b-1-city-score"
* item[section-2].item[0].answer[0].valueInteger = 0
* item[section-2].item[+].linkId = "b-2-loc-score"
* item[section-2].item[=].answer[0].valueInteger = 1
* item[section-2].item[+].linkId = "b-3-hos-score"
* item[section-2].item[=].answer[0].valueInteger = 1
* item[section-2].item[+].linkId = "b-4-floor-score"
* item[section-2].item[=].answer[0].valueInteger = 0
* item[section-2].item[+].linkId = "b-5-number-score"
* item[section-2].item[=].answer[0].valueInteger = 1
// section 3 答案
* item[section-3].linkId = "section-c-memory"
* item[section-3].item[0].linkId = "c-item-score"
* item[section-3].item[=].answer[0].valueInteger = 3
// section 4 答案
* item[section-4].linkId = "section-d-language"
* item[section-4].item[0].linkId = "d-cal-score"
* item[section-4].item[=].answer[0].valueInteger = 4
// section 5 答案
* item[section-5].linkId = "section-e-oral"
* item[section-5].item[0].linkId = "e-1-rep-score"
* item[section-5].item[=].answer.valueInteger = 2
* item[section-5].item[+].linkId = "e-2-stuff-score"
* item[section-5].item[=].answer[0].valueInteger = 2
* item[section-5].item[+].linkId = "e-3-phrase-score"
* item[section-5].item[=].answer[0].valueInteger = 1
* item[section-5].item[+].linkId = "e-4-fold-score"
* item[section-5].item[=].answer[0].valueInteger = 2
* item[section-5].item[+].linkId = "e-5-sen-score"
* item[section-5].item[=].answer[0].valueInteger = 0
// section 6 答案
* item[section-6].linkId = "section-f-build"
* item[section-6].item[0].linkId = "f-1-paper-score"
* item[section-6].item[0].answer[0].valueInteger = 1
* item[section-6].item[+].linkId = "f-2-draw-score"
* item[section-6].item[=].answer[0].valueInteger = 0
// 總分計算

* item[total-score].linkId = "total-score-mmse"
* item[total-score].answer[0].valueInteger = 21
