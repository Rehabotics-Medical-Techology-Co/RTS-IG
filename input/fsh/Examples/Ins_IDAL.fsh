Instance: IDALQuestionnaireInstance
InstanceOf: SPACQuestionnaire
Usage: #definition

* version = "1.0.0"
* name = "IDALQuestionnaireInstance"
* title = "IDAL評估問卷"
* description = "IADL評估問卷"
* status = #active
* date = "2025-10-01"
* purpose = "提供標準化的上肢感覺評估工具，用於中風復健評估"
* subjectType = #Patient

* item[0].linkId = "A-telephone"
* item[=].text = "A.使用電話"
* item[=].type = #choice
* item[=].answerOption[0].extension.url = "http://hl7.org/fhir/StructureDefinition/rendering-style"
* item[=].answerOption[=].extension.valueString = "能獨立使用電話，含查電話簿、撥號等"
* item[=].answerOption[=].valueInteger = 4
* item[=].answerOption[=].initialSelected = true
* item[=].answerOption[+].extension.url = "http://hl7.org/fhir/StructureDefinition/rendering-style"
* item[=].answerOption[=].extension.valueString = "僅能撥熟悉的電話號碼"
* item[=].answerOption[=].valueInteger = 3
* item[=].answerOption[+].extension.url = "http://hl7.org/fhir/StructureDefinition/rendering-style"
* item[=].answerOption[=].extension.valueString = "僅能接電話，但不能撥電話"
* item[=].answerOption[=].valueInteger = 2
* item[=].answerOption[+].extension.url = "http://hl7.org/fhir/StructureDefinition/rendering-style"
* item[=].answerOption[=].extension.valueString = "完全不能使用電話"
* item[=].answerOption[=].valueInteger = 1
* item[+].linkId = "B-shopping"
* item[=].text = "B.購物"
* item[=].type = #choice
* item[=].answerOption[0].extension.url = "http://hl7.org/fhir/StructureDefinition/rendering-style"
* item[=].answerOption[=].extension.valueString = "能獨立完成所有購物需求"
* item[=].answerOption[=].valueInteger = 4
* item[=].answerOption[+].extension.url = "http://hl7.org/fhir/StructureDefinition/rendering-style"
* item[=].answerOption[=].extension.valueString = "只能獨立購買日常生活用品"
* item[=].answerOption[=].valueInteger = 3
* item[=].answerOption[+].extension.url = "http://hl7.org/fhir/StructureDefinition/rendering-style"
* item[=].answerOption[=].extension.valueString = "每一次購物都需要有人陪"
* item[=].answerOption[=].valueInteger = 2
* item[=].answerOption[+].extension.url = "http://hl7.org/fhir/StructureDefinition/rendering-style"
* item[=].answerOption[=].extension.valueString = "完全不能獨自購物"
* item[=].answerOption[=].valueInteger = 1
* item[+].linkId = "C-food-preparation"
* item[=].text = "C.備餐"
* item[=].type = #choice
* item[=].answerOption[0].extension.url = "http://hl7.org/fhir/StructureDefinition/rendering-style"
* item[=].answerOption[=].extension.valueString = "能獨立計畫、準備食材及佐料、烹煮和擺設一頓飯菜"
* item[=].answerOption[=].valueInteger = 4
* item[=].answerOption[+].extension.url = "http://hl7.org/fhir/StructureDefinition/rendering-style"
* item[=].answerOption[=].extension.valueString = "如果準備好一切食材及佐料，能做一頓飯菜"
* item[=].answerOption[=].valueInteger = 3
* item[=].answerOption[+].extension.url = "http://hl7.org/fhir/StructureDefinition/rendering-style"
* item[=].answerOption[=].extension.valueString = "能將已做好的飯菜加熱"
* item[=].answerOption[=].valueInteger = 2
* item[=].answerOption[+].extension.url = "http://hl7.org/fhir/StructureDefinition/rendering-style"
* item[=].answerOption[=].extension.valueString = "需要別人把飯菜煮好、擺好"
* item[=].answerOption[=].valueInteger = 1
* item[+].linkId = "D-housekeeping"
* item[=].text = "D.處理家務"
* item[=].type = #choice
* item[=].answerOption[0].extension.url = "http://hl7.org/fhir/StructureDefinition/rendering-style"
* item[=].answerOption[=].extension.valueString = "能單獨處理家事，或偶爾需要協助較繁重的家事"
* item[=].answerOption[=].valueInteger = 4
* item[=].answerOption[+].extension.url = "http://hl7.org/fhir/StructureDefinition/rendering-style"
* item[=].answerOption[=].extension.valueString = "能做較簡單的家事，如洗碗、擦桌子"
* item[=].answerOption[=].valueInteger = 3
* item[=].answerOption[+].extension.url = "http://hl7.org/fhir/StructureDefinition/rendering-style"
* item[=].answerOption[=].extension.valueString = "能做較簡單的家事，但不能達到可接受的清潔程度"
* item[=].answerOption[=].valueInteger = 2
* item[=].answerOption[+].extension.url = "http://hl7.org/fhir/StructureDefinition/rendering-style"
* item[=].answerOption[=].extension.valueString = "所有的家事都需要別人協助方能完成"
* item[=].answerOption[=].valueInteger = 1
* item[+].linkId = "E-laundry"
* item[=].text = "E.洗衣服"
* item[=].type = #choice
* item[=].answerOption[0].extension.url = "http://hl7.org/fhir/StructureDefinition/rendering-style"
* item[=].answerOption[=].extension.valueString = "自己清洗所有衣物"
* item[=].answerOption[=].valueInteger = 3
* item[=].answerOption[+].extension.url = "http://hl7.org/fhir/StructureDefinition/rendering-style"
* item[=].answerOption[=].extension.valueString = "需部份協助"
* item[=].answerOption[=].valueInteger = 2
* item[=].answerOption[+].extension.url = "http://hl7.org/fhir/StructureDefinition/rendering-style"
* item[=].answerOption[=].extension.valueString = "需完全協助"
* item[=].answerOption[=].valueInteger = 1
* item[+].linkId = "F-transportation"
* item[=].text = "F.外出"
* item[=].type = #choice
* item[=].answerOption[0].extension.url = "http://hl7.org/fhir/StructureDefinition/rendering-style"
* item[=].answerOption[=].extension.valueString = "能夠自己開車、騎車或自己搭乘大眾運輸工具"
* item[=].answerOption[=].valueInteger = 5
* item[=].answerOption[+].extension.url = "http://hl7.org/fhir/StructureDefinition/rendering-style"
* item[=].answerOption[=].extension.valueString = "能夠自己搭乘計程車，但不能搭乘大眾運輸工具"
* item[=].answerOption[=].valueInteger = 4
* item[=].answerOption[+].extension.url = "http://hl7.org/fhir/StructureDefinition/rendering-style"
* item[=].answerOption[=].extension.valueString = "當有人陪同時，可搭乘大眾運輸工具"
* item[=].answerOption[=].valueInteger = 3
* item[=].answerOption[+].extension.url = "http://hl7.org/fhir/StructureDefinition/rendering-style"
* item[=].answerOption[=].extension.valueString = "只能在有人協助或陪同時，可搭乘計程車或自用車"
* item[=].answerOption[=].valueInteger = 2
* item[=].answerOption[+].extension.url = "http://hl7.org/fhir/StructureDefinition/rendering-style"
* item[=].answerOption[=].extension.valueString = "完全不能出門"
* item[=].answerOption[=].valueInteger = 1
* item[+].linkId = "G-medications"
* item[=].text = "G.服用藥物"
* item[=].type = #choice
* item[=].answerOption[0].extension.url = "http://hl7.org/fhir/StructureDefinition/rendering-style"
* item[=].answerOption[=].extension.valueString = "能自己負責在正確的時間用正確的藥物"
* item[=].answerOption[=].valueInteger = 3
* item[=].answerOption[+].extension.url = "http://hl7.org/fhir/StructureDefinition/rendering-style"
* item[=].answerOption[=].extension.valueString = "如果事先準備好服用的藥物份量，可自行服用"
* item[=].answerOption[=].valueInteger = 2
* item[=].answerOption[+].extension.url = "http://hl7.org/fhir/StructureDefinition/rendering-style"
* item[=].answerOption[=].extension.valueString = "完全不能自己服用藥物"
* item[=].answerOption[=].valueInteger = 1
* item[+].linkId = "H-finances"
* item[=].text = "H.處理財務的能力"
* item[=].type = #choice
* item[=].answerOption[0].extension.url = "http://hl7.org/fhir/StructureDefinition/rendering-style"
* item[=].answerOption[=].extension.valueString = "可以獨立處理財務"
* item[=].answerOption[=].valueInteger = 3
* item[=].answerOption[+].extension.url = "http://hl7.org/fhir/StructureDefinition/rendering-style"
* item[=].answerOption[=].extension.valueString = "可以處理日常的購買，但需別人協助與銀行往來或大宗買賣"
* item[=].answerOption[=].valueInteger = 2
* item[=].answerOption[+].extension.url = "http://hl7.org/fhir/StructureDefinition/rendering-style"
* item[=].answerOption[=].extension.valueString = "完全不能處理錢財"
* item[=].answerOption[=].valueInteger = 1

// ============================================
// Section C：總分計算
// ============================================
* item[+].linkId = "I-total-score-IADL"
* item[=].text = "I.IADL總分計算"
* item[=].type = #integer
* item[=].required = true
* item[=].extension[0].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-calculatedExpression"
* item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].extension[=].valueExpression.expression = "%resource.item.answer.valueInteger.sum()"

// 轉換為Observation
* item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-observationExtract"
* item[=].extension[=].valueBoolean = true

// SDC 4 requires versionAlgorithm when version is present.
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/artifact-versionAlgorithm"
* extension[=].valueCoding = http://hl7.org/fhir/version-algorithm#semver "SemVer"
