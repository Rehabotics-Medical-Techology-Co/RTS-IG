Profile: MASQuestionnaireResponse // 名稱
Parent: SPACQuestionnaireResponse
Id: MASQuestionnaireResponse
Title: "MAS 量表問卷回覆"
Description: "Modified Ashworth Scale (MAS) 評估量表問卷回覆"
// 已經有 ValueSet: VSMAScore 與 Questionnaire: MASScaleQuestionnaire
// 基本欄位
* questionnaire 1..1 MS
* questionnaire = Canonical(MASQuestionnaireInstance)
* status 1..1 MS
* status = #completed (exactly)



// 每題都要有一個答案，答案型別限定為 Coding，並綁定到 MAS 分數值集
* item.answer 1..1 MS
* item.answer.value[x] only Coding
* item.answer.valueCoding from VSMAScore (required)

// 以 linkId 做 slicing，要求六題都存在
* item ^slicing.discriminator[0].type = #value
* item ^slicing.discriminator[0].path = "linkId"
* item ^slicing.rules = #closed

* item contains
    left-shoulder 1..1 MS and
    left-wrist    1..1 MS and
    left-hand     1..1 MS and
    right-shoulder 1..1 MS and
    right-wrist    1..1 MS and
    right-hand     1..1 MS

* item[left-shoulder].linkId = "left-shoulder" (exactly)
* item[left-wrist].linkId    = "left-wrist" (exactly)
* item[left-hand].linkId     = "left-hand" (exactly)
* item[right-shoulder].linkId = "right-shoulder" (exactly)
* item[right-wrist].linkId    = "right-wrist" (exactly)
* item[right-hand].linkId     = "right-hand" (exactly)
