// ================================================
// SearchParameters and Operations
// ================================================

// ================================================
// Operations
// ================================================

Instance: PatientEverythingOperation
InstanceOf: OperationDefinition
Usage: #definition
* url = "https://build.fhir.org/ig/Kimsber/Rehab-IG/OperationDefinition/PatientEverythingOperation"
* name = "PatientEverythingOperation"
* title = "Patient Everything Operation"
* status = #active
* kind = #operation
* code = #everything
* resource = #Patient
* system = false
* type = false
* instance = true
* description = "取得該病人完整相關資源快照，回傳一個包含所有相關資源的Bundle"

// 輸出參數
* parameter[0].name = #return
* parameter[=].use = #out
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].type = #Bundle
* parameter[=].documentation = "包含所有相關資源的Bundle"

// ================================================
// SearchParameters
// ================================================

// ------------------------------------------------
// Bundle SearchParameters
// ------------------------------------------------

Instance: BundleId
InstanceOf: SearchParameter
Usage: #definition
* url = "https://build.fhir.org/ig/Kimsber/Rehab-IG/SearchParameter/BundleId"
* name = "BundleId"
* status = #active
* description = "搜尋Bundle的_id參數"
* code = #_id
* base = #Bundle
* type = #token
* expression = "Bundle.id"

Instance: BundleIdentifier
InstanceOf: SearchParameter
Usage: #definition
* url = "https://build.fhir.org/ig/Kimsber/Rehab-IG/SearchParameter/BundleIdentifier"
* name = "BundleIdentifier"
* status = #active
* description = "搜尋Bundle的identifier參數"
* code = #identifier
* base = #Bundle
* type = #token
* expression = "Bundle.identifier"

// ------------------------------------------------
// CarePlan SearchParameters
// ------------------------------------------------

Instance: CarePlanPatient
InstanceOf: SearchParameter
Usage: #definition
* url = "https://build.fhir.org/ig/Kimsber/Rehab-IG/SearchParameter/CarePlanPatient"
* name = "CarePlanPatient"
* status = #active
* description = "搜尋CarePlan的patient參數"
* code = #patient
* base = #CarePlan
* type = #reference
* expression = "CarePlan.subject.where(resolve() is Patient)"

Instance: CarePlanCategory
InstanceOf: SearchParameter
Usage: #definition
* url = "https://build.fhir.org/ig/Kimsber/Rehab-IG/SearchParameter/CarePlanCategory"
* name = "CarePlanCategory"
* status = #active
* description = "搜尋CarePlan的category參數"
* code = #category
* base = #CarePlan
* type = #token
* expression = "CarePlan.category"

Instance: CarePlanDate
InstanceOf: SearchParameter
Usage: #definition
* url = "https://build.fhir.org/ig/Kimsber/Rehab-IG/SearchParameter/CarePlanDate"
* name = "CarePlanDate"
* status = #active
* description = "搜尋CarePlan的date參數"
* code = #date
* base = #CarePlan
* type = #date
* expression = "CarePlan.period"

Instance: CarePlanStatus
InstanceOf: SearchParameter
Usage: #definition
* url = "https://build.fhir.org/ig/Kimsber/Rehab-IG/SearchParameter/CarePlanStatus"
* name = "CarePlanStatus"
* status = #active
* description = "搜尋CarePlan的status參數"
* code = #status
* base = #CarePlan
* type = #token
* expression = "CarePlan.status"

// ------------------------------------------------
// Condition SearchParameters
// ------------------------------------------------

Instance: ConditionId
InstanceOf: SearchParameter
Usage: #definition
* url = "https://build.fhir.org/ig/Kimsber/Rehab-IG/SearchParameter/ConditionId"
* name = "ConditionId"
* status = #active
* description = "搜尋Condition的_id參數"
* code = #_id
* base = #Condition
* type = #token
* expression = "Condition.id"

Instance: ConditionClinicalstatus
InstanceOf: SearchParameter
Usage: #definition
* url = "https://build.fhir.org/ig/Kimsber/Rehab-IG/SearchParameter/ConditionClinicalstatus"
* name = "ConditionClinicalstatus"
* status = #active
* description = "搜尋Condition的clinical-status參數"
* code = #clinical-status
* base = #Condition
* type = #token
* expression = "Condition.clinicalStatus"

Instance: ConditionCode
InstanceOf: SearchParameter
Usage: #definition
* url = "https://build.fhir.org/ig/Kimsber/Rehab-IG/SearchParameter/ConditionCode"
* name = "ConditionCode"
* status = #active
* description = "搜尋Condition的code參數"
* code = #code
* base = #Condition
* type = #token
* expression = "Condition.code"

Instance: ConditionSubject
InstanceOf: SearchParameter
Usage: #definition
* url = "https://build.fhir.org/ig/Kimsber/Rehab-IG/SearchParameter/ConditionSubject"
* name = "ConditionSubject"
* status = #active
* description = "搜尋Condition的subject參數"
* code = #subject
* base = #Condition
* type = #reference
* expression = "Condition.subject"

Instance: ConditionOnsetdate
InstanceOf: SearchParameter
Usage: #definition
* url = "https://build.fhir.org/ig/Kimsber/Rehab-IG/SearchParameter/ConditionOnsetdate"
* name = "ConditionOnsetdate"
* status = #active
* description = "搜尋Condition的onset-date參數"
* code = #onset-date
* base = #Condition
* type = #date
* expression = "Condition.onset.as(dateTime)|Condition.onset.as(Period)"

Instance: ConditionAbatementdate
InstanceOf: SearchParameter
Usage: #definition
* url = "https://build.fhir.org/ig/Kimsber/Rehab-IG/SearchParameter/ConditionAbatementdate"
* name = "ConditionAbatementdate"
* status = #active
* description = "搜尋Condition的abatement-date參數"
* code = #abatement-date
* base = #Condition
* type = #date
* expression = "Condition.abatement.as(dateTime)"

Instance: ConditionSeverity
InstanceOf: SearchParameter
Usage: #definition
* url = "https://build.fhir.org/ig/Kimsber/Rehab-IG/SearchParameter/ConditionSeverity"
* name = "ConditionSeverity"
* status = #active
* description = "搜尋Condition的severity參數"
* code = #severity
* base = #Condition
* type = #token
* expression = "Condition.severity"

// ------------------------------------------------
// Encounter SearchParameters
// ------------------------------------------------

Instance: EncounterId
InstanceOf: SearchParameter
Usage: #definition
* url = "https://build.fhir.org/ig/Kimsber/Rehab-IG/SearchParameter/EncounterId"
* name = "EncounterId"
* status = #active
* description = "搜尋Encounter的_id參數"
* code = #_id
* base = #Encounter
* type = #token
* expression = "Encounter.id"

Instance: EncounterClass
InstanceOf: SearchParameter
Usage: #definition
* url = "https://build.fhir.org/ig/Kimsber/Rehab-IG/SearchParameter/EncounterClass"
* name = "EncounterClass"
* status = #active
* description = "搜尋Encounter的class參數"
* code = #class
* base = #Encounter
* type = #token
* expression = "Encounter.class"

Instance: EncounterDate
InstanceOf: SearchParameter
Usage: #definition
* url = "https://build.fhir.org/ig/Kimsber/Rehab-IG/SearchParameter/EncounterDate"
* name = "EncounterDate"
* status = #active
* description = "搜尋Encounter的date參數"
* code = #date
* base = #Encounter
* type = #date
* expression = "Encounter.period"

Instance: EncounterIdentifier
InstanceOf: SearchParameter
Usage: #definition
* url = "https://build.fhir.org/ig/Kimsber/Rehab-IG/SearchParameter/EncounterIdentifier"
* name = "EncounterIdentifier"
* status = #active
* description = "搜尋Encounter的identifier參數"
* code = #identifier
* base = #Encounter
* type = #token
* expression = "Encounter.identifier"

Instance: EncounterLocation
InstanceOf: SearchParameter
Usage: #definition
* url = "https://build.fhir.org/ig/Kimsber/Rehab-IG/SearchParameter/EncounterLocation"
* name = "EncounterLocation"
* status = #active
* description = "搜尋Encounter的location參數"
* code = #location
* base = #Encounter
* type = #reference
* expression = "Encounter.location"

Instance: EncounterSubject
InstanceOf: SearchParameter
Usage: #definition
* url = "https://build.fhir.org/ig/Kimsber/Rehab-IG/SearchParameter/EncounterSubject"
* name = "EncounterSubject"
* status = #active
* description = "搜尋Encounter的subject參數"
* code = #subject
* base = #Encounter
* type = #reference
* expression = "Encounter.subject"

Instance: EncounterStatus
InstanceOf: SearchParameter
Usage: #definition
* url = "https://build.fhir.org/ig/Kimsber/Rehab-IG/SearchParameter/EncounterStatus"
* name = "EncounterStatus"
* status = #active
* description = "搜尋Encounter的status參數"
* code = #status
* base = #Encounter
* type = #token
* expression = "Encounter.status"

// ------------------------------------------------
// Goal SearchParameters
// ------------------------------------------------

Instance: GoalPatient
InstanceOf: SearchParameter
Usage: #definition
* url = "https://build.fhir.org/ig/Kimsber/Rehab-IG/SearchParameter/GoalPatient"
* name = "GoalPatient"
* status = #active
* description = "搜尋Goal的patient參數"
* code = #patient
* base = #Goal
* type = #reference
* expression = "Goal.subject.where(resolve() is Patient)"

Instance: GoalLifecyclestatus
InstanceOf: SearchParameter
Usage: #definition
* url = "https://build.fhir.org/ig/Kimsber/Rehab-IG/SearchParameter/GoalLifecyclestatus"
* name = "GoalLifecyclestatus"
* status = #active
* description = "搜尋Goal的lifecycle-status參數"
* code = #lifecycle-status
* base = #Goal
* type = #token
* expression = "Goal.lifecycleStatus"

Instance: GoalTargetdate
InstanceOf: SearchParameter
Usage: #definition
* url = "https://build.fhir.org/ig/Kimsber/Rehab-IG/SearchParameter/GoalTargetdate"
* name = "GoalTargetdate"
* status = #active
* description = "搜尋Goal的target-date參數"
* code = #target-date
* base = #Goal
* type = #date
* expression = "(Goal.target.due.ofType(date))"

Instance: GoalDescription
InstanceOf: SearchParameter
Usage: #definition
* url = "https://build.fhir.org/ig/Kimsber/Rehab-IG/SearchParameter/GoalDescription"
* name = "GoalDescription"
* status = #active
* description = "搜尋Goal的description參數"
* code = #description
* base = #Goal
* type = #token
* expression = "Goal.description"

// ------------------------------------------------
// MedicationAdministration SearchParameters
// ------------------------------------------------

Instance: MedicationAdministrationCode
InstanceOf: SearchParameter
Usage: #definition
* url = "https://build.fhir.org/ig/Kimsber/Rehab-IG/SearchParameter/MedicationAdministrationCode"
* name = "MedicationAdministrationCode"
* status = #active
* description = "Return administrations of this medication code"
* code = #code
* base = #MedicationAdministration
* type = #token
* expression = "MedicationAdministration.medication.as(CodeableConcept)"

Instance: MedicationAdministrationIdentifier
InstanceOf: SearchParameter
Usage: #definition
* url = "https://build.fhir.org/ig/Kimsber/Rehab-IG/SearchParameter/MedicationAdministrationIdentifier"
* name = "MedicationAdministrationIdentifier"
* status = #active
* description = "Return administrations with this external identifier"      
* code = #identifier
* base = #MedicationAdministration
* type = #token
* expression = "MedicationAdministration.identifier"

Instance: MedicationAdministrationMedication
InstanceOf: SearchParameter
Usage: #definition
* url = "https://build.fhir.org/ig/Kimsber/Rehab-IG/SearchParameter/MedicationAdministrationMedication"
* name = "MedicationAdministrationMedication"
* status = #active
* description = "Return administrations of this medication resource"
* code = #medication
* base = #MedicationAdministration
* type = #reference
* expression = "MedicationAdministration.medication.as(Reference)"

Instance: MedicationAdministrationPatient
InstanceOf: SearchParameter
Usage: #definition
* url = "https://build.fhir.org/ig/Kimsber/Rehab-IG/SearchParameter/MedicationAdministrationPatient"
* name = "MedicationAdministrationPatient"
* status = #active
* description = "The identity of a patient to list administrations for"
* code = #patient
* base = #MedicationAdministration
* type = #reference
* expression = "MedicationAdministration.subject.where(resolve() is Patient)"

Instance: MedicationAdministrationStatus
InstanceOf: SearchParameter
Usage: #definition
* url = "https://build.fhir.org/ig/Kimsber/Rehab-IG/SearchParameter/MedicationAdministrationStatus"
* name = "MedicationAdministrationStatus"
* status = #active
* description = "MedicationAdministration event status (for example one of active/paused/completed/nullified)"
* code = #status
* base = #MedicationAdministration
* type = #token
* expression = "MedicationAdministration.status"

Instance: MedicationAdministrationContext
InstanceOf: SearchParameter
Usage: #definition
* url = "https://build.fhir.org/ig/Kimsber/Rehab-IG/SearchParameter/MedicationAdministrationContext"
* name = "MedicationAdministrationContext"
* status = #active
* description = "Return administrations that share this encounter or episode of care"
* code = #context
* base = #MedicationAdministration
* type = #reference
* expression = "MedicationAdministration.context"

Instance: MedicationAdministrationDevice
InstanceOf: SearchParameter
Usage: #definition
* url = "https://build.fhir.org/ig/Kimsber/Rehab-IG/SearchParameter/MedicationAdministrationDevice"
* name = "MedicationAdministrationDevice"
* status = #active
* description = "Return administrations with this administration device identity"
* code = #device
* base = #MedicationAdministration
* type = #reference
* expression = "MedicationAdministration.device"

Instance: MedicationAdministrationEffectivetime
InstanceOf: SearchParameter
Usage: #definition
* url = "https://build.fhir.org/ig/Kimsber/Rehab-IG/SearchParameter/MedicationAdministrationEffectivetime"
* name = "MedicationAdministrationEffectivetime"
* status = #active
* description = "Date administration happened (or did not happen)"
* code = #effective-time
* base = #MedicationAdministration
* type = #date
* expression = "MedicationAdministration.effective"

Instance: MedicationAdministrationPerformer
InstanceOf: SearchParameter
Usage: #definition
* url = "https://build.fhir.org/ig/Kimsber/Rehab-IG/SearchParameter/MedicationAdministrationPerformer"
* name = "MedicationAdministrationPerformer"
* status = #active
* description = "The identity of the individual who administered the medication"
* code = #performer
* base = #MedicationAdministration
* type = #reference
* expression = "MedicationAdministration.performer.actor"

Instance: MedicationAdministrationReasongiven
InstanceOf: SearchParameter
Usage: #definition
* url = "https://build.fhir.org/ig/Kimsber/Rehab-IG/SearchParameter/MedicationAdministrationReasongiven"
* name = "MedicationAdministrationReasongiven"
* status = #active
* description = "Reasons for administering the medication"
* code = #reason-given
* base = #MedicationAdministration
* type = #token
* expression = "MedicationAdministration.reasonCode"

Instance: MedicationAdministrationReasonnotgiven
InstanceOf: SearchParameter
Usage: #definition
* url = "https://build.fhir.org/ig/Kimsber/Rehab-IG/SearchParameter/MedicationAdministrationReasonnotgiven"
* name = "MedicationAdministrationReasonnotgiven"
* status = #active
* description = "Reasons for not administering the medication"
* code = #reason-not-given
* base = #MedicationAdministration
* type = #token
* expression = "MedicationAdministration.statusReason"

Instance: MedicationAdministrationRequest
InstanceOf: SearchParameter
Usage: #definition
* url = "https://build.fhir.org/ig/Kimsber/Rehab-IG/SearchParameter/MedicationAdministrationRequest"
* name = "MedicationAdministrationRequest"
* status = #active
* description = "The identity of a request to list administrations from"
* code = #request
* base = #MedicationAdministration
* type = #reference
* expression = "MedicationAdministration.request"

Instance: MedicationAdministrationSubject
InstanceOf: SearchParameter
Usage: #definition
* url = "https://build.fhir.org/ig/Kimsber/Rehab-IG/SearchParameter/MedicationAdministrationSubject"
* name = "MedicationAdministrationSubject"
* status = #active
* description = "The identity of the individual or group to list administrations for"
* code = #subject
* base = #MedicationAdministration
* type = #reference
* expression = "MedicationAdministration.subject"

// ------------------------------------------------
// Observation SearchParameters
// ------------------------------------------------

Instance: ObservationId
InstanceOf: SearchParameter
Usage: #definition
* url = "https://build.fhir.org/ig/Kimsber/Rehab-IG/SearchParameter/ObservationId"
* name = "ObservationId"
* status = #active
* description = "搜尋Observation的_id參數"
* code = #_id
* base = #Observation
* type = #token
* expression = "Observation.id"

Instance: ObservationCategory
InstanceOf: SearchParameter
Usage: #definition
* url = "https://build.fhir.org/ig/Kimsber/Rehab-IG/SearchParameter/ObservationCategory"
* name = "ObservationCategory"
* status = #active
* description = "搜尋Observation的category參數"
* code = #category
* base = #Observation
* type = #token
* expression = "Observation.category"

Instance: ObservationCode
InstanceOf: SearchParameter
Usage: #definition
* url = "https://build.fhir.org/ig/Kimsber/Rehab-IG/SearchParameter/ObservationCode"
* name = "ObservationCode"
* status = #active
* description = "搜尋Observation的code參數"
* code = #code
* base = #Observation
* type = #token
* expression = "Observation.code"

Instance: ObservationDate
InstanceOf: SearchParameter
Usage: #definition
* url = "https://build.fhir.org/ig/Kimsber/Rehab-IG/SearchParameter/ObservationDate"
* name = "ObservationDate"
* status = #active
* description = "搜尋Observation的date參數"
* code = #date
* base = #Observation
* type = #date
* expression = "Observation.effective"

Instance: ObservationPerformer
InstanceOf: SearchParameter
Usage: #definition
* url = "https://build.fhir.org/ig/Kimsber/Rehab-IG/SearchParameter/ObservationPerformer"
* name = "ObservationPerformer"
* status = #active
* description = "搜尋Observation的performer參數"
* code = #performer
* base = #Observation
* type = #reference
* expression = "Observation.performer"

Instance: ObservationStatus
InstanceOf: SearchParameter
Usage: #definition
* url = "https://build.fhir.org/ig/Kimsber/Rehab-IG/SearchParameter/ObservationStatus"
* name = "ObservationStatus"
* status = #active
* description = "搜尋Observation的status參數"
* code = #status
* base = #Observation
* type = #token
* expression = "Observation.status"

Instance: ObservationSubject
InstanceOf: SearchParameter
Usage: #definition
* url = "https://build.fhir.org/ig/Kimsber/Rehab-IG/SearchParameter/ObservationSubject"
* name = "ObservationSubject"
* status = #active
* description = "搜尋Observation的subject參數"
* code = #subject
* base = #Observation
* type = #reference
* expression = "Observation.subject"

Instance: ObservationPatient
InstanceOf: SearchParameter
Usage: #definition
* url = "https://build.fhir.org/ig/Kimsber/Rehab-IG/SearchParameter/ObservationPatient"
* name = "ObservationPatient"
* status = #active
* description = "搜尋Observation的patient參數"
* code = #patient
* base = #Observation
* type = #reference
* expression = "Observation.subject.where(resolve() is Patient)"

Instance: ObservationLastupdated
InstanceOf: SearchParameter
Usage: #definition
* url = "https://build.fhir.org/ig/Kimsber/Rehab-IG/SearchParameter/ObservationLastupdated"
* name = "ObservationLastupdated"
* status = #active
* description = "搜尋Observation的_lastUpdated參數"
* code = #_lastUpdated
* base = #Observation
* type = #date
* expression = "Resource.meta.lastUpdated"

// ------------------------------------------------
// Organization SearchParameters
// ------------------------------------------------

Instance: OrganizationId
InstanceOf: SearchParameter
Usage: #definition
* url = "https://build.fhir.org/ig/Kimsber/Rehab-IG/SearchParameter/OrganizationId"
* name = "OrganizationId"
* status = #active
* description = "搜尋Organization的_id參數"
* code = #_id
* base = #Organization
* type = #token
* expression = "Organization.id"

Instance: OrganizationIdentifier
InstanceOf: SearchParameter
Usage: #definition
* url = "https://build.fhir.org/ig/Kimsber/Rehab-IG/SearchParameter/OrganizationIdentifier"
* name = "OrganizationIdentifier"
* status = #active
* description = "搜尋Organization的identifier參數"
* code = #identifier
* base = #Organization
* type = #token
* expression = "Organization.identifier"

Instance: OrganizationName
InstanceOf: SearchParameter
Usage: #definition
* url = "https://build.fhir.org/ig/Kimsber/Rehab-IG/SearchParameter/OrganizationName"
* name = "OrganizationName"
* status = #active
* description = "搜尋Organization的name參數"
* code = #name
* base = #Organization
* type = #string
* expression = "Organization.name"

Instance: OrganizationType
InstanceOf: SearchParameter
Usage: #definition
* url = "https://build.fhir.org/ig/Kimsber/Rehab-IG/SearchParameter/OrganizationType"
* name = "OrganizationType"
* status = #active
* description = "搜尋Organization的type參數"
* code = #type
* base = #Organization
* type = #token
* expression = "Organization.type"

// ------------------------------------------------
// Patient SearchParameters
// ------------------------------------------------

Instance: PatientId
InstanceOf: SearchParameter
Usage: #definition
* url = "https://build.fhir.org/ig/Kimsber/Rehab-IG/SearchParameter/PatientId"
* name = "PatientId"
* status = #active
* description = "搜尋Patient的_id參數"
* code = #_id
* base = #Patient
* type = #token
* expression = "Patient.id"

Instance: PatientBirthdate
InstanceOf: SearchParameter
Usage: #definition
* url = "https://build.fhir.org/ig/Kimsber/Rehab-IG/SearchParameter/PatientBirthdate"
* name = "PatientBirthdate"
* status = #active
* description = "搜尋Patient的birthdate參數"
* code = #birthdate
* base = #Patient
* type = #date
* expression = "Patient.birthDate"

Instance: PatientGender
InstanceOf: SearchParameter
Usage: #definition
* url = "https://build.fhir.org/ig/Kimsber/Rehab-IG/SearchParameter/PatientGender"
* name = "PatientGender"
* status = #active
* description = "搜尋Patient的gender參數"
* code = #gender
* base = #Patient
* type = #token
* expression = "Patient.gender"

Instance: PatientIdentifier
InstanceOf: SearchParameter
Usage: #definition
* url = "https://build.fhir.org/ig/Kimsber/Rehab-IG/SearchParameter/PatientIdentifier"
* name = "PatientIdentifier"
* status = #active
* description = "搜尋Patient的identifier參數"
* code = #identifier
* base = #Patient
* type = #token
* expression = "Patient.identifier"

Instance: PatientName
InstanceOf: SearchParameter
Usage: #definition
* url = "https://build.fhir.org/ig/Kimsber/Rehab-IG/SearchParameter/PatientName"
* name = "PatientName"
* status = #active
* description = "搜尋Patient的name參數"
* code = #name
* base = #Patient
* type = #string
* expression = "Patient.name"

// ------------------------------------------------
// Practitioner SearchParameters
// ------------------------------------------------

Instance: PractitionerId
InstanceOf: SearchParameter
Usage: #definition
* url = "https://build.fhir.org/ig/Kimsber/Rehab-IG/SearchParameter/PractitionerId"
* name = "PractitionerId"
* status = #active
* description = "搜尋Practitioner的_id參數"
* code = #_id
* base = #Practitioner
* type = #token
* expression = "Practitioner.id"

Instance: PractitionerIdentifier
InstanceOf: SearchParameter
Usage: #definition
* url = "https://build.fhir.org/ig/Kimsber/Rehab-IG/SearchParameter/PractitionerIdentifier"
* name = "PractitionerIdentifier"
* status = #active
* description = "搜尋Practitioner的identifier參數"
* code = #identifier
* base = #Practitioner
* type = #token
* expression = "Practitioner.identifier"

Instance: PractitionerName
InstanceOf: SearchParameter
Usage: #definition
* url = "https://build.fhir.org/ig/Kimsber/Rehab-IG/SearchParameter/PractitionerName"
* name = "PractitionerName"
* status = #active
* description = "搜尋Practitioner的name參數"
* code = #name
* base = #Practitioner
* type = #string
* expression = "Practitioner.name"

// ------------------------------------------------
// PractitionerRole SearchParameters
// ------------------------------------------------

Instance: PractitionerRoleId
InstanceOf: SearchParameter
Usage: #definition
* url = "https://build.fhir.org/ig/Kimsber/Rehab-IG/SearchParameter/PractitionerRoleId"
* name = "PractitionerRoleId"
* status = #active
* description = "搜尋PractitionerRole的_id參數"
* code = #_id
* base = #PractitionerRole
* type = #token
* expression = "PractitionerRole.id"

Instance: PractitionerRoleIdentifier
InstanceOf: SearchParameter
Usage: #definition
* url = "https://build.fhir.org/ig/Kimsber/Rehab-IG/SearchParameter/PractitionerRoleIdentifier"
* name = "PractitionerRoleIdentifier"
* status = #active
* description = "搜尋PractitionerRole的identifier參數"
* code = #identifier
* base = #PractitionerRole
* type = #token
* expression = "PractitionerRole.identifier"

Instance: PractitionerRoleSpecialty
InstanceOf: SearchParameter
Usage: #definition
* url = "https://build.fhir.org/ig/Kimsber/Rehab-IG/SearchParameter/PractitionerRoleSpecialty"
* name = "PractitionerRoleSpecialty"
* status = #active
* description = "搜尋PractitionerRole的specialty參數"
* code = #specialty
* base = #PractitionerRole
* type = #token
* expression = "PractitionerRole.specialty"

// ------------------------------------------------
// Procedure SearchParameters
// ------------------------------------------------

Instance: ProcedureId
InstanceOf: SearchParameter
Usage: #definition
* url = "https://build.fhir.org/ig/Kimsber/Rehab-IG/SearchParameter/ProcedureId"
* name = "ProcedureId"
* status = #active
* description = "搜尋Procedure的_id參數"
* code = #_id
* base = #Procedure
* type = #token
* expression = "Procedure.id"

Instance: ProcedureCode
InstanceOf: SearchParameter
Usage: #definition
* url = "https://build.fhir.org/ig/Kimsber/Rehab-IG/SearchParameter/ProcedureCode"
* name = "ProcedureCode"
* status = #active
* description = "搜尋Procedure的code參數"
* code = #code
* base = #Procedure
* type = #token
* expression = "Procedure.code"

Instance: ProcedureStatus
InstanceOf: SearchParameter
Usage: #definition
* url = "https://build.fhir.org/ig/Kimsber/Rehab-IG/SearchParameter/ProcedureStatus"
* name = "ProcedureStatus"
* status = #active
* description = "搜尋Procedure的status參數"
* code = #status
* base = #Procedure
* type = #token
* expression = "Procedure.status"

Instance: ProcedureSubject
InstanceOf: SearchParameter
Usage: #definition
* url = "https://build.fhir.org/ig/Kimsber/Rehab-IG/SearchParameter/ProcedureSubject"
* name = "ProcedureSubject"
* status = #active
* description = "搜尋Procedure的subject參數"
* code = #subject
* base = #Procedure
* type = #reference
* expression = "Procedure.subject"

Instance: ProcedureDate
InstanceOf: SearchParameter
Usage: #definition
* url = "https://build.fhir.org/ig/Kimsber/Rehab-IG/SearchParameter/ProcedureDate"
* name = "ProcedureDate"
* status = #active
* description = "搜尋Procedure的date參數"
* code = #date
* base = #Procedure
* type = #date
* expression = "Procedure.performed"
