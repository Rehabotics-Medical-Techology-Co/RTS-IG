// 問卷填入的值
Alias: $loinc = http://loinc.org

Instance: BarthelIndexExample
InstanceOf: BarthelQuestionnaireResponse
Usage: #example
* status = #completed
* subject.reference = "http://example.org/fhir/Questionnaire/BarthelQuestionnaire"
* status = #completed
* subject = Reference(Patient/stroke-patient-001) "張先生"
* authored = "2025-10-11T14:30:00+08:00"
* author = Reference(Practitioner/ot-therapist-001) "復健治療師 - 李小姐"

// Section 1 答案
* item[feeding].linkId = "A-feeding"
* item[feeding].text = "進食 (Feeding)"
* item[feeding].answer.valueCoding = $loinc#LA31630-9

// Section 2 答案
* item[grooming].linkId = "B-grooming"
* item[grooming].text = "個人衛生 (Grooming)"
* item[grooming].answer.valueCoding = $loinc#LA31643-2

// Section 3 答案
* item[toiletuse].linkId = "C-toiletUse"
* item[toiletuse].text = "上廁所 (Toilet Use)"
* item[toiletuse].answer.valueCoding = $loinc#LA31631-7

// Section 4 答案
* item[bathing].linkId = "D-bathing"
* item[bathing].text = "洗澡 (Bathing)"
* item[bathing].answer.valueCoding  = $loinc#LA12304-4

// Section 5 答案
* item[dressing].linkId = "E-dressing"
* item[dressing].text = "穿脫衣服 (Dressing)"
* item[dressing].answer.valueCoding = $loinc#LA31637-4

// Section 6 答案
* item[bowels].linkId = "F-bowels"
* item[bowels].text = "大便控制 (Bowels)"
* item[bowels].answer.valueCoding = $loinc#LA31627-5

// Section 7 答案
* item[bladder].linkId = "G-bladder"
* item[bladder].text = "小便控制 (Bladder)"
* item[bladder].answer.valueCoding = $loinc#LA31626-7

// Section 8 答案
* item[mobility].linkId = "H-mobility"
* item[mobility].text = "平地行走 (Mobility)"
* item[mobility].answer.valueCoding = $loinc#LA31640-8

// Section 9 答案
* item[stairs].linkId = "I-stairs"
* item[stairs].text = "上下樓梯 (Stairs)"
* item[stairs].answer.valueCoding = $loinc#LA31629-1

// Section 10 答案
* item[transfer].linkId = "J-transfer"
* item[transfer].text = "移位(Transfer)"
* item[transfer].answer.valueCoding = $loinc#LA12302-8

// Section 10 答案
* item[total].linkId = "K-total-score-Barthel"
* item[total].text = "巴氏量表總分"
* item[total].answer.valueInteger = 100