
//====== Profiles =====================================


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
* participant.member only Reference (Practitioner or PractitionerRole or RelatedPerson or OrganizationCareProviderXpandh or CareTeamXpandh)
* reasonCode ^short = "Problem this team is in charge of"
* reasonReference only Reference(ConditionXpandh)


//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  MedicationStatementXpandh
Parent:   $MedicationStatement-uv-ips
Id:       MedicationStatement-eu-xpandh
Title:    "MedicationStatement"
Description: "This profile constrains the MedicationStatement IPS FHIR profile for the purpose of the XpanDH project."
//-------------------------------------------------------------------------------------------

* reasonCode ^short = "Reason (e.g. the Rare Disease) for why the medication is being/was taken"
* reasonReference only Reference(ConditionXpandh or Observation or DiagnosticReport)
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
Profile:  ConditionXpandh
Parent:   $Condition-uv-ips
Id:       Condition-eu-xpandh
Title:    "Condition"
Description: "This profile defines how to represent Condition in FHIR for the purpose of the XpanDH project."

//-------------------------------------------------------------------------------------------

// * extension contains $bodySite named bodySiteExt 0..*
* identifier ^definition = "Globally unique identifier of this problem which remain constant as the resource is updated and propagates from server to server."
* recordedDate ^definition = "Date (and time) when this problem was recorded into information system."
* severity MS
* severity ^definition = "A subjective assessment of the severity of the condition as evaluated by the clinician."
* recorder ^definition = "A healthcare professional who authored information about the problem."
* category ^definition = "The type of problem; see the concept description."
* code ^definition = "The problem code specifies the problem. Depending on the setting, different code systems can be used. The ProblemCodelist provides an overview of the possible code systems."
* text ^definition = "Human readable specification of the problem. This is a general notes/comments entry for description of the problem, its diagnosis and prognosis."
* onsetDateTime ^definition = "Onset of the symptom, complaint, functional limitation, complication or date of diagnosis. A ‘vague’ date, such as only the year or the month and the year, is permitted."
* abatementDateTime ^definition = "The date or estimated date that the condition resolved or went into remission. A ‘vague’ date, such as only the year or the month and the year, is permitted"
* clinicalStatus ^definition = "The problem status describes the condition of the problem:\n\r 
1.	Active problems are problems of which the patient experiences symptoms or for which evidence exists.\n\r  
2.	If condition is abated, then clinicalStatus must be either inactive, resolved, or remission. \n\r 
3.	Problems with the status 'Inactive' refer to problems that don't affect the patient anymore or that of which there is no evidence of existence anymore."
* verificationStatus ^definition = "The verification status to support the clinical status of the condition."
* note ^definition = "Comment by the one who determined or updated the Problem." 
* bodySite  ^definition = "Anatomical location which is the focus of the problem."


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
