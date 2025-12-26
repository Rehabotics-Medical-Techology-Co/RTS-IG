// ============================================
// Profile 定義：用藥資料
// PAC：使用藥物、用藥之使用率
// ============================================

Profile: MyMedicationAdministration
Parent: MedicationAdministration
Title: "Medication Administration"
Description: "用藥資料"
* status ^short = "用藥詳細資料"
* status ^definition = "欄位用於表達所給予病人的藥物，可以使用CodeableConcept或Reference兩種形式。"
* dosage 0..1
* dosage ^short = "藥物劑量與給藥方式"
* dosage ^definition = "描述藥物給予的詳細劑量、頻率、途徑等。"
* dosage.rateRatio ^short = "藥物輸注速率"
* dosage.rateRatio ^definition = "表示藥物輸注的速度，通常用於輸液，描述單位時間內給予的藥物量。例如每小時100毫升或每分鐘200微克。此欄位以比例(Ratio)方式表達速率，其中分子為用藥量，分母為時間單位。"



Instance: MyMedicationAdministrationExample
InstanceOf: MyMedicationAdministration
Title: "用藥資料範例"
Description: "一個用藥資料的範例"
* status = #completed
* medicationCodeableConcept.text = "阿莫西林 500mg"
* subject = Reference(PatientExample)
* effectiveDateTime = "2025-10-16T10:00:00+08:00"


// MedicationAdministration Example
Instance: PACMedicationAdministrationExample
InstanceOf: MyMedicationAdministration
Title: "PAC用藥資料範例"
Description: "一個用藥資料的範例"
* status = #completed
* medicationCodeableConcept.text = "阿莫西林 500mg"
* subject = Reference(PatientExample)
* effectiveDateTime = "2025-10-16T10:00:00+08:00"
