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
* subject only Reference (Patient)
* basedOn ^short = "The request for which this encounter has been made"
* period ^short = "The start and end time of this encounter."
* reasonCode ^short = "Coded reason the encounter takes place"
* reasonReference only Reference ( Observation or Condition or Procedure)
* diagnosis ^short = "The list of diagnosis relevant to this encounter."
// add slices for use for admission and discharge
* participant ^short = "List of participants involved in the encounters"
// add slices for use for admitter and referring physician
* hospitalization
  * admitSource ^short = "From where patient was admitted (physician referral, transfer)."
  * dischargeDisposition ^short = "Category or kind of location after discharge"
  // add voc binding 