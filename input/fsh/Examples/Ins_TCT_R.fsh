Instance: TCTQuestionnaireResponseInstance
InstanceOf: TCTQuestionnaireResponse
Usage: #example
Title: "Trunk Control Test (TCT) 評估量表問卷回覆"
Description: "Trunk Control Test (TCT) 評估量表問卷回覆範例"
* questionnaire = Canonical(TCTQuestionnaireInstance)
* status = #completed
* subject = Reference(Patient/stroke-patient-001) 
* authored = "2025-11-10"
// ====項目1: 滾向弱側答案====
* item[roll-to-weak-side].linkId = "roll-to-weak-side"
* item[roll-to-weak-side].text = "滾向弱側"
* item[roll-to-weak-side].answer[0].valueCoding = CSTCT#12
// ====項目2: 滾向強側答案====
* item[roll-to-strong-side].linkId = "roll-to-strong-side"
* item[roll-to-strong-side].text = "滾向強側"
* item[roll-to-strong-side].answer[0].valueCoding = CSTCT#25
// ====項目3: 從床邊緣將腳抬起來之平衡項目答案====
* item[balance-sitting].linkId = "balance-sitting"
* item[balance-sitting].text = "將雙腳從床邊緣抬起來至少30秒"
* item[balance-sitting].answer[0].valueCoding = CSTCT#0
// ====項目4: 從躺姿到坐姿答案====
* item[sit-from-lying-down].linkId = "sit-from-lying-down"
* item[sit-from-lying-down].text = "從躺姿移動到坐姿"
* item[sit-from-lying-down].answer[0].valueCoding = CSTCT#12
// ====總分====
* item[tct-total].linkId = "tct-total"
* item[tct-total].text = "TCT 總分"
* item[tct-total].answer[0].valueInteger = 49


