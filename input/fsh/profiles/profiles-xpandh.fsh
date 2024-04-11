
//====== Profiles =====================================

/*
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  OrganizationCareProviderXpandh
Parent:   $Organization-uv-ips
Id:       Organization-careprovider-eu-xpandh
Title:    "Organization: Care provisioning"
Description: "This profile constrains the Organization IPS profile to represent care provisioning organanizations (as RD centers) for the purpose of the XpanDH project."
//-------------------------------------------------------------------------------------------

* type MS
* telecom MS
* address MS
* partOf ^short = "The organization of which this organization is part of: e.g. an ERN"
* partOf only Reference (OrganizationCareProviderXpandh or Organization)
* contact MS
*/

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  CareTeamXpandh
Parent:   CareTeam
Id:       CareTeam-eu-xpandh
Title:    "CareTeam"
Description: "This profile constrains the CareTeam resource for the purpose of the XpanDH project."
//-------------------------------------------------------------------------------------------

* subject only Reference(PatientXpandh)
* subject MS
* participant 1.. MS
* participant.role MS
* participant.member 1.. MS
* participant.member only Reference (PractitionerXpandh or PractitionerRoleXpandh or RelatedPerson or OrganizationXpandh or CareTeamXpandh)
* reasonCode ^short = "Problem this team is in charge of"
* reasonReference only Reference(ConditionHdrXpandh)


//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  MedicationStatementXpandh
Parent:   $MedicationStatement-uv-ips
Id:       MedicationStatement-eu-xpandh
Title:    "MedicationStatement"
Description: "This profile constrains the MedicationStatement IPS FHIR profile for the purpose of the XpanDH project."
//-------------------------------------------------------------------------------------------

* reasonCode ^short = "Reason (e.g. the Rare Disease) for why the medication is being/was taken"
* reasonReference only Reference(ConditionHdrXpandh or Observation or DiagnosticReport)
* subject only Reference(PatientXpandh)

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  FlagXpandh
Parent:   Flag
Id:       Flag-eu-xpandh
Title:    "Flag"
Description: "This profile constrains the Flag resource to represent alerts or warnings in FHIR for the purpose of the XpanDH project."
//-------------------------------------------------------------------------------------------

* extension contains $flag-detail named flagDetailExt 0..*
* extension contains $flag-priority named flagPriorityExt 0..1
* extension[flagDetailExt]
* extension[flagPriorityExt]
* status MS
* code MS
* subject MS
* subject only Reference(PatientXpandh)


//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  ObservationResultsPathologyXpandh
Parent:   http://hl7.org/fhir/uv/ips/StructureDefinition/Observation-results-pathology-uv-ips
Id:       Observation-results-pathology-eu-xpandh
Title:    "Observation Results: pathology"
Description: "This profile constrains the Observation resource to represent results produced by pathology studies for the XpanDH project."
//-------------------------------------------------------------------------------------------

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  ObservationResultsRadiologyXpandh
Parent:   http://hl7.org/fhir/uv/ips/StructureDefinition/Observation-results-radiology-uv-ips
Id:       Observation-results-radiology-eu-xpandh
Title:    "Observation Results: radiology"
Description: "This profile constrains the Observation resource to represent results produced by pathology studies for the XpanDH project."
//-------------------------------------------------------------------------------------------

//-------------------------------------------------------------------------------------------
