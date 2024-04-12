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
