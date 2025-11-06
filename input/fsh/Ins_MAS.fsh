Alias: $SCT = http://snomed.info/sct
Instance: MASQuestionnaireInstance
InstanceOf: SPACQuestionnaire
Usage: #definition
Title: "MAS評估量表"
Description: "評估肌肉張力"
* status = #active

// 左側肩
* item[0].linkId = "left-shoulder"
* item[=].text = "左側肩"
* item[=].code = $SCT#91775009
* item[=].type = #choice
* item[=].required = true
* item[=].answerValueSet = Canonical(VSMAScore)

// 左側手腕
* item[0].linkId = "left-wrist"
* item[=].text = "左側手腕"
* item[=].code = $SCT#5951000
* item[=].type = #choice
* item[=].required = true
* item[=].answerValueSet = Canonical(VSMAScore)
// 左手
* item[0].linkId = "left-hand"
* item[=].text = "左手"
* item[=].code = $SCT#85151006
* item[=].type = #choice
* item[=].required = true
* item[=].answerValueSet = Canonical(VSMAScore)

// 右側肩
* status = #active
* item[0].linkId = "right-shoulder"
* item[=].text = "右側肩"
* item[=].code = $SCT#91774008
* item[=].type = #choice
* item[=].required = true
* item[=].answerValueSet = Canonical(VSMAScore)
// 右側手腕
* item[0].linkId = "right-wrist"
* item[=].text = "右側手腕"
* item[=].code = $SCT#9736006
* item[=].type = #choice
* item[=].required = true
* item[=].answerValueSet = Canonical(VSMAScore)
// 右手
* item[0].linkId = "right-hand"
* item[=].text = "右手"
* item[=].code = $SCT#78791008
* item[=].type = #choice
* item[=].required = true
* item[=].answerValueSet = Canonical(VSMAScore)
