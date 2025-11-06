// ================================================
// SearchParameters
// ================================================

// ------------------------------------------------
// Questionnaire SearchParameters
// ------------------------------------------------

Instance: QuestionnaireIdentifier
InstanceOf: SearchParameter
Usage: #definition
* url = "http://example.org/fhir/SearchParameter/Questionnaire-identifier"
* name = "QuestionnaireIdentifier"
* status = #active
* description = "問卷識別碼"
* code = #identifier
* base = #Questionnaire
* type = #token

Instance: QuestionnaireTitle
InstanceOf: SearchParameter
Usage: #definition
* url = "http://example.org/fhir/SearchParameter/Questionnaire-title"
* name = "QuestionnaireTitle"
* status = #active
* description = "問卷標題"
* code = #title
* base = #Questionnaire
* type = #string

Instance: QuestionnaireLinkID
InstanceOf: SearchParameter
Usage: #definition
* url = "http://example.org/fhir/SearchParameter/Questionnaire-LinkID"
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
* url = "http://example.org/fhir/SearchParameter/QuestionnaireResponse-_id"
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
* url = "http://example.org/fhir/SearchParameter/QuestionnaireResponse-patient"
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
* url = "http://example.org/fhir/SearchParameter/QuestionnaireResponse-status"
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
* url = "http://example.org/fhir/SearchParameter/QuestionnaireResponse-authored"
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
* url = "http://example.org/fhir/SearchParameter/QuestionnaireResponse-questionnaire"
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
* url = "http://example.org/fhir/SearchParameter/QuestionnaireResponse-subject"
* name = "QuestionnaireResponseSubject"
* status = #active
* description = "問卷回應主體"
* code = #subject
* base = #QuestionnaireResponse
* type = #reference

Instance: QuestionnaireResponseLinkID
InstanceOf: SearchParameter
Usage: #definition
* url = "http://example.org/fhir/SearchParameter/QuestionnaireResponse-LinkID"
* name = "QuestionnaireResponseLinkID"
* status = #active
* description = "問卷標題"
* code = #LinkID
* base = #Questionnaire
* type = #string
