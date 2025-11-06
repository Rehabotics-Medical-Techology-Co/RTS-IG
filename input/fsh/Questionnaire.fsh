// ============================================
// Profile 定義：評估問卷
// ============================================
Profile: SPACQuestionnaire
Parent: http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-extr-obsn
Id: SPACQuestionnaire
Title: "評估問卷"
Description: "評估問卷的結構化定義，實際問卷內容請參考Structure: Questionnaire，可依據前者內容做為範本進行擴充"

// 問卷的基本屬性
* url MS
* identifier MS
* version MS
* name MS
* title MS
* status MS
* description MS
* item 1..* MS
