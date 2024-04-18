Profile: ClinicalImpressionHdrXpandh
Parent: ClinicalImpression
Id: clinical-impression-hdr-xpandh
Title: "Xpandh Clinical Impression Profile"
Description: """This profile represents the constraints applied to the ClinicalImpression resource by the Xpandh FHIR Implementation Guide."""
* ^experimental = false
* . ^short = "Xpandh Clinical Impression Profile"
* code ..0
* subject only Reference(PatientXpandh)
* assessor only Reference(PractitionerXpandh or PractitionerRoleXpandh)
* problem only Reference(ConditionHdrXpandh or AllergyIntoleranceXpandh)

