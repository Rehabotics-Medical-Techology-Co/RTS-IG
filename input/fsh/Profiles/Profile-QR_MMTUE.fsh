// ============================================
// MMT for UE QuestionnaireResponse Profile
// ============================================
Profile: MMTUEQuestionnaireResponse
Parent: SPACQuestionnaireResponse
Id: MMTUEQuestionnaireResponse
Title: "徒手肌力檢查（MMT for UE）問卷回覆"
Description: "針對上肢徒手肌力檢查（Manual Muscle Test, MMT for UE）問卷的 QuestionnaireResponse Profile，強制回傳格式符合問卷結構。"

// 固定問卷參考
* questionnaire = Canonical(MMTUEQuestionnaireInstance) (exactly)

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
* item ^slicing.description = "根據 linkId 區分 MMT for UE 問卷的主要區塊"

* item contains
    assessmentSide 1..1 MS and
    mmtUESection 1..1 MS

// ============================================
// 評估側別
// ============================================
* item[assessmentSide].linkId = "assessment-side-mmt-ue" (exactly)
* item[assessmentSide].text = "患側手"
* item[assessmentSide].answer 1..1
* item[assessmentSide].answer.value[x] only Coding
* item[assessmentSide].answer.valueCoding from AssessmentSideValueSet (required)

// ============================================
// MMT for UE Section
// ============================================
* item[mmtUESection].linkId = "mmt-ue" (exactly)
* item[mmtUESection].text = "徒手肌力檢查 Manual Muscle Test; MMT for UE"
* item[mmtUESection].answer 0..0

// Nested question items are defined by the fixed Questionnaire reference.
// Keep recursive QuestionnaireResponse.item.item unsliced for SDC validation.
