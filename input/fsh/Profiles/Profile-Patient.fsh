// ============================================
// Profile 定義：病人
// ============================================
Profile: Patient // 
Parent: TWCorePatient
Title: "根據醫院實際病人範例進行資料定義"
Description: "病人的資料定義範例，包含姓名、識別碼等基本資訊"

* name 1..* MS
* name ^short = "病患姓名，至少需要一組名與姓"
* name ^definition = "病患姓名，包含名與姓，可有名子多個(以串列表示)"
* identifier 1..* MS 
* identifier ^short = "病人識別碼，通常為健保卡號、病歷號、身分證"

// -----
// 建立模板，使其代筆
RuleSet: PatientNarrative(name, birthDate, gender, idNumber,address)
* text.status = #generated
* text.div = """<div xmlns="http://www.w3.org/1999/xhtml">
  <h3><b>病人基本資料</b></h3>
  <p><b>姓名：</b> {name}</p>
  <p><b>出生日期：</b> {birthDate}</p>
  <p><b>性別：</b> {gender}</p>
  <p><b>身分證字號：</b> {idNumber}</p>
  <p><b>住址:</b> {address}
</div>"""


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
// 正確的 identifier-suffix 用法
* identifier[idCardNumber].type.coding = $v2-0203#NNxxx
//* identifier[idCardNumber].type.coding.code.extension[identifier-suffix].url = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/identifier-suffix
//* identifier[idCardNumber].type.coding.code.extension[identifier-suffix].valueString = "TWN"
* identifier.value = "A123456789"
* gender = #male
* birthDate = "1965-03-15"
* address.extension[0].url = "https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/tw-section" //段
* address.extension[=].valueString = "五段"
* address.extension[+].url = "https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/tw-lane"
* address.extension[=].valueString = "609巷"
* address.extension[+].url = "https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/tw-number" //號
* address.extension[=].valueString = "16號"
* address.extension[+].url = "https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/tw-floor"
* address.extension[=].valueString = "6樓之11"
* address.line = "重新路"
* address.city = "三重區"
* address.district = "新北市"
* address.postalCode.extension.url = "https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/tw-postal-code"
* address.postalCode.extension.valueCodeableConcept = $postal-code6-tw#241408
* address.country = "臺灣(TW)"

// * insert PatientNarrative("張先生", "1965-03-15", "男性", "A123456789", "台北市")