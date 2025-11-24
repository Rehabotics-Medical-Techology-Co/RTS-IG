// 建立profile
Profile: MMSEQuestionnaireResponse
Parent: SPACQuestionnaireResponse
Id: MMSEQuestionnaireResponse
Title: "MMSE QuestionnaireResponse (scored)"
Description: "MMSE 回覆：分數題逐題填答，總分需等於所有分數項目加總。"

// 基本約束
* status = #completed
* subject 1..1
* subject only Reference(Patient)
* authored 1..1

// ========== slicing：以 linkId 區分每個 section ==========
* item ^slicing.discriminator[0].type = #value
* item ^slicing.discriminator[0].path = "linkId"
* item ^slicing.rules = #open

// 各 section 最少出現一次（保持彈性，不要求每題都出現）
* item contains
    section-1 1..1 MS and
    section-2 1..1 MS and
    section-3 1..1 MS and
    section-4 1..1 MS and
    section-5 1..1 MS and
    section-6 1..1 MS and
    total-score 1..1 MS
* item[section-1].linkId = "section-a-time"
* item[section-2].linkId = "section-b-place"
* item[section-3].linkId = "section-c-memory"
* item[section-4].linkId = "section-d-language"
* item[section-5].linkId = "section-e-oral"
* item[section-6].linkId = "section-f-build"

// ========== 總分題 ==========
* item[total-score].linkId = "total-score-mmse" (exactly)
* item[total-score].answer 1..1
* item[total-score].answer.value[x] only integer

// ========== 限定每個 section 中的分數型題目必須是整數 ==========
* item[section-1].item.answer.value[x] only integer
* item[section-2].item.answer.value[x] only integer
* item[section-3].item.answer.value[x] only integer
* item[section-4].item.answer.value[x] only integer
* item[section-5].item.answer.value[x] only integer
* item[section-6].item.answer.value[x] only integer
