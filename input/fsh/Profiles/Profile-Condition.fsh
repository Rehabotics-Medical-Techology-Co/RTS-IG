Alias: $condition-category = http://terminology.hl7.org/CodeSystem/condition-category
// ============================================
// Profile 定義：目標
// ============================================
Profile: PACCondition
Parent: TWCoreCondition
Title: "復健病情、問題、診斷"
Description: "進行患者上肢功能評估時的狀況資訊，應包含待評估身體部位或病徵。"
* category = $condition-category#encounter-diagnosis
* bodySite MS
* bodySite ^slicing.discriminator.type = #value
* bodySite ^slicing.discriminator.path = "coding.code"
* bodySite ^slicing.rules = #closed
* bodySite ^slicing.ordered = true
* bodySite ^slicing.description = "依據需求填入評估部位或是實際患部/側，至少應填入評估部位"
* bodySite contains
    AssessmentSite 1..* MS and
    AffectedPart 0..* MS
