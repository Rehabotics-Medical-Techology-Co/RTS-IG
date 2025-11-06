// ============================================
// IADL QuestionnaireResponse Profile
// ============================================
Profile: IADLQuestionnaireResponse
Parent: SPACQuestionnaireResponse
Id: IADLQuestionnaireResponse
Title: "IADL評估問卷回覆"
Description: "針對IADL評估問卷的QuestionnaireResponse Profile，強制回傳格式符合問卷結構"

// 固定問卷參考
* questionnaire = "http://example.org/fhir/Questionnaire/IDALQuestionnaireInstance" (exactly)

// 基本約束
* status = #completed
* subject 1..1
* subject only Reference(Patient)
* authored 1..1

// ============================================
// 第一層 item slicing
// ============================================
* item ^slicing.discriminator.type = #value
* item ^slicing.discriminator.path = "linkId"
* item ^slicing.rules = #closed
* item ^slicing.ordered = false
* item ^slicing.description = "根據linkId區分IADL問卷的主要區塊"

* item contains
    F1 1..1 and
    F2 1..1 MS and
    F3 1..1 MS and
    F4 1..1 MS and
    F5 1..1 MS and
    F6 1..1 MS and
    F7 1..1 MS and
    F8 1..1 MS and
    totalScoreSection 1..1 MS

//F1
* item[F1].linkId = "A-telephone" (exactly)
* item[F1].text 1..
* item[F1].text = "A.使用電話"
* item[F1].answer 1..1
* item[F1].answer ^minValueInteger = 1
* item[F1].answer ^maxValueInteger = 4
* item[F1].answer.value[x] 1..
* item[F1].answer.value[x] only integer

//F2
* item[F2].linkId = "B-shopping"
* item[F2].text 1..
* item[F2].text = "B.購物"
* item[F2].answer 1..1
* item[F2].answer ^minValueInteger = 1
* item[F2].answer ^maxValueInteger = 4
* item[F2].answer.value[x] 1..
* item[F2].answer.value[x] only integer

//F3
* item[F3].linkId = "C-food-preparation"
* item[F3].text 1..
* item[F3].text = "C.備餐"
* item[F3].answer 1..1
* item[F3].answer ^minValueInteger = 1
* item[F3].answer ^maxValueInteger = 4
* item[F3].answer.value[x] 1..
* item[F3].answer.value[x] only integer

//F4
* item[F4].linkId = "D-housekeeping"
* item[F4].text 1..
* item[F4].text = "D.處理家務"
* item[F4].answer 1..1
* item[F4].answer ^minValueInteger = 1
* item[F4].answer ^maxValueInteger = 4
* item[F4].answer.value[x] 1..
* item[F4].answer.value[x] only integer

//F5
* item[F5].linkId = "E-laundry"
* item[F5].text 1..
* item[F5].text = "E.洗衣服"
* item[F5].answer 1..1
* item[F5].answer ^minValueInteger = 1
* item[F5].answer ^maxValueInteger = 3
* item[F5].answer.value[x] 1..
* item[F5].answer.value[x] only integer

//F6
* item[F6].linkId = "F-transportation"
* item[F6].text 1..
* item[F6].text = "F.外出"
* item[F6].answer 1..1
* item[F6].answer ^minValueInteger = 1
* item[F6].answer ^maxValueInteger = 5
* item[F6].answer.value[x] 1..
* item[F6].answer.value[x] only integer

//F7
* item[F7].linkId = "G-medications"
* item[F7].text 1..
* item[F7].text = "G.服用藥物"
* item[F7].answer 1..1
* item[F7].answer ^minValueInteger = 1
* item[F7].answer ^maxValueInteger = 3
* item[F7].answer.value[x] 1..
* item[F7].answer.value[x] only integer

//F8
* item[F8].linkId = "H-finances"
* item[F8].text 1..
* item[F8].text = "H.處理財務的能力"
* item[F8].answer 1..1
* item[F8].answer ^minValueInteger = 1
* item[F8].answer ^maxValueInteger = 3
* item[F8].answer.value[x] 1..
* item[F8].answer.value[x] only integer

// ============================================
// totalScoreSection：總分計算
// ============================================
* item[totalScoreSection].linkId = "I-total-score-IADL" (exactly)
* item[totalScoreSection].text = "I.IADL總分計算"
* item[totalScoreSection].answer 1..1
* item[totalScoreSection].answer.value[x] only integer
* item[totalScoreSection].answer.valueInteger ^minValueInteger = 8
* item[totalScoreSection].answer.valueInteger ^maxValueInteger = 30