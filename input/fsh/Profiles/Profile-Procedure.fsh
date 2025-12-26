// ============================================
// Profile 定義：介入
// PAC：跨專業團隊整合照護、復健治療、後續居家照護及技巧指導、共病症、併發症預防及處置
// ============================================
Profile: Procedure
Parent: TWCoreProcedure
Title: "PACProcedure"
Description: "PAC介入的標準化定義。"
* status 1..1
* code 1..1
* subject 1..1
* performed[x] 1..1

Instance: ProcedureExample
InstanceOf: Procedure
Title: "介入資料範例"
Description: "一個介入的範例"
* status = #completed
* code = http://snomed.info/sct#80146002 "Appendectomy"
* subject = Reference(PatientExample)
* performedDateTime = "2025-10-09T10:00:00+08:00"
