Alias: $condition-category = http://terminology.hl7.org/CodeSystem/condition-category
// ============================================
// Profile 定義：目標
// ============================================
Profile: PACCondition
Parent: TWCoreCondition
Title: "復健病情、問題、診斷"
Description: "進行患者上肢功能評估時的狀況資訊，應包含待評估身體部位或病徵。"
* category = $condition-category#encounter-diagnosis
* bodySite 1..* MS
* bodySite from VSBodyStructure (required)
