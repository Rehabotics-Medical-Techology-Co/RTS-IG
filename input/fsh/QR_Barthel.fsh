Alias: $loinc = http://loinc.org
Profile: BarthelQuestionnaireResponse
Parent: SPACQuestionnaireResponse
Id: BarthelQuestionnaireResponse
Title: "巴氏量表問卷回覆"
Description: "針對巴氏量表問卷的QuestionnaireResponse Profile，強制回傳格式符合問卷結構"
* status 1..1 MS
* status = #completed (exactly)

* questionnaire 1..1 MS
* questionnaire only canonical
* questionnaire = Canonical(BarthelQuestionnaireInstance) // 如果有修改Questionnaire 名稱需修改

// 必須剛好這些題（10 題 +總分）
* item ^slicing.discriminator[0].type = #value
* item ^slicing.discriminator[0].path = "linkId"
* item ^slicing.rules = #closed
* item contains
    feeding 1..1 MS and
    grooming 1..1 MS and
    toiletuse 1..1 MS and
    bathing 1..1 MS and
    dressing 1..1 MS and
    bowels 1..1 MS and
    bladder 1..1 MS and
    mobility 1..1 MS and
    stairs 1..1 MS and
    transfer 1..1 MS and
    total 1..1 MS

// --- 1 進食 ---
* item[feeding].linkId = "A-feeding" (exactly)
* item[feeding].text = "進食 (Feeding)"
* item[feeding].answer 1..1 MS
* item[feeding].answer.value[x] only Coding 

/* item[feeding].answer.valueCoding from VSBarthelFeeding (required)*/
* item[feeding] ^short = "進食分數 對應到LOINC代碼"

// --- 2 個人衛生 ---
* item[grooming].linkId = "B-grooming" (exactly)
* item[grooming].text = "個人衛生 (Grooming)"
* item[grooming] ^short = "個人衛生分數 對應到LOINC代碼"
* item[grooming].answer 1..1
* item[grooming].answer.value[x] only Coding
/* item[grooming].answer.valueCoding from VSBarthelGrooming (required)*/

// --- 3 上廁所 ---
* item[toiletuse].linkId = "C-toiletUse" (exactly)
* item[toiletuse].text = "上廁所 (Toilet Use)"
* item[toiletuse] ^short = "上廁所分數 對應到LOINC代碼"
* item[toiletuse].answer 1..1
* item[toiletuse].answer.value[x] only Coding
/* item[toiletuse].answer.valueCoding from VSBarthelToiletUse (required)*/

// --- 4 洗澡 ---
* item[bathing].linkId = "D-bathing" (exactly)
* item[bathing].text = "洗澡 (Bathing)"
* item[bathing] ^short = "洗澡分數 對應到LOINC代碼"
* item[bathing].answer 1..1
* item[bathing].answer.value[x] only Coding
/* item[bathing].answer.valueCoding from VSBarthelBathing (required)*/

// --- 5 穿脫衣服 ---
* item[dressing].linkId = "E-dressing" (exactly)
* item[dressing].text = "穿脫衣服 (Dressing)"
* item[grooming] ^short = "穿脫衣服分數 對應到LOINC代碼"
* item[dressing].answer 1..1
* item[dressing].answer.value[x] only Coding
/* item[dressing].answer.valueCoding from VSBarthelDressing (required)*/

// --- 6 大便控制 ---
* item[bowels].linkId = "F-bowels" (exactly)
* item[bowels].text = "大便控制 (Bowels)"
* item[bowels] ^short = "大便控制分數 對應到LOINC代碼"
* item[bowels].answer 1..1
* item[bowels].answer.value[x] only Coding
/* item[bowels].answer.valueCoding from VSBarthelBowels (required)*/

// --- 7 小便控制 ---
* item[bladder].linkId = "G-bladder" (exactly)
* item[bladder].text = "小便控制 (Bladder)"
* item[bladder] ^short = "小便控制分數 對應到LOINC代碼"
* item[bladder].answer 1..1
* item[bladder].answer.value[x] only Coding
/*/ item[bladder].answer.valueCoding from VSBarthelBladder (required)*/

// --- 8 平地行走 ---
* item[mobility].linkId = "H-mobility" (exactly)
* item[mobility].text = "平地行走 (Mobility)"
* item[mobility] ^short = "平地行走分數 對應到LOINC代碼"
* item[mobility].answer 1..1
* item[mobility].answer.value[x] only Coding
/* item[mobility].answer.valueCoding from VSBarthelMobility (required)*/

// --- 9 上下樓梯 ---
* item[stairs].linkId = "I-stairs" (exactly)
* item[stairs].text = "上下樓梯 (Stairs)"
* item[stairs] ^short = "上下樓梯分數 對應到LOINC代碼"
* item[stairs].answer 1..1
* item[stairs].answer.value[x] only Coding
/* item[stairs].answer.valueCoding from VSBarthelStairs (required)*/

// --- 10 移位 ---
* item[transfer].linkId = "J-transfer" (exactly)
* item[transfer].text = "移位(Transfer)"
* item[transfer] ^short = "移位分數 對應到LOINC代碼"
* item[transfer].answer 1..1
* item[transfer].answer.value[x] only Coding
/* item[transfer].answer.valueCoding from VSBarthelTransfer (required)*/

* item[total].linkId = "K-total-score-Barthel" (exactly) 
* item[total].text = "巴氏量表總分"
* item[total].answer 1..1
* item[total].answer.value[x] only integer
* item[total].answer.valueInteger ^minValueInteger = 0
* item[total].answer.valueInteger ^maxValueInteger = 100
