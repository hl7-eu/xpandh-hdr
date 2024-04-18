//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  MedicationStatementXpandh
Parent:   $MedicationStatement-uv-ips
Id:       MedicationStatement-eu-xpandh
Title:    "MedicationStatement"
Description: "This profile constrains the MedicationStatement IPS FHIR profile for the purpose of the XpanDH project."
//-------------------------------------------------------------------------------------------

* status ^comment = "In the scope of the Hospital Discharge report the entered-in-error concept is not allowed."  //ToDo: create obeys rule
* medication[x] only CodeableConceptIPS or Reference(MedicationXpandh)
* reasonCode ^short = "Reason (e.g. the Rare Disease) for why the medication is being/was taken"
* reasonReference only Reference(ConditionHdrXpandh or Observation or DiagnosticReport)
* subject only Reference(PatientXpandh)
