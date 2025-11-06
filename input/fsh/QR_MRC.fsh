Profile: MRCQuestionnaireResponse
Parent: SPACQuestionnaireResponse
Id: MRCQuestionnaireResponse
Description: "MRC問卷回覆"
* status 1..1 MS    
* status = #completed (exactly)
* questionnaire 1..1 MS
* questionnaire only canonical
* questionnaire = Canonical(MRCQuestionnaireInstance)
// 須包含這些題目
* item ^slicing.discriminator[0].type = #value
* item ^slicing.discriminator[0].path = "linkId"
* item ^slicing.rules = #closed
* item contains
    abduction-arm 1..1 MS and
    flexion-forearm 1..1 MS and
    extension-wrist 1..1 MS
// --- 1 肩關節外展 ---
* item[abduction-arm].linkId = "abduction-arm" (exactly)
* item[abduction-arm].text = "肩關節外展"
* item[abduction-arm].answer 1..1 MS
* item[abduction-arm].answer.value[x] only integer
* item[abduction-arm].answer.valueInteger ^minValueInteger = 0
* item[abduction-arm].answer.valueInteger ^maxValueInteger = 5
// ---2 前臂屈曲 --- 
* item[flexion-forearm].linkId = "flexion-forearm" (exactly)
* item[flexion-forearm].text = "前臂屈曲"
* item[flexion-forearm].answer 1..1 MS
* item[flexion-forearm].answer.value[x] only integer
* item[flexion-forearm].answer.valueInteger ^minValueInteger = 0
* item[flexion-forearm].answer.valueInteger ^maxValueInteger = 5
// ---3 手腕向上伸張 ---
* item[extension-wrist].linkId = "extension-wrist" (exactly)
* item[extension-wrist].text = "手腕向上伸張"
* item[extension-wrist].answer 1..1 MS
* item[extension-wrist].answer.value[x] only integer
* item[extension-wrist].answer.valueInteger ^minValueInteger = 0
* item[extension-wrist].answer.valueInteger ^maxValueInteger = 5