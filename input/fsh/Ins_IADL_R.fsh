Instance: IDALQuestionnaireResponseInstance
InstanceOf: SPACQuestionnaireResponse
Usage: #example

* questionnaire = "http://example.org/fhir/Questionnaire/IDALQuestionnaireInstance"
* status = #completed
* subject = Reference(Patient/PatientPACExample)
* authored = "2023-10-01T10:00:00+08:00"

* item[0].linkId = "A-telephone"
* item[=].text = "A.使用電話"
* item[=].answer.valueInteger = 3
* item[+].linkId = "B-shopping"
* item[=].text = "B.購物"
* item[=].answer.valueInteger = 3
* item[+].linkId = "C-food-preparatio"
* item[=].text = "C.備餐"
* item[=].answer.valueInteger = 3
* item[+].linkId = "D-housekeeping"
* item[=].text = "D.處理家務"
* item[=].answer.valueInteger = 4
* item[+].linkId = "E-laundry"
* item[=].text = "E.洗衣服"
* item[=].answer.valueInteger = 3
* item[+].linkId = "F-transportation"
* item[=].text = "F.外出"
* item[=].answer.valueInteger = 4
* item[+].linkId = "G-medications"
* item[=].text = "G.服用藥物"
* item[=].answer.valueInteger = 3
* item[+].linkId = "H-finances"
* item[=].text = "H.處理財務的能力"
* item[=].answer.valueInteger = 3
* item[+].linkId = "I-total-score-IADL"
* item[=].text = "I.IADL總分計算"
* item[=].answer.valueInteger = 26
