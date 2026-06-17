// ============================================
// TCT QuestionnaireResponse Profile
// ============================================
Profile: TCTQuestionnaireResponse
Parent: SPACQuestionnaireResponse
Title: "Trunk Control Test (TCT) 評估量表profile"
Description: "軀幹控制測試問卷回應，用於記錄病患在TCT評估中的表現結果。"
* status = #completed
* subject 1..1
* subject only Reference(Patient)
* authored 1..1

* item ^slicing.discriminator[0].type = #value
* item ^slicing.discriminator[0].path = "linkId"
* item ^slicing.rules = #open

* item contains
    roll-to-weak-side 1..1 MS and
    roll-to-strong-side 1..1 MS and
    balance-sitting 1..1 MS and
    sit-from-lying-down 1..1 MS and
    tct-total 1..1 MS

// 每題都要有一個答案，答案型別限定為 Coding，並綁定到 TCT 分數值集
* item[roll-to-weak-side].linkId = "roll-to-weak-side" (exactly)
* item[roll-to-weak-side].answer 1..1 MS
* item[roll-to-weak-side].answer.value[x] only Coding
* item[roll-to-weak-side].answer.valueCoding from VSTCT (required)

* item[roll-to-strong-side].linkId = "roll-to-strong-side" (exactly)
* item[roll-to-strong-side].answer 1..1 MS
* item[roll-to-strong-side].answer.value[x] only Coding
* item[roll-to-strong-side].answer.valueCoding from VSTCT (required)

* item[balance-sitting].linkId = "balance-sitting" (exactly)
* item[balance-sitting].answer 1..1 MS
* item[balance-sitting].answer.value[x] only Coding
* item[balance-sitting].answer.valueCoding from VSTCT (required)

* item[sit-from-lying-down].linkId = "sit-from-lying-down" (exactly)
* item[sit-from-lying-down].answer 1..1 MS
* item[sit-from-lying-down].answer.value[x] only Coding
* item[sit-from-lying-down].answer.valueCoding from VSTCT (required)

* item[tct-total].linkId = "tct-total" (exactly)
* item[tct-total].answer 1..1 MS
* item[tct-total].answer.value[x] only integer
