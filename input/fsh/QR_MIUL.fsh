Profile: MIULQuestionnaireResponse
Parent: SPACQuestionnaireResponse
Title: "MIUL 問卷回覆profile"
Description: "MIUL 問卷回覆，用於記錄患者的上肢運動功能評估結果。"
* questionnaire = Canonical(MIULQuuestionnaireInstance) (exactly)
* status 1..1
* authored 1..1 
* item 4..4 // 4題必填
* item.answer.valueInteger obeys miul-range

Invariant: miul-range
Description: "Score must be between 0 and 33"
Severity: #error
Expression: " value <= 33 and value >= 0"


