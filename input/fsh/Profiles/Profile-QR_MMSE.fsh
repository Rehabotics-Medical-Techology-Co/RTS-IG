// 建立profile
Profile: MMSEQuestionnaireResponse
Parent: QuestionnaireResponse
Id: MMSEQuestionnaireResponse
Title: "MMSE QuestionnaireResponse (scored)"
Description: "MMSE 回覆：分數題逐題填答，總分需等於所有分數項目加總。"

// 基本約束
* questionnaire 1..1 MS
* status 1..1 MS
* status = #completed
* subject 1..1 MS
* subject only Reference(Patient)
* authored 1..1 MS

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
* item[section-1].linkId = "section-a-time" (exactly)
* item[section-2].linkId = "section-b-place" (exactly)
* item[section-3].linkId = "section-c-memory" (exactly)
* item[section-4].linkId = "section-d-language" (exactly)
* item[section-5].linkId = "section-e-oral" (exactly)
* item[section-6].linkId = "section-f-build" (exactly)

// ========== 總分題 ==========
* item[total-score].linkId = "total-score-mmse" (exactly)
* item[total-score].answer 1..1
* item[total-score].answer.value[x] only integer

// ========== 限定每個 section 中的分數型題目必須是整數 ==========
* item[section-1].item ^slicing.discriminator.type = #value
* item[section-1].item ^slicing.discriminator.path = "linkId"
* item[section-1].item ^slicing.rules = #open
* item[section-1].item contains
    yearScore 1..1 MS and
    monthScore 1..1 MS and
    dateScore 1..1 MS and
    weekScore 1..1 MS and
    seasonScore 1..1 MS
* item[section-1].item[yearScore].linkId = "a-1-year-score" (exactly)
* item[section-1].item[monthScore].linkId = "a-2-month-score" (exactly)
* item[section-1].item[dateScore].linkId = "a-3-date-score" (exactly)
* item[section-1].item[weekScore].linkId = "a-4-week-score" (exactly)
* item[section-1].item[seasonScore].linkId = "a-5-season-score" (exactly)
* item[section-1].item[yearScore].answer 1..1
* item[section-1].item[monthScore].answer 1..1
* item[section-1].item[dateScore].answer 1..1
* item[section-1].item[weekScore].answer 1..1
* item[section-1].item[seasonScore].answer 1..1
* item[section-1].item[yearScore].answer.value[x] only integer
* item[section-1].item[monthScore].answer.value[x] only integer
* item[section-1].item[dateScore].answer.value[x] only integer
* item[section-1].item[weekScore].answer.value[x] only integer
* item[section-1].item[seasonScore].answer.value[x] only integer

* item[section-2].item ^slicing.discriminator.type = #value
* item[section-2].item ^slicing.discriminator.path = "linkId"
* item[section-2].item ^slicing.rules = #open
* item[section-2].item contains
    cityScore 1..1 MS and
    locationScore 1..1 MS and
    hospitalScore 1..1 MS and
    floorScore 1..1 MS and
    numberScore 1..1 MS
* item[section-2].item[cityScore].linkId = "b-1-city-score" (exactly)
* item[section-2].item[locationScore].linkId = "b-2-loc-score" (exactly)
* item[section-2].item[hospitalScore].linkId = "b-3-hos-score" (exactly)
* item[section-2].item[floorScore].linkId = "b-4-floor-score" (exactly)
* item[section-2].item[numberScore].linkId = "b-5-number-score" (exactly)
* item[section-2].item[cityScore].answer 1..1
* item[section-2].item[locationScore].answer 1..1
* item[section-2].item[hospitalScore].answer 1..1
* item[section-2].item[floorScore].answer 1..1
* item[section-2].item[numberScore].answer 1..1
* item[section-2].item[cityScore].answer.value[x] only integer
* item[section-2].item[locationScore].answer.value[x] only integer
* item[section-2].item[hospitalScore].answer.value[x] only integer
* item[section-2].item[floorScore].answer.value[x] only integer
* item[section-2].item[numberScore].answer.value[x] only integer

* item[section-3].item ^slicing.discriminator.type = #value
* item[section-3].item ^slicing.discriminator.path = "linkId"
* item[section-3].item ^slicing.rules = #open
* item[section-3].item contains
    memoryScore 1..1 MS
* item[section-3].item[memoryScore].linkId = "c-item-score" (exactly)
* item[section-3].item[memoryScore].answer 1..1
* item[section-3].item[memoryScore].answer.value[x] only integer

* item[section-4].item ^slicing.discriminator.type = #value
* item[section-4].item ^slicing.discriminator.path = "linkId"
* item[section-4].item ^slicing.rules = #open
* item[section-4].item contains
    calculationScore 1..1 MS
* item[section-4].item[calculationScore].linkId = "d-cal-score" (exactly)
* item[section-4].item[calculationScore].answer 1..1
* item[section-4].item[calculationScore].answer.value[x] only integer

* item[section-5].item ^slicing.discriminator.type = #value
* item[section-5].item ^slicing.discriminator.path = "linkId"
* item[section-5].item ^slicing.rules = #open
* item[section-5].item contains
    repetitionScore 1..1 MS and
    namingScore 1..1 MS and
    phraseScore 1..1 MS and
    commandScore 1..1 MS and
    sentenceScore 1..1 MS
* item[section-5].item[repetitionScore].linkId = "e-1-rep-score" (exactly)
* item[section-5].item[namingScore].linkId = "e-2-stuff-score" (exactly)
* item[section-5].item[phraseScore].linkId = "e-3-phrase-score" (exactly)
* item[section-5].item[commandScore].linkId = "e-4-fold-score" (exactly)
* item[section-5].item[sentenceScore].linkId = "e-5-sen-score" (exactly)
* item[section-5].item[repetitionScore].answer 1..1
* item[section-5].item[namingScore].answer 1..1
* item[section-5].item[phraseScore].answer 1..1
* item[section-5].item[commandScore].answer 1..1
* item[section-5].item[sentenceScore].answer 1..1
* item[section-5].item[repetitionScore].answer.value[x] only integer
* item[section-5].item[namingScore].answer.value[x] only integer
* item[section-5].item[phraseScore].answer.value[x] only integer
* item[section-5].item[commandScore].answer.value[x] only integer
* item[section-5].item[sentenceScore].answer.value[x] only integer

* item[section-6].item ^slicing.discriminator.type = #value
* item[section-6].item ^slicing.discriminator.path = "linkId"
* item[section-6].item ^slicing.rules = #open
* item[section-6].item contains
    paperScore 1..1 MS and
    drawScore 1..1 MS
* item[section-6].item[paperScore].linkId = "f-1-paper-score" (exactly)
* item[section-6].item[drawScore].linkId = "f-2-draw-score" (exactly)
* item[section-6].item[paperScore].answer 1..1
* item[section-6].item[drawScore].answer 1..1
* item[section-6].item[paperScore].answer.value[x] only integer
* item[section-6].item[drawScore].answer.value[x] only integer
