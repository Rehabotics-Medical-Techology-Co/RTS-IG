Profile: ReachQuestionnaireResponse
Parent: SPACQuestionnaireResponse
Title: "REACH 量表的問卷回覆profile"
Description: "將答案填入REACH 量表裡面"
* status = #completed
* questionnaire = Canonical(REACHQuestionnaireInstance) (exactly)

* item ^slicing.discriminator[0].type = #value
* item ^slicing.discriminator[0].path = "linkId"
* item ^slicing.rules = #open

* item contains
    reach-side 1..1 MS and
    reach-left 0..1 MS and
    reach-right 0..1 MS

* item[reach-side].linkId = "reach-side" (exactly)
* item[reach-side].answer 1..1 MS
* item[reach-side].answer.value[x] only Coding
* item[reach-side].answer.valueCoding from AssessmentSideValueSet (required)

* item[reach-left].linkId = "reach-left" (exactly)
* item[reach-left].answer 1..1 MS
* item[reach-left].answer.value[x] only Coding
* item[reach-left].answer.valueCoding from VSReach (required)

* item[reach-right].linkId = "reach-right" (exactly)
* item[reach-right].answer 1..1 MS
* item[reach-right].answer.value[x] only Coding
* item[reach-right].answer.valueCoding from VSReach (required)
