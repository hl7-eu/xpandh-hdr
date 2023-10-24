Profile: EncounterXpandh
Parent: Encounter
Id: Encounter-eu-xpandh
Title:    "Encounter"
Description: "This profile defines how to represent Encounter in FHIR for the purpose of the XpanDH Hospital Discharge Report."
* identifier ^short = "Identifier(s) by which this encounter is known."
* status ^short = "Status of this Hospital stay"
* class from HdrEncounterClassXpandh (extensible)
* type ^short = "Specific type of Hospital stay" // add voc binding
* serviceType ^short = "Specific type of encounter." // add voc binding
* priority ^short = "Encounter priority" // add voc binding
* priority from http://terminology.hl7.org/ValueSet/v3-xEncounterAdmissionUrgency (preferred)
* subject only Reference (PatientXpandh)
* subject 1..
* basedOn ^short = "The request for which this encounter has been made"
* period ^short = "The start and end time of this encounter."
* reasonCode ^short = "Coded reason the encounter takes place"
* reasonReference only Reference ( Observation or Condition or Procedure)

* participant
  * ^short = "List of participants involved in the encounters"
  * ^definition = """Slice per type of participant: admitter, discharger,.."""
  * ^slicing.discriminator[0].type = #pattern
  * ^slicing.discriminator[0].path = "type"
  * ^slicing.ordered = false
  * ^slicing.rules = #open

* participant contains admitter 0..*
* participant[admitter]
  * type = $v3-ParticipationType#ADM
  * individual 0..1
  * individual only Reference (Practitioner or PractitionerRole)

* participant contains discharger 0..*
* participant[discharger]
  * type = $v3-ParticipationType#DIS
  * individual 0..1
  * individual only Reference (Practitioner or PractitionerRole)


* diagnosis
  * ^short = "The list of diagnosis relevant to this encounter."
  * ^definition = """Slice per type of diagnosis: admission, discharge,.."""
  * ^slicing.discriminator[0].type = #pattern
  * ^slicing.discriminator[0].path = "use"
  * ^slicing.ordered = false
  * ^slicing.rules = #open

* diagnosis contains admission 0..*
* diagnosis[admission]
  * condition only Reference ( Condition )
  * use = $diagnosis-role#AD

* diagnosis contains discharge 0..*
* diagnosis[discharge]
  * condition only Reference ( Condition )
  * use = $diagnosis-role#DD
// add slices for use for admission and discharge


* hospitalization
  * admitSource ^short = "From where patient was admitted (physician referral, transfer)."
  * dischargeDisposition ^short = "Category or kind of location after discharge"
  // add voc binding