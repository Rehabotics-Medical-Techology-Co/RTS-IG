Instance: IDALQuestionnaireResponseInstance
InstanceOf: IADLQuestionnaireResponse
Usage: #example

* questionnaire = Canonical(IDALQuestionnaireInstance)
* status = #completed
* subject = Reference(PatientExample)
* authored = "2023-10-01T10:00:00+08:00"

* item[F1].linkId = "A-telephone"
* item[F1].text = "A.使用電話"
* item[F1].answer.valueInteger = 3
* item[F2].linkId = "B-shopping"
* item[F2].text = "B.購物"
* item[F2].answer.valueInteger = 3
* item[F3].linkId = "C-food-preparation"
* item[F3].text = "C.備餐"
* item[F3].answer.valueInteger = 3
* item[F4].linkId = "D-housekeeping"
* item[F4].text = "D.處理家務"
* item[F4].answer.valueInteger = 4
* item[F5].linkId = "E-laundry"
* item[F5].text = "E.洗衣服"
* item[F5].answer.valueInteger = 3
* item[F6].linkId = "F-transportation"
* item[F6].text = "F.外出"
* item[F6].answer.valueInteger = 4
* item[F7].linkId = "G-medications"
* item[F7].text = "G.服用藥物"
* item[F7].answer.valueInteger = 3
* item[F8].linkId = "H-finances"
* item[F8].text = "H.處理財務的能力"
* item[F8].answer.valueInteger = 3
* item[totalScoreSection].linkId = "I-total-score-IADL"
* item[totalScoreSection].text = "I.IADL總分計算"
* item[totalScoreSection].answer.valueInteger = 26
