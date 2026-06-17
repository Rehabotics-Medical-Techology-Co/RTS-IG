// ================================================
// Custom SearchParameters
// ================================================
// TW Core STU 1.0.0 SearchParameters are referenced directly from the
// CapabilityStatements. This file keeps only parameters that are not defined
// by TW Core STU 1.0.0.

// ------------------------------------------------
// MedicationAdministration SearchParameters
// ------------------------------------------------

Instance: MedicationAdministration-code
InstanceOf: SearchParameter
Usage: #definition
* url = "https://build.fhir.org/ig/Rehabotics-Medical-Techology-Co/RTS-IG/SearchParameter/MedicationAdministration-code"
* name = "MedicationAdministrationCode"
* status = #active
* description = "Return administrations of this medication code"
* code = #code
* base = #MedicationAdministration
* type = #token
* expression = "MedicationAdministration.medication.as(CodeableConcept)"

Instance: MedicationAdministration-identifier
InstanceOf: SearchParameter
Usage: #definition
* url = "https://build.fhir.org/ig/Rehabotics-Medical-Techology-Co/RTS-IG/SearchParameter/MedicationAdministration-identifier"
* name = "MedicationAdministrationIdentifier"
* status = #active
* description = "Return administrations with this external identifier"
* code = #identifier
* base = #MedicationAdministration
* type = #token
* expression = "MedicationAdministration.identifier"

Instance: MedicationAdministration-medication
InstanceOf: SearchParameter
Usage: #definition
* url = "https://build.fhir.org/ig/Rehabotics-Medical-Techology-Co/RTS-IG/SearchParameter/MedicationAdministration-medication"
* name = "MedicationAdministrationMedication"
* status = #active
* description = "Return administrations of this medication resource"
* code = #medication
* base = #MedicationAdministration
* type = #reference
* expression = "MedicationAdministration.medication.as(Reference)"

Instance: MedicationAdministration-patient
InstanceOf: SearchParameter
Usage: #definition
* url = "https://build.fhir.org/ig/Rehabotics-Medical-Techology-Co/RTS-IG/SearchParameter/MedicationAdministration-patient"
* name = "MedicationAdministrationPatient"
* status = #active
* description = "The identity of a patient to list administrations for"
* code = #patient
* base = #MedicationAdministration
* type = #reference
* expression = "MedicationAdministration.subject.where(resolve() is Patient)"

Instance: MedicationAdministration-status
InstanceOf: SearchParameter
Usage: #definition
* url = "https://build.fhir.org/ig/Rehabotics-Medical-Techology-Co/RTS-IG/SearchParameter/MedicationAdministration-status"
* name = "MedicationAdministrationStatus"
* status = #active
* description = "MedicationAdministration event status"
* code = #status
* base = #MedicationAdministration
* type = #token
* expression = "MedicationAdministration.status"

Instance: MedicationAdministration-context
InstanceOf: SearchParameter
Usage: #definition
* url = "https://build.fhir.org/ig/Rehabotics-Medical-Techology-Co/RTS-IG/SearchParameter/MedicationAdministration-context"
* name = "MedicationAdministrationContext"
* status = #active
* description = "Return administrations that share this encounter or episode of care"
* code = #context
* base = #MedicationAdministration
* type = #reference
* expression = "MedicationAdministration.context"

Instance: MedicationAdministration-device
InstanceOf: SearchParameter
Usage: #definition
* url = "https://build.fhir.org/ig/Rehabotics-Medical-Techology-Co/RTS-IG/SearchParameter/MedicationAdministration-device"
* name = "MedicationAdministrationDevice"
* status = #active
* description = "Return administrations with this administration device identity"
* code = #device
* base = #MedicationAdministration
* type = #reference
* expression = "MedicationAdministration.device"

Instance: MedicationAdministration-effective-time
InstanceOf: SearchParameter
Usage: #definition
* url = "https://build.fhir.org/ig/Rehabotics-Medical-Techology-Co/RTS-IG/SearchParameter/MedicationAdministration-effective-time"
* name = "MedicationAdministrationEffectivetime"
* status = #active
* description = "Date administration happened or did not happen"
* code = #effective-time
* base = #MedicationAdministration
* type = #date
* expression = "MedicationAdministration.effective"

Instance: MedicationAdministration-performer
InstanceOf: SearchParameter
Usage: #definition
* url = "https://build.fhir.org/ig/Rehabotics-Medical-Techology-Co/RTS-IG/SearchParameter/MedicationAdministration-performer"
* name = "MedicationAdministrationPerformer"
* status = #active
* description = "The identity of the individual who administered the medication"
* code = #performer
* base = #MedicationAdministration
* type = #reference
* expression = "MedicationAdministration.performer.actor"

Instance: MedicationAdministration-reason-given
InstanceOf: SearchParameter
Usage: #definition
* url = "https://build.fhir.org/ig/Rehabotics-Medical-Techology-Co/RTS-IG/SearchParameter/MedicationAdministration-reason-given"
* name = "MedicationAdministrationReasongiven"
* status = #active
* description = "Reasons for administering the medication"
* code = #reason-given
* base = #MedicationAdministration
* type = #token
* expression = "MedicationAdministration.reasonCode"

Instance: MedicationAdministration-reason-not-given
InstanceOf: SearchParameter
Usage: #definition
* url = "https://build.fhir.org/ig/Rehabotics-Medical-Techology-Co/RTS-IG/SearchParameter/MedicationAdministration-reason-not-given"
* name = "MedicationAdministrationReasonnotgiven"
* status = #active
* description = "Reasons for not administering the medication"
* code = #reason-not-given
* base = #MedicationAdministration
* type = #token
* expression = "MedicationAdministration.statusReason"

Instance: MedicationAdministration-request
InstanceOf: SearchParameter
Usage: #definition
* url = "https://build.fhir.org/ig/Rehabotics-Medical-Techology-Co/RTS-IG/SearchParameter/MedicationAdministration-request"
* name = "MedicationAdministrationRequest"
* status = #active
* description = "The identity of a request to list administrations from"
* code = #request
* base = #MedicationAdministration
* type = #reference
* expression = "MedicationAdministration.request"

Instance: MedicationAdministration-subject
InstanceOf: SearchParameter
Usage: #definition
* url = "https://build.fhir.org/ig/Rehabotics-Medical-Techology-Co/RTS-IG/SearchParameter/MedicationAdministration-subject"
* name = "MedicationAdministrationSubject"
* status = #active
* description = "The identity of the individual or group to list administrations for"
* code = #subject
* base = #MedicationAdministration
* type = #reference
* expression = "MedicationAdministration.subject"
