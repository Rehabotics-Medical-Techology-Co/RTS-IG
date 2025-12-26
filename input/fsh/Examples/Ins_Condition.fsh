Instance: ConditionExample01
InstanceOf: TWCoreCondition
Usage: #example
Title: "兒童職能治療範本"
Description: "醫院實際兒童職能治療格式"
* language = #zh-TW
* clinicalStatus = #active
* text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
  <p><b>臨床觀察</b></p>
  <p> 個案在案父母陪同下，可進入治療室接受指令完成評估 ()。評估過程較沒自信，每個動作揭已眼神向父母或治療師確認自己是否答對，全身肌肉低張力影響握筆姿勢、運筆及精細操作穩定度。</p>
  <p> 個案父母表示家中上有兩個哥哥，在家和案兄互動沒有困難，案母為中國籍，之前曾帶個案回中國就讀幼兒園約3個月，而後返回臺灣就讀中班，在學校中較我行我素少和同儕互動，學東西較慢，由老師建議就診早療。</p>
</div>
"""
* category = #problem-list-item
* subject = Reference(PatientExample)
* recordedDate = "2025-03-06"
* recorder = Reference(PractitionerExample)
* text.status = #generated

