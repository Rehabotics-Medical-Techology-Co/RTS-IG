// ============================================
// Profile 定義：健康照護服務提供者角色
// PAC：醫師/醫事人員別、跨專業團隊整合照護
// ============================================
Profile: PractitionerRole
Parent: TWCorePractitionerRole
Title: "PractitionerRole"
Description: "健康照護服務提供者角色的標準化定義。"
* practitioner 1..1
* organization 1..1
* code 1..1
* active 1..1
//code：此健康照護服務提供者可能執行的角色
//specialty：健康照護服務提供者的特定專業


Instance: PractitionerRoleExample
InstanceOf: PractitionerRole
Title: "健康照護服務提供者角色資料範例"
Description: "一名健康照護服務提供者角色的範例"
* practitioner = Reference(PractitionerExample)
* organization = Reference(OrganizationExample)
* code = http://terminology.hl7.org/CodeSystem/v2-0286#PP "Primary Care Provider"
* active = true
* specialty = http://twcore.mohw.gov.tw/ig/twcore/CodeSystem/medical-consultation-department-nhi-tw#00 "General medicine"