Alias: $snomed = http://snomed.info/sct

// ARAT 上肢功能評估問卷
// ============================================
Instance: WMFTQuestionnaireInstance
InstanceOf: SPACQuestionnaire
Usage: #definition
Title: "WMFT上肢功能評估問卷"
Description: "WMFT上肢功能評估問卷的完整實例，根據Wolf et al., 1995; Whitall, Savin, Harris-Love, & Waller, 2006建立，可提供實際使用 。亦可依據Profile: QuestionnaireProfile內容做為範本進行擴充"

* version = "1.0.0"
* name = "WMFTQuestionnaire"
* title = "WMFT上肢功能評評估問卷"
* description = "WMFT上肢功能評評估問卷(Wolf et al., 1995; Whitall, Savin, Harris-Love, & Waller, 2006)，分左右邊各75分"
* status = #active
* purpose = "提供標準化的上肢感覺評估工具，用於中風復健評估"
* subjectType = #Patient

// 選擇左、右手
* item[0].linkId = "assessment-side-wmft"
* item[=].text = "請選擇評估側"
* item[=].type = #choice
* item[=].required = true
* item[=].answerOption[0].valueCoding.system = $snomed
* item[=].answerOption[=].valueCoding.code = $snomed#24028007
* item[=].answerOption[=].valueCoding.display = "患者左側"
* item[=].answerOption[+].valueCoding.system = $snomed
* item[=].answerOption[=].valueCoding.code = $snomed#7771000
* item[=].answerOption[=].valueCoding.display = "患者右側"

// ============================================
// Section A
// ============================================
* item[+].linkId = "A-timed-joint-segment-movements"
* item[=].text = "A.定時關節分段動作評估"
* item[=].type = #group
* item[=].required = true

// A1
* item[=].item[0].linkId = "A-I-forearm-to-table-side"
* item[=].item[=].text = "透過外展肩膀將前臂放在桌子上"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerOption[0].valueInteger = 0
* item[=].item[=].answerOption[+].valueInteger = 1
* item[=].item[=].answerOption[+].valueInteger = 2
* item[=].item[=].answerOption[+].valueInteger = 3
* item[=].item[=].answerOption[+].valueInteger = 4
* item[=].item[=].answerOption[+].valueInteger = 5
* item[=].item[=].extension.url = "http://example.org/fhir/TestTimeExtension"

// A2 
* item[=].item[+].linkId = "A-I-forearm-to-box-side"
* item[=].item[=].text = "將前臂放在一個 25.4 公分高的箱子上，透過肩部外展"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerOption[0].valueInteger = 0
* item[=].item[=].answerOption[+].valueInteger = 1
* item[=].item[=].answerOption[+].valueInteger = 2
* item[=].item[=].answerOption[+].valueInteger = 3
* item[=].item[=].answerOption[+].valueInteger = 4
* item[=].item[=].answerOption[+].valueInteger = 5
* item[=].item[=].extension.url = "http://example.org/fhir/TestTimeExtension"

// A3 
* item[=].item[+].linkId = "A-I-extended-elbow-side"
* item[=].item[=].text = "將手肘伸向一側，越過一張 28 公分長的桌子"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerOption[0].valueInteger = 0
* item[=].item[=].answerOption[+].valueInteger = 1
* item[=].item[=].answerOption[+].valueInteger = 2
* item[=].item[=].answerOption[+].valueInteger = 3
* item[=].item[=].answerOption[+].valueInteger = 4
* item[=].item[=].answerOption[+].valueInteger = 5
* item[=].item[=].extension.url = "http://example.org/fhir/TestTimeExtension"

// A4 
* item[=].item[+].linkId = "A-I-extended-elbow-to-the-side-with-1lb-weight"
* item[=].item[=].text = "透過伸展手肘將重量推向桌子對面的外腕關節"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerOption[0].valueInteger = 0
* item[=].item[=].answerOption[+].valueInteger = 1
* item[=].item[=].answerOption[+].valueInteger = 2
* item[=].item[=].answerOption[+].valueInteger = 3
* item[=].item[=].answerOption[+].valueInteger = 4
* item[=].item[=].answerOption[+].valueInteger = 5
* item[=].item[=].extension.url = "http://example.org/fhir/TestTimeExtension"

// A5 
* item[=].item[+].linkId = "A-I-hand-to-table-front"
* item[=].item[=].text = "將手放在桌上"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerOption[0].valueInteger = 0
* item[=].item[=].answerOption[+].valueInteger = 1
* item[=].item[=].answerOption[+].valueInteger = 2
* item[=].item[=].answerOption[+].valueInteger = 3
* item[=].item[=].answerOption[+].valueInteger = 4
* item[=].item[=].answerOption[+].valueInteger = 5
* item[=].item[=].extension.url = "http://example.org/fhir/TestTimeExtension"

// A6
* item[=].item[+].linkId = "A-I-hand-to-box-front"
* item[=].item[=].text = "將手放在桌面上的盒子上"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerOption[0].valueInteger = 0
* item[=].item[=].answerOption[+].valueInteger = 1
* item[=].item[=].answerOption[+].valueInteger = 2
* item[=].item[=].answerOption[+].valueInteger = 3
* item[=].item[=].answerOption[+].valueInteger = 4
* item[=].item[=].answerOption[+].valueInteger = 5
* item[=].item[=].extension.url = "http://example.org/fhir/TestTimeExtension"

// A 分量表分數顯示
* item[=].item[+].linkId = "A-timed-joint-segment-movements-subscore"
* item[=].item[=].text = "A.定時關節段運動分量表分數"
* item[=].item[=].type = #integer
* item[=].item[=].readOnly = true
* item[=].item[=].extension[0].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-calculatedExpression"
* item[=].item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].item[=].extension[=].valueExpression.expression = "%TimedJointSegmentMovementScore"

// 轉換為Observation
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-observationExtract"
* item[=].item[=].extension[=].valueBoolean = true

// ============================================
// Section B
// ============================================
* item[+].linkId = "B-timed-integrative-functional-movements"
* item[=].text = "B.定時整合功能動作評估"
* item[=].type = #group
* item[=].required = true

// B1
* item[=].item[+].linkId = "B-I-reach-and-retrieve-front"
* item[=].item[=].text = "透過手肘和彎曲手腕將 1 磅重的物體拉過桌子"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerOption[0].valueInteger = 0
* item[=].item[=].answerOption[+].valueInteger = 1
* item[=].item[=].answerOption[+].valueInteger = 2
* item[=].item[=].answerOption[+].valueInteger = 3
* item[=].item[=].answerOption[+].valueInteger = 4
* item[=].item[=].answerOption[+].valueInteger = 5
* item[=].item[=].extension.url = "http://example.org/fhir/TestTimeExtension"

// B2
* item[=].item[0].linkId = "B-I-lift-can-front"
* item[=].item[=].text = "舉起一個罐子，並用圓柱形的抓握方式將其靠近嘴唇"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerOption[0].valueInteger = 0
* item[=].item[=].answerOption[+].valueInteger = 1
* item[=].item[=].answerOption[+].valueInteger = 2
* item[=].item[=].answerOption[+].valueInteger = 3
* item[=].item[=].answerOption[+].valueInteger = 4
* item[=].item[=].answerOption[+].valueInteger = 5
* item[=].item[=].extension.url = "http://example.org/fhir/TestTimeExtension"

// B3 
* item[=].item[+].linkId = "B-I-lift-pencil-front"
* item[=].item[=].text = "使用三爪卡盤抓握來拿起鉛筆"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerOption[0].valueInteger = 0
* item[=].item[=].answerOption[+].valueInteger = 1
* item[=].item[=].answerOption[+].valueInteger = 2
* item[=].item[=].answerOption[+].valueInteger = 3
* item[=].item[=].answerOption[+].valueInteger = 4
* item[=].item[=].answerOption[+].valueInteger = 5
* item[=].item[=].extension.url = "http://example.org/fhir/TestTimeExtension"

// B4
* item[=].item[+].linkId = "B-I-pick-up-paper-clip-front"
* item[=].item[=].text = "用鉗子抓取回形針"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerOption[0].valueInteger = 0
* item[=].item[=].answerOption[+].valueInteger = 1
* item[=].item[=].answerOption[+].valueInteger = 2
* item[=].item[=].answerOption[+].valueInteger = 3
* item[=].item[=].answerOption[+].valueInteger = 4
* item[=].item[=].answerOption[+].valueInteger = 5
* item[=].item[=].extension.url = "http://example.org/fhir/TestTimeExtension"

// B5
* item[=].item[+].linkId = "B-I-stack-checkers-front"
* item[=].item[=].text = "將棋子堆疊到中心棋子上"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerOption[0].valueInteger = 0
* item[=].item[=].answerOption[+].valueInteger = 1
* item[=].item[=].answerOption[+].valueInteger = 2
* item[=].item[=].answerOption[+].valueInteger = 3
* item[=].item[=].answerOption[+].valueInteger = 4
* item[=].item[=].answerOption[+].valueInteger = 5
* item[=].item[=].extension.url = "http://example.org/fhir/TestTimeExtension"

// B6
* item[=].item[+].linkId = "B-I-flip-3-cards-front"
* item[=].item[=].text = "用鉗子抓握，客戶嘗試翻轉每張卡片"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerOption[0].valueInteger = 0
* item[=].item[=].answerOption[+].valueInteger = 1
* item[=].item[=].answerOption[+].valueInteger = 2
* item[=].item[=].answerOption[+].valueInteger = 3
* item[=].item[=].answerOption[+].valueInteger = 4
* item[=].item[=].answerOption[+].valueInteger = 5
* item[=].item[=].extension.url = "http://example.org/fhir/TestTimeExtension"

// B7
* item[=].item[+].linkId = "B-I-turning-the-key-in-lock-front"
* item[=].item[=].text = "使用鉗子抓握並保持接觸，將鑰匙向左和向右旋轉 180 度"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerOption[0].valueInteger = 0
* item[=].item[=].answerOption[+].valueInteger = 1
* item[=].item[=].answerOption[+].valueInteger = 2
* item[=].item[=].answerOption[+].valueInteger = 3
* item[=].item[=].answerOption[+].valueInteger = 4
* item[=].item[=].answerOption[+].valueInteger = 5
* item[=].item[=].extension.url = "http://example.org/fhir/TestTimeExtension"

// B8
* item[=].item[+].linkId = "B-I-fold-towel-front"
* item[=].item[=].text = "抓住毛巾，縱向折疊，然後用被測試的手將毛巾再次對折"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerOption[0].valueInteger = 0
* item[=].item[=].answerOption[+].valueInteger = 1
* item[=].item[=].answerOption[+].valueInteger = 2
* item[=].item[=].answerOption[+].valueInteger = 3
* item[=].item[=].answerOption[+].valueInteger = 4
* item[=].item[=].answerOption[+].valueInteger = 5
* item[=].item[=].extension.url = "http://example.org/fhir/TestTimeExtension"

// B9
* item[=].item[+].linkId = "B-I-lift-basket-standing"
* item[=].item[=].text = "提起一個椅子上 3 磅重的籃子，並將其放在床頭櫃上"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerOption[0].valueInteger = 0
* item[=].item[=].answerOption[+].valueInteger = 1
* item[=].item[=].answerOption[+].valueInteger = 2
* item[=].item[=].answerOption[+].valueInteger = 3
* item[=].item[=].answerOption[+].valueInteger = 4
* item[=].item[=].answerOption[+].valueInteger = 5
* item[=].item[=].extension.url = "http://example.org/fhir/TestTimeExtension"

// B 分量表分數顯示（自動計算）
* item[=].item[+].linkId = "B-timed-integrative-functional-movements-subscore"
* item[=].item[=].text = "B.定時關節段運動分量表分數"
* item[=].item[=].type = #integer
* item[=].item[=].readOnly = true
* item[=].item[=].extension[0].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-calculatedExpression"
* item[=].item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].item[=].extension[=].valueExpression.expression = "%TimedIntegrativeFunctionalMovementScore"

// 轉換為Observation
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-observationExtract"
* item[=].item[=].extension[=].valueBoolean = true

// ============================================
// Section C：總分計算
// ============================================
* item[+].linkId = "C-total-score-WMFT"
* item[=].text = "C.WMFT總分計算"
* item[=].type = #integer
* item[=].required = true
* item[=].extension[0].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-calculatedExpression"
* item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].extension[=].valueExpression.expression = "%resource.item.descendants().where(type='choice').answer.valueInteger.sum()"

// 轉換為Observation
* item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-observationExtract"
* item[=].extension[=].valueBoolean = true