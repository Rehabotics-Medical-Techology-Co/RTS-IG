// ============================================
// Profile 定義：就醫事件 → class、period
// PAC：住院時長
// ============================================
Profile: Encounter
Parent: TWCoreEncounter
Title: "Encounter"
Description: "就醫事件的標準化定義。"
* status 1..1
* status ^short = "狀態代碼，表示就醫事件的流轉狀態"
* status ^definition = "此欄位表示該就醫事件是否處於啟用、草稿、完成等狀態；必填。"
* class 1..1
* class ^short = "病人就醫的分類"
* class ^definition = "病人就醫分類的概念，例如：門診病人、住院病人、急診病人、居家照護或其他因地方不同而產生的概念。"
* subject 1..1
* period 1..1
* period ^short = "就醫的開始和結束時間"
* period ^definition = "就醫的開始和結束時間。如果（尚）不知道，可以省略「期間」裡的結束日期時間。"


// 評估會期範例
Instance: ARATAssessmentEncounter
InstanceOf: Encounter
Usage: #example
Title: "ARAT評估會期"
Description: "進行ARAT評估的門診會期"

* id = "arat-assessment-encounter-001"
* status = #finished
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#AMB "ambulatory"

* type = http://snomed.info/sct#410155007 "Occupational therapy assessment"
* type.text = "職能治療評估"
* subject = Reference(Patient/stroke-patient-001)
* participant.individual = Reference(Practitioner/ot-therapist-001)
* period.start = "2025-10-11T14:00:00+08:00"
* period.end = "2025-10-11T15:00:00+08:00"
* reasonCode = http://snomed.info/sct#2517002
* reasonCode.coding[0].system = "http://snomed.info/sct"
* reasonCode.coding[=].code = $SCT#2517002
* reasonCode.text =  "中風後復健"
