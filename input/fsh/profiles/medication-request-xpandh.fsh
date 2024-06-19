//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  MedicationRequestXpandh
Parent:   $MedicationRequest-uv-ips
Id:       MedicationRequest-eu-xpandh
Title:    "MedicationRequest"
Description: "This profile constrains the MedicationRequest IPS FHIR profile for the purpose of the XpanDH project."
//-------------------------------------------------------------------------------------------

* status ^comment = "In the scope of the Xpandh hospital discharge report the entered-in-error concept is not allowed."
* medication[x] only CodeableConcept or Reference(MedicationXpandh)
/*
* medication[x] from MedicationSnomedCodesAbsentUnknown (preferred)
* medication[x] ^definition = "Identifies the medication being administered. This is either a link to a resource representing the details of the medication or a simple attribute carrying a code. To improve global interoperability is strongly encouraged that the reference to a medication resource is used, limiting the usage of the medicationCodeableConcept only to the cases in which no other information than a simple code is available."
* medication[x] ^binding.description = "SNOMED CT medications (Pharmaceutical / biologic product) or a code for absent/unknown medication"
*/
* subject only Reference(PatientXpandh)
/*
* dosageInstruction.route from MedicineRouteOfAdministrationUvIps (preferred)
* dosageInstruction.route ^binding.description = "EDQM Standards Terms"
* dispenseRequest.validityPeriod.extension contains $data-absent-reason named data-absent-reason 0..1
* dispenseRequest.validityPeriod.extension[data-absent-reason] ^short = "validityPeriod absence reason"
* dispenseRequest.validityPeriod.extension[data-absent-reason] ^definition = "Provides a reason why the validityPeriod is missing."
*/