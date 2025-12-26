// ============================================
// Profile 定義：評估問卷
// ============================================
Profile: SPACQuestionnaire 
// 這是問卷裡面的標準結構，可用來定義此IG需要使用到的Questionnaire基本欄位，若有其他需求可新增Questionnaire Profile並Parent 此Profile
// 原則上Questionnaire 不會設置Profile，Usage 直接設example 即可
Parent: SDCQuestionnaireExtractObservation
// http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-extr-obsn
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
