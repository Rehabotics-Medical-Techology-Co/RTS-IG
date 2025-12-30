// ============================================
// Profile 定義：機構
// PAC：醫院(地點)
// ============================================
Profile: Organization
Parent: TWCoreOrganization
Title: "Organization"
Description: "機構的標準化定義。"
* name 1..1
* name ^definition = "機構使用的正式名稱。"
* name ^short = "機構名稱"
* identifier 1..1
* identifier ^definition = "跨多個系統中識別此機構的唯一編號。"
* identifier ^short = "機構識別碼"
* active 1..1
* active ^definition = "此機構的紀錄是否仍在使用中。"
* active ^short = "是否啟用"
* address 1..1
* address ^definition = "機構的實體地址，包含縣市、區域、街道等資訊。"
* address ^short = "機構地址"

RuleSet: OrganizationNarrative(orgName, orgId, contactPhone)
* text.status = #generated
* text.div = """<div xmlns="http://www.w3.org/1999/xhtml">
  <h3><b>醫療機構</b></h3>
  <p><b>機構名稱：</b> {orgName}</p>
  <p><b>機構代碼：</b> {orgId}</p>
  <p><b>聯絡電話：</b> {contactPhone}</p>
</div>"""

// ============================================
// Instance 範例
// ============================================
Instance: OrganizationExample
InstanceOf: Organization
Title: "機構資料範例"
Description: "一個機構的範例"
* name = "台灣健康醫院"
* identifier.system = "http://hospital.mohw.gov.tw/orgID"
* identifier.value = "XYZ54321"
* active = true
* address.line = "123 健康路"
* address.city = "臺北市"
* address.state = "中正區"
* address.postalCode = "100"
* telecom.system = #phone
* telecom.value = "02-22765566"
* insert OrganizationNarrative("台灣健康醫院", "XYZ54321", "02-22765566")
