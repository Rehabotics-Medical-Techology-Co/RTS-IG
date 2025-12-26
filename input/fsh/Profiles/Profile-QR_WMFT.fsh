Alias: $snomed = http://snomed.info/sct

// ============================================
// WMFT QuestionnaireResponse Profile
// ============================================
Profile: WMFTQuestionnaireResponse
Parent: SPACQuestionnaireResponse
Id: WMFTQuestionnaireResponse
Title: "WMFT上肢功能評估問卷回覆"
Description: "針對WMFT上肢功能評估問卷的QuestionnaireResponse Profile，強制回傳格式符合問卷結構"

// 固定問卷參考
* questionnaire = "https://build.fhir.org/ig/Kimsber/Rehab-IG/Questionnaire/WMFTQuestionnaireInstance" (exactly)

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
* item ^slicing.rules = #open
* item ^slicing.description = "根據linkId區分WMFT問卷的主要區塊"
// 各 section 最少出現一次（保持彈性，不要求每題都出現）
* item contains
    assessmentSide 1..1 MS and
    TimedJointSegmentMovements 1..1 MS and
    TimedIntegrativeFunctionalMovements 1..1 MS and
    totalScoreSection 1..1 MS

* item[assessmentSide].linkId = "assessment-side-wmft"
* item[TimedJointSegmentMovements].linkId = "A-timed-joint-segment-movements"
* item[TimedIntegrativeFunctionalMovements].linkId = "B-timed-integrative-functional-movements"
* item[totalScoreSection].linkId = "C-total-score-WMFT"

// ========== 限定每個 section 中的分數型題目必須是整數 ==========
* item[assessmentSide].item.answer.value[x] only Coding
* item[TimedJointSegmentMovements].item.answer.value[x] only integer
* item[TimedIntegrativeFunctionalMovements].item.answer.value[x] only integer
* item[totalScoreSection].item.answer.value[x] only integer

