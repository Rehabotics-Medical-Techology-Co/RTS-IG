// ============================================
// Profile 定義：照護計畫
// ============================================
Profile: PACCarePlan
Parent: TWCoreCarePlan
Title: "PACCarePlan"
Description: "PAC照護計畫的標準化定義的內容"
* status 1..1
* intent 1..1
* subject 1..1


Instance: PACCarePlanExample
InstanceOf: PACCarePlan
Title: "PAC照護計畫資料範例"
Description: "一個照護計畫的範例"
* status = #active
* intent = #plan
* subject = Reference(Patient/001)

