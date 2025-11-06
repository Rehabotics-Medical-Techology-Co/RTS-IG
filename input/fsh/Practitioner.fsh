// ============================================
// Profile 定義：健康照護服務提供者
// PAC：醫師/醫事人員別、跨專業團隊整合照護
// ============================================
Profile: Practitioner
Parent: TWCorePractitioner
Title: "Practitioner"
Description: "健康照護服務提供者的標準化定義。"
* name 1..1
* identifier 1..1
* active 1..1
//qualification：與照護服務相關的證書、執照或培訓

// 治療師資源範例
Instance: PractitionerExample
InstanceOf: Practitioner
Usage: #example
Title: "復健治療師範例"
Description: "執行ARAT評估的職能治療師"

* id = "ot-therapist-001"
* active = true
* name.use = #official
* name.family = "李"
* name.given = "小姐"
* identifier.system = "http://hospital.mohw.gov.tw/docID"
* identifier.value = "A123456789"
* qualification.code = http://snomed.info/sct#224609002 "職能治療師"
* qualification.issuer.display = "台灣職能治療師公會"
