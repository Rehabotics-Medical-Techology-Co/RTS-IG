---
title: Search Parameters
---

本頁列出本 IG CapabilityStatement 宣告支援的查詢參數。原則是直接引用 TW Core STU 1.0.0 已定義的 SearchParameter；TW Core 未定義的 MedicationAdministration 參數才由本 IG 定義。

### Patient
- [$everything](https://hl7.org/fhir/R4/operation-patient-everything.html)
- [id](https://twcore.mohw.gov.tw/ig/twcore/SearchParameter-Patient-id.html)
- [birthdate](https://twcore.mohw.gov.tw/ig/twcore/SearchParameter-Patient-birthdate.html)
- [gender](https://twcore.mohw.gov.tw/ig/twcore/SearchParameter-Patient-gender.html)
- [identifier](https://twcore.mohw.gov.tw/ig/twcore/SearchParameter-Patient-identifier.html)
- [name](https://twcore.mohw.gov.tw/ig/twcore/SearchParameter-Patient-name.html)

### Bundle
- [id](https://twcore.mohw.gov.tw/ig/twcore/SearchParameter-Bundle-id.html)
- [identifier](https://twcore.mohw.gov.tw/ig/twcore/SearchParameter-Bundle-identifier.html)

### CarePlan
- [patient](https://twcore.mohw.gov.tw/ig/twcore/SearchParameter-CarePlan-patient.html)
- [category](https://twcore.mohw.gov.tw/ig/twcore/SearchParameter-CarePlan-category.html)
- [date](https://twcore.mohw.gov.tw/ig/twcore/SearchParameter-CarePlan-date.html)
- [status](https://twcore.mohw.gov.tw/ig/twcore/SearchParameter-CarePlan-status.html)

### Condition
- [id](https://twcore.mohw.gov.tw/ig/twcore/SearchParameter-Condition-id.html)
- [clinical-status](https://twcore.mohw.gov.tw/ig/twcore/SearchParameter-Condition-clinical-status.html)
- [code](https://twcore.mohw.gov.tw/ig/twcore/SearchParameter-Condition-code.html)
- [subject](https://twcore.mohw.gov.tw/ig/twcore/SearchParameter-Condition-subject.html)
- [onset-date](https://twcore.mohw.gov.tw/ig/twcore/SearchParameter-Condition-onset-date.html)
- [abatement-date](https://twcore.mohw.gov.tw/ig/twcore/SearchParameter-Condition-abatement-date.html)
- [severity](https://twcore.mohw.gov.tw/ig/twcore/SearchParameter-Condition-severity.html)

### Encounter
- [id](https://twcore.mohw.gov.tw/ig/twcore/SearchParameter-Encounter-id.html)
- [class](https://twcore.mohw.gov.tw/ig/twcore/SearchParameter-Encounter-class.html)
- [date](https://twcore.mohw.gov.tw/ig/twcore/SearchParameter-Encounter-date.html)
- [identifier](https://twcore.mohw.gov.tw/ig/twcore/SearchParameter-Encounter-identifier.html)
- [location](https://twcore.mohw.gov.tw/ig/twcore/SearchParameter-Encounter-location.html)
- [subject](https://twcore.mohw.gov.tw/ig/twcore/SearchParameter-Encounter-subject.html)
- [status](https://twcore.mohw.gov.tw/ig/twcore/SearchParameter-Encounter-status.html)

### Goal
- [patient](https://twcore.mohw.gov.tw/ig/twcore/SearchParameter-Goal-patient.html)
- [lifecycle-status](https://twcore.mohw.gov.tw/ig/twcore/SearchParameter-Goal-lifecycle-status.html)
- [target-date](https://twcore.mohw.gov.tw/ig/twcore/SearchParameter-Goal-target-date.html)
- [description](https://twcore.mohw.gov.tw/ig/twcore/SearchParameter-Goal-description.html)

### MedicationAdministration
- [code](SearchParameter-MedicationAdministration-code.html)
- [identifier](SearchParameter-MedicationAdministration-identifier.html)
- [medication](SearchParameter-MedicationAdministration-medication.html)
- [patient](SearchParameter-MedicationAdministration-patient.html)
- [status](SearchParameter-MedicationAdministration-status.html)
- [context](SearchParameter-MedicationAdministration-context.html)
- [device](SearchParameter-MedicationAdministration-device.html)
- [effective-time](SearchParameter-MedicationAdministration-effective-time.html)
- [performer](SearchParameter-MedicationAdministration-performer.html)
- [reason-given](SearchParameter-MedicationAdministration-reason-given.html)
- [reason-not-given](SearchParameter-MedicationAdministration-reason-not-given.html)
- [request](SearchParameter-MedicationAdministration-request.html)
- [subject](SearchParameter-MedicationAdministration-subject.html)

### Observation
- [id](https://twcore.mohw.gov.tw/ig/twcore/SearchParameter-Observation-id.html)
- [category](https://twcore.mohw.gov.tw/ig/twcore/SearchParameter-Observation-category.html)
- [code](https://twcore.mohw.gov.tw/ig/twcore/SearchParameter-Observation-clinical-code.html)
- [date](https://twcore.mohw.gov.tw/ig/twcore/SearchParameter-Observation-date.html)
- [performer](https://twcore.mohw.gov.tw/ig/twcore/SearchParameter-Observation-performer.html)
- [status](https://twcore.mohw.gov.tw/ig/twcore/SearchParameter-Observation-status.html)
- [subject](https://twcore.mohw.gov.tw/ig/twcore/SearchParameter-Observation-subject.html)
- [patient](https://twcore.mohw.gov.tw/ig/twcore/SearchParameter-Observation-patient.html)
- [last-updated](https://twcore.mohw.gov.tw/ig/twcore/SearchParameter-Observation-lastupdated.html)

### Organization
- [id](https://twcore.mohw.gov.tw/ig/twcore/SearchParameter-Organization-id.html)
- [identifier](https://twcore.mohw.gov.tw/ig/twcore/SearchParameter-Organization-identifier.html)
- [name](https://twcore.mohw.gov.tw/ig/twcore/SearchParameter-Organization-name.html)
- [type](https://twcore.mohw.gov.tw/ig/twcore/SearchParameter-Organization-type.html)

### Practitioner
- [id](https://twcore.mohw.gov.tw/ig/twcore/SearchParameter-Practitioner-id.html)
- [identifier](https://twcore.mohw.gov.tw/ig/twcore/SearchParameter-Practitioner-identifier.html)
- [name](https://twcore.mohw.gov.tw/ig/twcore/SearchParameter-Practitioner-name.html)

### PractitionerRole
- [id](https://twcore.mohw.gov.tw/ig/twcore/SearchParameter-PractitionerRole-id.html)
- [identifier](https://twcore.mohw.gov.tw/ig/twcore/SearchParameter-PractitionerRole-identifier.html)
- [specialty](https://twcore.mohw.gov.tw/ig/twcore/SearchParameter-PractitionerRole-specialty.html)

### Procedure
- [id](https://twcore.mohw.gov.tw/ig/twcore/SearchParameter-Procedure-id.html)
- [code](https://twcore.mohw.gov.tw/ig/twcore/SearchParameter-Procedure-code.html)
- [status](https://twcore.mohw.gov.tw/ig/twcore/SearchParameter-Procedure-status.html)
- [subject](https://twcore.mohw.gov.tw/ig/twcore/SearchParameter-Procedure-subject.html)
- [date](https://twcore.mohw.gov.tw/ig/twcore/SearchParameter-Procedure-date.html)

### Questionnaire
- identifier
- title

### QuestionnaireResponse
- [id](https://twcore.mohw.gov.tw/ig/twcore/SearchParameter-QuestionnaireResponse-id.html)
- [patient](https://twcore.mohw.gov.tw/ig/twcore/SearchParameter-QuestionnaireResponse-patient.html)
- [status](https://twcore.mohw.gov.tw/ig/twcore/SearchParameter-QuestionnaireResponse-status.html)
- [authored](https://twcore.mohw.gov.tw/ig/twcore/SearchParameter-QuestionnaireResponse-authored.html)
- [questionnaire](https://twcore.mohw.gov.tw/ig/twcore/SearchParameter-QuestionnaireResponse-questionnaire.html)