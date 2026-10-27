Instance: SPACQuestionnaireResponseExample
InstanceOf: SPACQuestionnaireResponse
Usage: #example
Title: "General assessment response example"
Description: "A completed two-item response demonstrating the shared assessment response profile."
* questionnaire = Canonical(BBTQuestionnaire)
* status = #completed
* subject = Reference(PatientExample)
* authored = "2025-10-11T15:00:00+08:00"
* item[0].linkId = "left-hand"
* item[=].answer.valueInteger = 31
* item[1].linkId = "right-hand"
* item[=].answer.valueInteger = 63

Instance: ReponseBundleExample
InstanceOf: ReponseBundle
Usage: #example
Title: "Complete assessment transaction bundle"
Description: "A transaction example containing the profiles required by ReponseBundle."
* identifier.value = "reponse-bundle-example-001"
* type = #transaction
* timestamp = "2025-10-11T15:30:00+08:00"

* entry[Patient].fullUrl = "https://build.fhir.org/ig/Rehabotics-Medical-Techology-Co/RTS-IG/Patient/stroke-patient-001"
* entry[Patient].resource = PatientExample
* entry[Patient].request.method = #PUT
* entry[Patient].request.url = "Patient/stroke-patient-001"

* entry[Condition].fullUrl = "https://build.fhir.org/ig/Rehabotics-Medical-Techology-Co/RTS-IG/Condition/ConditionExample01"
* entry[Condition].resource = ConditionExample01
* entry[Condition].request.method = #PUT
* entry[Condition].request.url = "Condition/ConditionExample01"

* entry[Organization].fullUrl = "https://build.fhir.org/ig/Rehabotics-Medical-Techology-Co/RTS-IG/Organization/OrganizationExample"
* entry[Organization].resource = OrganizationExample
* entry[Organization].request.method = #PUT
* entry[Organization].request.url = "Organization/OrganizationExample"

* entry[Practitioner].fullUrl = "https://build.fhir.org/ig/Rehabotics-Medical-Techology-Co/RTS-IG/Practitioner/ot-therapist-001"
* entry[Practitioner].resource = PractitionerExample
* entry[Practitioner].request.method = #PUT
* entry[Practitioner].request.url = "Practitioner/ot-therapist-001"

* entry[Practitioner-Role].fullUrl = "https://build.fhir.org/ig/Rehabotics-Medical-Techology-Co/RTS-IG/PractitionerRole/PractitionerRoleExample"
* entry[Practitioner-Role].resource = PractitionerRoleExample
* entry[Practitioner-Role].request.method = #PUT
* entry[Practitioner-Role].request.url = "PractitionerRole/PractitionerRoleExample"

* entry[QR-FMAUE-Motion].fullUrl = "https://build.fhir.org/ig/Rehabotics-Medical-Techology-Co/RTS-IG/QuestionnaireResponse/FMAUEMotorQuestionnaireResponseExample"
* entry[QR-FMAUE-Motion].resource = FMAUEMotorQuestionnaireResponseExample
* entry[QR-FMAUE-Motion].request.method = #PUT
* entry[QR-FMAUE-Motion].request.url = "QuestionnaireResponse/FMAUEMotorQuestionnaireResponseExample"

* entry[QR-FMAUE-Sensory].fullUrl = "https://build.fhir.org/ig/Rehabotics-Medical-Techology-Co/RTS-IG/QuestionnaireResponse/FMAUESensoryQuestionnaireResponseExample"
* entry[QR-FMAUE-Sensory].resource = FMAUESensoryQuestionnaireResponseExample
* entry[QR-FMAUE-Sensory].request.method = #PUT
* entry[QR-FMAUE-Sensory].request.url = "QuestionnaireResponse/FMAUESensoryQuestionnaireResponseExample"

* entry[QR-ARAT].fullUrl = "https://build.fhir.org/ig/Rehabotics-Medical-Techology-Co/RTS-IG/QuestionnaireResponse/arat-response-example-001"
* entry[QR-ARAT].resource = ARATQuestionnaireResponseExample
* entry[QR-ARAT].request.method = #PUT
* entry[QR-ARAT].request.url = "QuestionnaireResponse/arat-response-example-001"

* entry[QR-WMFT].fullUrl = "https://build.fhir.org/ig/Rehabotics-Medical-Techology-Co/RTS-IG/QuestionnaireResponse/WMFTQuestionnaireResponseExample"
* entry[QR-WMFT].resource = WMFTQuestionnaireResponseExample
* entry[QR-WMFT].request.method = #PUT
* entry[QR-WMFT].request.url = "QuestionnaireResponse/WMFTQuestionnaireResponseExample"

* entry[QR-IADL].fullUrl = "https://build.fhir.org/ig/Rehabotics-Medical-Techology-Co/RTS-IG/QuestionnaireResponse/IDALQuestionnaireResponseInstance"
* entry[QR-IADL].resource = IDALQuestionnaireResponseInstance
* entry[QR-IADL].request.method = #PUT
* entry[QR-IADL].request.url = "QuestionnaireResponse/IDALQuestionnaireResponseInstance"

* entry[QR-MAS].fullUrl = "https://build.fhir.org/ig/Rehabotics-Medical-Techology-Co/RTS-IG/QuestionnaireResponse/MASQuestionnaireResponseExample"
* entry[QR-MAS].resource = MASQuestionnaireResponseExample
* entry[QR-MAS].request.method = #PUT
* entry[QR-MAS].request.url = "QuestionnaireResponse/MASQuestionnaireResponseExample"

* entry[QR-MRC].fullUrl = "https://build.fhir.org/ig/Rehabotics-Medical-Techology-Co/RTS-IG/QuestionnaireResponse/MRCQuestionnaireResponseExample"
* entry[QR-MRC].resource = MRCQuestionnaireResponseExample
* entry[QR-MRC].request.method = #PUT
* entry[QR-MRC].request.url = "QuestionnaireResponse/MRCQuestionnaireResponseExample"

* entry[QR-MMSE].fullUrl = "https://build.fhir.org/ig/Rehabotics-Medical-Techology-Co/RTS-IG/QuestionnaireResponse/MMSEQuestionnaireResponseExample"
* entry[QR-MMSE].resource = MMSEQuestionnaireResponseExample
* entry[QR-MMSE].request.method = #PUT
* entry[QR-MMSE].request.url = "QuestionnaireResponse/MMSEQuestionnaireResponseExample"

* entry[QR-Barthel].fullUrl = "https://build.fhir.org/ig/Rehabotics-Medical-Techology-Co/RTS-IG/QuestionnaireResponse/BarthelIndexExample"
* entry[QR-Barthel].resource = BarthelIndexExample
* entry[QR-Barthel].request.method = #PUT
* entry[QR-Barthel].request.url = "QuestionnaireResponse/BarthelIndexExample"

* entry[QR-BBT].fullUrl = "https://build.fhir.org/ig/Rehabotics-Medical-Techology-Co/RTS-IG/QuestionnaireResponse/BBTExample"
* entry[QR-BBT].resource = BBTExample
* entry[QR-BBT].request.method = #PUT
* entry[QR-BBT].request.url = "QuestionnaireResponse/BBTExample"
