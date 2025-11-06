---
title: 查詢參數及操作定義
---
以下為臺灣核心實作指引（TW Core IG）使用到的所有查詢參數（SearchParameter）。

### Patient
- [$everything](OperationDefinition-PatientEverythingOperation.html)

### Bundle
- [id](SearchParameter-BundleId.html)
- [identifier](SearchParameter-BundleIdentifier.html)

### CarePlan
- [patient](SearchParameter-CarePlanPatient.html)
- [category](SearchParameter-CarePlanCategory.html)
- [date](SearchParameter-CarePlanDate.html)
- [status](SearchParameter-CarePlanStatus.html)

### Condition
- [id](SearchParameter-ConditionId.html)
- [clinical-status](SearchParameter-ConditionClinicalstatus.html)
- [code](SearchParameter-ConditionCode.html)
- [subject](SearchParameter-ConditionSubject.html)
- [onset-date](SearchParameter-ConditionOnsetdate.html)
- [abatement-date](SearchParameter-ConditionAbatementdate.html)
- [severity](SearchParameter-ConditionSeverity.html)

### Encounter
- [id](SearchParameter-EncounterId.html)
- [class](SearchParameter-EncounterClass.html)
- [date](SearchParameter-EncounterDate.html)
- [identifier](SearchParameter-EncounterIdentifier.html)
- [location](SearchParameter-EncounterLocation.html)
- [subject](SearchParameter-EncounterSubject.html)
- [status](SearchParameter-EncounterStatus.html)

### Goal
- [patient](SearchParameter-GoalPatient.html)
- [lifecycle-status](SearchParameter-GoalLifecyclestatus.html)
- [target-date](SearchParameter-GoalTargetdate.html)
- [description](SearchParameter-GoalDescription.html)

### MedicationAdministration
- [code](SearchParameter-MedicationAdministrationCode.html)
- [identifier](SearchParameter-MedicationAdministrationIdentifier.html)
- [medication](SearchParameter-MedicationAdministrationMedication.html)
- [patient](SearchParameter-MedicationAdministrationPatient.html)
- [status](SearchParameter-MedicationAdministrationStatus.html)
- [context](SearchParameter-MedicationAdministrationContext.html)
- [device](SearchParameter-MedicationAdministrationDevice.html)
- [effective-time](SearchParameter-MedicationAdministrationEffectivetime.html)
- [performer](SearchParameter-MedicationAdministrationPerformer.html)
- [reason-given](SearchParameter-MedicationAdministrationReasongiven.html)
- [reason-not-given](SearchParameter-MedicationAdministrationReasonnotgiven.html)
- [request](SearchParameter-MedicationAdministrationRequest.html)
- [subject](SearchParameter-MedicationAdministrationSubject.html)

### Observation
- [id](SearchParameter-ObservationId.html)
- [category](SearchParameter-ObservationCategory.html)
- [code](SearchParameter-ObservationCode.html)
- [date](SearchParameter-ObservationDate.html)
- [performer](SearchParameter-ObservationPerformer.html)
- [status](SearchParameter-ObservationStatus.html)
- [subject](SearchParameter-ObservationSubject.html)
- [patient](SearchParameter-ObservationPatient.html)
- [last-updated](SearchParameter-ObservationLastupdated.html)

### Organization
- [id](SearchParameter-OrganizationId.html)
- [identifier](SearchParameter-OrganizationIdentifier.html)
- [name](SearchParameter-OrganizationName.html)
- [type](SearchParameter-OrganizationType.html)

### Patient
- [id](SearchParameter-PatientId.html)
- [birthhday](SearchParameter-PatientBirthdate.html)
- [gender](SearchParameter-PatientGender.html)
- [identifier](SearchParameter-PatientIdentifier.html)
- [name](SearchParameter-PatientName.html)

### Practitioner
- [id](SearchParameter-PractitionerId.html)
- [identifier](SearchParameter-PractitionerIdentifier.html)
- [name](SearchParameter-PractitionerName.html)

### PractitionerRole
- [id](SearchParameter-PractitionerRoleId.html)
- [identifier](SearchParameter-PractitionerRoleIdentifier.html)
- [specialty](SearchParameter-PractitionerRoleSpecialty.html)

### Procedure
- [id](SearchParameter-ProcedureId.html)
- [code](SearchParameter-ProcedureCode.html)
- [status](SearchParameter-ProcedureStatus.html)
- [subject](SearchParameter-ProcedureSubject.html)
- [date](SearchParameter-ProcedureDate.html)
