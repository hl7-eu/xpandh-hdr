Profile: InpatientEncounterHDRXpandh
Parent: Encounter
Id: inpatient-encounter-hdr-xpandh
Title:    "Inpatient Encounter Xpandh"
Description: "This profile defines how to represent Inpatient Encounter in FHIR for the purpose of the XpanDH Hospital Discharge Report."
* identifier ^short = "Identifier(s) by which this encounter is known."
* status from EncounterStatusHdrVS
  * ^short = "Status of this Hospital stay"
  * ^definition = "At the discharge report status of the encounter should be always = \"finished\""
* class from HdrEncounterClassXpandhVS (extensible)
  * ^definition = "Concepts representing classification of inpatient encounter such as inpatient, emergency or others due to local variations."
* type from HdrEncounterTypeXpandhVS (example)
  * ^short = "Specific type of Hospital stay"
  * ^definition = "Allows to classify encounter using information about care provision regimen during an inpatient encounter."
* serviceType
  * ^short = "Specific type of service." // voc binding needs to be descissed as it is only example
* priority from HdrAdmissionUrgencyXpandhVS (preferred)
  * ^short = "Encounter priority" // add voc binding
* subject only Reference (PatientXpandh)
* subject 1..
  * ^short = "The pateint preesent at the encounter"
* basedOn ^short = "The request for which this encounter has been made"
* period
  * ^short = "The start and end time of this encounter."
  * ^definition = "The start and end time of this inpatient stay."
* reasonCode from HdrConditionXpandhVS (preferred)
  * ^short = "Coded reason the encounter takes place"
* reasonReference only Reference ( Observation or Condition or Procedure)

* participant
  * individual 0..1
  * individual only Reference (PractitionerXpandh or PractitionerRoleXpandh or RelatedPerson) 
* participant
  * ^short = "List of participants involved in the encounters"
  * ^definition = """Slice per type of participant: admitter, discharger,.."""
  * ^slicing.discriminator[0].type = #value
  * ^slicing.discriminator[0].path = "type"
  * ^slicing.ordered = false
  * ^slicing.rules = #open

* participant contains admitter 0..*
* participant[admitter]
  * ^short = "Admitting professional"
  * type = $v3-ParticipationType#ADM


* participant contains discharger 0..*
* participant[discharger]
  * ^short = "Discharging professional"
  * type = $v3-ParticipationType#DIS

* participant contains referrer 0..*
* participant[referrer]
  * ^short = "Referring professional"
  * type = $v3-ParticipationType#REF
  

* diagnosis ^short = "The list of diagnosis relevant to this encounter, see comment"
* diagnosis ^comment = "While Encounter.diagnosis could be optionally populated, mainly for administrative purposes, we strongly recommend to put all clinical relevant diagnoses, stated at start, during and at the end of the hospital stay, into the corresponding section(s) of the HDR."
* diagnosis.condition only Reference(ConditionEncounterHdrXpandh)



* hospitalization
  * admitSource ^short = "From where patient was admitted (physician referral, transfer)."
  * dischargeDisposition ^short = "Category or kind of location after discharge" 

  * destination only Reference (Organization or Location)
  
  // add voc binding
* location ^short = "Locations where the patient stayed"
  * location only Reference ( Location )
  * period ^short = "Location period"

* serviceProvider only Reference ( Organization )