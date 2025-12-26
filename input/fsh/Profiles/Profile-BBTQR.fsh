Profile: BBTQR
Parent: QuestionnaireResponse
Id: bbt-questionnaire-response
Description: "Box and Block Test (BBT) 評估量表問卷回覆"
* status 1..1 MS
* status = #completed (exactly)
* questionnaire 1..1 MS
* questionnaire only Canonical(Questionnaire)
* questionnaire = Canonical(BBTQuestionnaire)

// 以 linkId 做 slicing，要求兩題都存在(左右側) 
* item ^slicing.discriminator[0].type = #value
* item ^slicing.discriminator[0].path = "linkId"
* item ^slicing.rules = #closed

* item contains
    left-hand     1..1 MS and
    right-hand     1..1 MS

* item[left-hand].linkId = "left-hand" (exactly)
* item[right-hand].linkId = "right-hand" (exactly)
