//BBT
Instance: BBTQuestionnaire
//InstanceOf: SPACQuestionnaire
InstanceOf: Questionnaire
Usage: #definition
Title: "BBT評估量表"
Description: "評估手部功能"
* status = #active
* item[0].linkId = "left-hand"
* item[0].text = "左手移動的積木數"
* item[0].type = #integer
* item[0].required = true

* item[1].linkId = "right-hand"
* item[1].text = "右手移動的積木數"
* item[1].type = #integer
* item[1].required = true