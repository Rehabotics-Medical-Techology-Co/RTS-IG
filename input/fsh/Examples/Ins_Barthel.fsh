Alias: $loinc = http://loinc.org
Instance: BarthelQuestionnaireInstance 
InstanceOf: SPACQuestionnaire //用questionnaire 這個resource
Usage: #definition
Title: "巴氏量表"
Description: "巴氏量表 (Barthel Index)"
* status = #active
// Section 1:進食 (Feeding)
* item[0].linkId = "A-feeding"
* item[=].text = "進食 (Feeding)"
* item[=].type = #choice
* item[=].answerOption[0].valueCoding = $loinc#LA12302-8
* item[=].answerOption[=].valueCoding.display = "Independent"
// 自己在合理時間(約 10 秒鐘吃一口)可用筷子取食眼前的食物。若需進食輔具時，應會自行穿脫。
* item[=].answerOption[=].extension.url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].answerOption[=].extension.valueDecimal = 10
* item[=].answerOption[+].valueCoding = $loinc#LA31630-9
* item[=].answerOption[=].valueCoding.display = "Needs help cutting, spreading butter, etc., or requires modified diet"
// 需別人幫忙穿脫輔具或只會用湯匙進食。
* item[=].answerOption[=].extension.url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].answerOption[=].extension.valueDecimal = 5
* item[=].answerOption[+].valueCoding = $loinc#LA24937-7
* item[=].answerOption[=].valueCoding.display = "Unable"
// 無法自行取食或耗費時間過長。
* item[=].answerOption[=].extension.url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].answerOption[=].extension.valueDecimal = 0

// Section 2:個人衛生 (Grooming)
* item[+].linkId = "B-grooming"
* item[=].text = "個人衛生 (Grooming)"
* item[=].type = #choice
* item[=].answerOption[0].valueCoding = $loinc#LA31644-0
* item[=].answerOption[=].valueCoding.display = "Independent face/hair/teeth/shaving (implements provided)"
// 可以自行洗手、刷牙、洗臉及梳頭。
* item[=].answerOption[=].extension.url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].answerOption[=].extension.valueDecimal = 5
* item[=].answerOption[+].valueCoding = $loinc#LA31643-2
* item[=].answerOption[=].valueCoding.display = "Needs help with personal care"
// 需要他人部份或完全協助。
* item[=].answerOption[=].extension.url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].answerOption[=].extension.valueDecimal = 0

// Section 3:上廁所 (Toilet Use)
* item[+].linkId = "C-toiletUse"
* item[=].text = "上廁所 (Toilet Use)"
* item[=].type = #choice
* item[=].answerOption[0].valueCoding = $loinc#LA31632-5
* item[=].answerOption[=].valueCoding.display = "Independent (on and off, dressing, wiping)"
// 可自行上下馬桶、穿脫衣服、不弄髒衣服、會自行使用衛生紙擦拭。
* item[=].answerOption[=].extension.url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].answerOption[=].extension.valueDecimal = 10
* item[=].answerOption[+].valueCoding = $loinc#LA31631-7
* item[=].answerOption[=].valueCoding.display = "Needs some help, but can do something alone"
// 需要協助保持姿勢的平衡、整理衣服或用衛生紙。
* item[=].answerOption[=].extension.url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].answerOption[=].extension.valueDecimal = 5
* item[=].answerOption[+].valueCoding = $loinc#LA12304-4
* item[=].answerOption[=].valueCoding.display = "Dependent"
// 無法自己完成。
* item[=].answerOption[=].extension.url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].answerOption[=].extension.valueDecimal = 0

// Section 4:洗澡 (Bathing)
* item[+].linkId = "D-bathing"
* item[=].text = "洗澡 (Bathing)"
* item[=].type = #choice
* item[=].answerOption[0].valueCoding = $loinc#LA31636-6
* item[=].answerOption[=].valueCoding.display = "Independent (or in shower)"
// 能獨立完成(不論是盆浴或沐浴)，不需別人在旁。
* item[=].answerOption[=].extension.url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].answerOption[=].extension.valueDecimal = 5
* item[=].answerOption[+].valueCoding = $loinc#LA12304-4
* item[=].answerOption[=].valueCoding.display = "Dependent"
// 需別人協助。
* item[=].answerOption[=].extension.url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].answerOption[=].extension.valueDecimal = 0

//Section 5:穿脫衣服 (Dressing)
* item[+].linkId = "E-dressing"
* item[=].text = "穿脫衣服 (Dressing)"
* item[=].type = #choice
* item[=].answerOption[0].valueCoding = $loinc#LA31638-2
* item[=].answerOption[=].valueCoding.display = "Independent (including buttons, zips, laces, etc.)"
// 能自己穿脫衣服、鞋子，自己扣釦子、上拉鍊或綁鞋帶。
* item[=].answerOption[=].extension.url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].answerOption[=].extension.valueDecimal = 10
* item[=].answerOption[+].valueCoding = $loinc#LA31637-4
* item[=].answerOption[=].valueCoding.display = "Needs help but can do about half unaided"
// 在別人協助下，可自己完成一半以上的動作。
* item[=].answerOption[=].extension.url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].answerOption[=].extension.valueDecimal = 5
* item[=].answerOption[+].valueCoding = $loinc#LA12304-4
* item[=].answerOption[=].valueCoding.display = "Dependent"
// 不會自己做。
* item[=].answerOption[=].extension.url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].answerOption[=].extension.valueDecimal = 0

// Section 6:大便控制 (Bowels)
* item[+].linkId = "F-bowels"
* item[=].text = "大便控制 (Bowels)"
* item[=].type = #choice
* item[=].answerOption[0].valueCoding = $loinc#LA31625-9
* item[=].answerOption[=].valueCoding.display = "Continent"
// 不會失禁，能自行灌腸或使用塞劑。
* item[=].answerOption[=].extension.url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].answerOption[=].extension.valueDecimal = 10
* item[=].answerOption[+].valueCoding = $loinc#LA31626-7
* item[=].answerOption[=].valueCoding.display = "Occasional accident"
// 偶爾會失禁(每週不超過一次)，需要他人協助使用灌腸或塞劑。
* item[=].answerOption[=].extension.url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].answerOption[=].extension.valueDecimal = 5
* item[=].answerOption[+].valueCoding = $loinc#LA31627-5
* item[=].answerOption[=].valueCoding.display = "Incontinent (or needs to be given enemas)"
// 失禁，無法自己控制且需他人處理。
* item[=].answerOption[=].extension.url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].answerOption[=].extension.valueDecimal = 0

// Section 7:小便控制 (Bladder)
* item[+].linkId = "G-bladder"
* item[=].text = "小便控制 (Bladder)"
* item[=].type = #choice
* item[=].answerOption[0].valueCoding = $loinc#LA31625-9
* item[=].answerOption[=].valueCoding.display = "Continent"
// 能自己控制不會有失禁，或能自行使用並清潔尿套、尿袋。
* item[=].answerOption[=].extension.url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].answerOption[=].extension.valueDecimal = 10
* item[=].answerOption[+].valueCoding = $loinc#LA31626-7
* item[=].answerOption[=].valueCoding.display = "Occasional accident"
// 偶爾會失禁(每週不超過一次)或尿急(無法等待放好便盆或及時趕到廁 所)或需要他人協助處理尿套。
* item[=].answerOption[=].extension.url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].answerOption[=].extension.valueDecimal = 5
* item[=].answerOption[+].valueCoding = $loinc#LA31628-3
* item[=].answerOption[=].valueCoding.display = "Incontinent, or catheterized and unable to manage alone"
// 失禁，無法自己控制且需他人處理。
* item[=].answerOption[=].extension.url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].answerOption[=].extension.valueDecimal = 0

// Section 8: 平地行走 (Mobility)
* item[+].linkId = "H-mobility"
* item[=].text = "平地行走 (Mobility)"
* item[=].type = #choice
* item[=].answerOption[0].valueCoding = $loinc#LA31642-4
* item[=].answerOption[=].valueCoding.display = "Independent (but may use any aid; for example, stick) >50 yards"
// 使用或不使用輔具，皆可獨立行走 50 公尺以上。
* item[=].answerOption[=].extension.url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].answerOption[=].extension.valueDecimal = 15
* item[=].answerOption[+].valueCoding = $loinc#LA31641-6
* item[=].answerOption[=].valueCoding.display = "Walks with help of one person (verbal or physical) >50 yards"
// 需他人稍微扶持或口頭指導才能行走 50 公尺以上。
* item[=].answerOption[=].extension.url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].answerOption[=].extension.valueDecimal = 10
* item[=].answerOption[+].valueCoding = $loinc#LA31640-8
* item[=].answerOption[=].valueCoding.display = "Wheelchair independent, including corners, >50 yards"
// 雖無法行走，但可以操作輪椅(包括轉彎、進門及接近桌子、床沿)並可 推行輪椅 50 公尺以上。
* item[=].answerOption[=].extension.url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].answerOption[=].extension.valueDecimal = 5
* item[=].answerOption[+].valueCoding = $loinc#LA31639-0
* item[=].answerOption[=].valueCoding.display = "Immobile or <50 yards"
// 完全無法自行行走，需別人幫忙推輪椅。
* item[=].answerOption[=].extension.url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].answerOption[=].extension.valueDecimal = 0

// Section 9: 上下樓梯 (Stairs)
* item[+].linkId = "I-stairs"
* item[=].text = "上下樓梯 (Stairs)"
* item[=].type = #choice
* item[=].answerOption[0].valueCoding = $loinc#LA12302-8
* item[=].answerOption[=].valueCoding.display = "Independent"
// 可自行上下樓梯，可使用扶手、柺杖等輔具。
* item[=].answerOption[=].extension.url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].answerOption[=].extension.valueDecimal = 10
* item[=].answerOption[+].valueCoding = $loinc#LA31629-1
* item[=].answerOption[=].valueCoding.display = "Needs help (verbal, physical, carrying aid)"
// 需他人協助或監督才能上下樓梯。
* item[=].answerOption[=].extension.url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].answerOption[=].extension.valueDecimal = 5
* item[=].answerOption[+].valueCoding = $loinc#LA24937-7
* item[=].answerOption[=].valueCoding.display = "Unable"
// 無法上下樓梯。
* item[=].answerOption[=].extension.url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].answerOption[=].extension.valueDecimal = 0

// Section 10: 移位(Transfer)
* item[+].linkId = "J-transfer"
* item[=].text = "移位(Transfer)"
* item[=].type = #choice
* item[=].answerOption[0].valueCoding = $loinc#LA12302-8
* item[=].answerOption[=].valueCoding.display = "Independent"
//* item[=].answerOption[=].valueCoding.text = "整個過程可獨立完成。"
* item[=].answerOption[=].extension.url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].answerOption[=].extension.valueDecimal = 15
* item[=].answerOption[+].valueCoding = $loinc#LA31635-8
* item[=].answerOption[=].valueCoding.display = "Minor help (verbal or physical)"
//* item[=].answerOption[=].valueCoding.text = "移動身體時需要稍微協助、給予提醒、安全監督。"
* item[=].answerOption[=].extension.url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].answerOption[=].extension.valueDecimal = 10
* item[=].answerOption[+].valueCoding = $loinc#LA31634-1
* item[=].answerOption[=].valueCoding.display = "Major help (one or two people, physical), can sit"
// 可以自行坐起，但從床上坐起時或移動身體時需要他人協助。
* item[=].answerOption[=].extension.url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].answerOption[=].extension.valueDecimal = 5
* item[=].answerOption[+].valueCoding = $loinc#LA31633-3
* item[=].answerOption[=].valueCoding.display = "Unable, no sitting balance"
// 不會自己移動。
* item[=].answerOption[=].extension.url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].answerOption[=].extension.valueDecimal = 0

// 總分 (Total Score)
* item[+].linkId = "K-total-score-Barthel"
* item[=].text = "巴氏量表總分"
* item[=].type = #integer
* item[=].required = false
* item[=].readOnly = true
* item[=].extension[0].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-calculatedExpression"
* item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].extension[=].valueExpression.expression = "%resource.item.where(linkId != 'K-total-score-Barthel').answer.value.extension('http://hl7.org/fhir/StructureDefinition/ordinalValue').value.sum()"
// 轉換為Observation
* item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-observationExtract"
* item[=].extension[=].valueBoolean = true

// SDC 4 requires versionAlgorithm when version is present.
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/artifact-versionAlgorithm"
* extension[=].valueCoding = http://hl7.org/fhir/version-algorithm#semver "SemVer"
