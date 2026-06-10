Profile: ObservationScreeningAssessment
Parent: TWCoreObservationScreeningAssessment
Title: "Observation Screening Assessment"
Description: "健康狀態篩檢與評估"
* status 1..1
* status ^short = "觀察結果狀態"
* status ^definition = "觀察結果的當前狀態，例如完成、暫停或取消。"

* category 1..*
* category ^short = "觀察類別"
* category ^definition = "觀察結果所屬分類，例如篩檢評估，方便分類整理。"

* code 1..1
* code ^short = "觀察測量項目"
* code ^definition = "觀察的具體評估項目或篩檢指標的代碼與名稱。"

* subject 1..1
* subject ^short = "受測者"
* subject ^definition = "本次觀察所針對的病患或個案。"

* effectiveDateTime 0..1
* effectiveDateTime ^short = "觀察時間"
* effectiveDateTime ^definition = "觀察或評估實施的時間。"

* value[x] 0..1
* value[x] ^short = "觀察值"
* value[x] ^definition = "觀察或評估的結果值，可能為數字、文字或其他類型資料。"

* interpretation 0..*
* interpretation ^short = "結果判讀"
* interpretation ^definition = "對觀察結果的解讀或評估，例如正常或異常。"

* note 0..*
* note ^short = "備註"
* note ^definition = "補充說明或相關註記資訊。"

Instance: ObservationScreeningAssessmentExample
InstanceOf: ObservationScreeningAssessment
Title: "健康狀態篩檢與評估範例"
Description: "一個健康狀態篩檢與評估的範例"

* status = #final
* code.coding[0].system = "http://loinc.org"
* code.coding[0].code = #100256-7
* code.coding[0].display = "Fallen in last 6 months"
* subject = Reference(PatientExample)
* effectiveDateTime = "2026-06-08T09:00:00+08:00"
* performer = Reference(PractitionerExample)
* dataAbsentReason.coding = #unknown
