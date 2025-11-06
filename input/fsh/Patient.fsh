// ============================================
// Profile 定義：病人
// ============================================
Profile: Patient
Parent: TWCorePatient //Tw Core 病人profile 名稱
Title: "Patient"
Description: "病人的資料定義範例，包含姓名、識別碼等基本資訊"

* name 1..* MS
* name ^short = "病患姓名，至少需要一組名與姓"
* name ^definition = "病患姓名，包含名與姓，可有名子多個(以串列表示)"
* identifier 1..* MS

// 患者資源範例
Instance: PatientExample
InstanceOf: Patient
Usage: #example
Title: "中風患者範例"
Description: "右側中風患者，接受左側上肢功能評估"

* id = "stroke-patient-001"
* active = true
* name.use = #official
* name.family = "張"
* name.given = "先生"
* identifier
  * system = "http://example.org/mrn"
  * value = "12345"
* gender = #male
* birthDate = "1965-03-15"
* address.city = "台北市"
* address.country = "台灣"

