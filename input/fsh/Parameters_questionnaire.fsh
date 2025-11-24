// ================================================
// SearchParameters
// ================================================

// ------------------------------------------------
// Questionnaire SearchParameters
// ------------------------------------------------

Instance: QuestionnaireIdentifier
InstanceOf: SearchParameter
Usage: #definition
* url = "https://build.fhir.org/ig/Kimsber/Rehab-IG/SearchParameter/QuestionnaireIdentifier"
* name = "QuestionnaireIdentifier"
* status = #active
* description = "問卷識別碼"
* code = #identifier
* base = #Questionnaire
* type = #token

Instance: QuestionnaireTitle
InstanceOf: SearchParameter
Usage: #definition
* url = "https://build.fhir.org/ig/Kimsber/Rehab-IG/SearchParameter/QuestionnaireTitle"
* name = "QuestionnaireTitle"
* status = #active
* description = "問卷標題"
* code = #title
* base = #Questionnaire
* type = #string

Instance: QuestionnaireLinkID
InstanceOf: SearchParameter
Usage: #definition
* url = "https://build.fhir.org/ig/Kimsber/Rehab-IG/SearchParameter/QuestionnaireLinkID"
* name = "QuestionnaireLinkID"
* status = #active
* description = "問卷項目"
* code = #LinkID
* base = #Questionnaire
* type = #string

// ------------------------------------------------
// QuestionnaireResponse SearchParameters
// ------------------------------------------------

Instance: QuestionnaireResponseId
InstanceOf: SearchParameter
Usage: #definition
* url = "https://build.fhir.org/ig/Kimsber/Rehab-IG/SearchParameter/QuestionnaireResponseId"
* name = "QuestionnaireResponseId"
* status = #active
* description = "搜尋QuestionnaireResponse的_id參數"
* code = #_id
* base = #QuestionnaireResponse
* type = #token
* expression = "QuestionnaireResponse.id"

Instance: QuestionnaireResponsePatient
InstanceOf: SearchParameter
Usage: #definition
* url = "https://build.fhir.org/ig/Kimsber/Rehab-IG/SearchParameter/QuestionnaireResponsePatient"
* name = "QuestionnaireResponsePatient"
* status = #active
* description = "搜尋QuestionnaireResponse的patient參數"
* code = #patient
* base = #QuestionnaireResponse
* type = #reference
* expression = "QuestionnaireResponse.subject.where(resolve() is Patient)"

Instance: QuestionnaireResponseStatus
InstanceOf: SearchParameter
Usage: #definition
* url = "https://build.fhir.org/ig/Kimsber/Rehab-IG/SearchParameter/QuestionnaireResponseStatus"
* name = "QuestionnaireResponseStatus"
* status = #active
* description = "搜尋QuestionnaireResponse的status參數"
* code = #status
* base = #QuestionnaireResponse
* type = #token
* expression = "QuestionnaireResponse.status"

Instance: QuestionnaireResponseAuthored
InstanceOf: SearchParameter
Usage: #definition
* url = "https://build.fhir.org/ig/Kimsber/Rehab-IG/SearchParameter/QuestionnaireResponseAuthored"
* name = "QuestionnaireResponseAuthored"
* status = #active
* description = "搜尋QuestionnaireResponse的authored參數"
* code = #authored
* base = #QuestionnaireResponse
* type = #date
* expression = "QuestionnaireResponse.authored"

Instance: QuestionnaireResponseQuestionnaire
InstanceOf: SearchParameter
Usage: #definition
* url = "https://build.fhir.org/ig/Kimsber/Rehab-IG/SearchParameter/QuestionnaireResponseQuestionnaire"
* name = "QuestionnaireResponseQuestionnaire"
* status = #active
* description = "搜尋QuestionnaireResponse的questionnaire參數"
* code = #questionnaire
* base = #QuestionnaireResponse
* type = #reference
* expression = "QuestionnaireResponse.questionnaire"

Instance: QuestionnaireResponseSubject
InstanceOf: SearchParameter
Usage: #definition
* url = "https://build.fhir.org/ig/Kimsber/Rehab-IG/SearchParameter/QuestionnaireResponseSubject"
* name = "QuestionnaireResponseSubject"
* status = #active
* description = "問卷回應主體"
* code = #subject
* base = #QuestionnaireResponse
* type = #reference

Instance: QuestionnaireResponseLinkID
InstanceOf: SearchParameter
Usage: #definition
* url = "https://build.fhir.org/ig/Kimsber/Rehab-IG/SearchParameter/QuestionnaireResponseLinkID"
* name = "QuestionnaireResponseLinkID"
* status = #active
* description = "問卷標題"
* code = #LinkID
* base = #Questionnaire
* type = #string
