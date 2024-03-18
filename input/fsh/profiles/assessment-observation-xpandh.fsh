Profile: AssessmentObservationXpandh
Parent: Observation
Id: assessment-observation-xpandh
Title: "Xpandh Assessment Observation Profile"
Description: """This profile promotes interoperability and adoption through common implementation by setting minimum expectations for the Observation resource to record, search, and retrieve observations representing a practitioner's clinical observation or assertion about a patient's health status.
These observations may or may not be associated with a formal survey, screening, or assessment tool. For example, a social history status such as education or food insecurity or an assessment of the patient's cognitive, functional, or disability status.
This profile identifies which core elements, extensions, vocabularies, and value sets **SHALL** be present in the resource when using this profile. It provides the floor for standards development for specific use cases."""
//* ^date = "2022-04-20"
* . ^short = "Assessment observation"
//* . ^definition = "\\-"
//* . ^comment = "\\-"
* status MS
* category 1.. MS
* category ^slicing.discriminator.type = #value
* category ^slicing.discriminator.path = "$this"
* category ^slicing.rules = #open
* category contains assessment 0..* MS
* category[assessment] from AssessmentObservationCategoryVS (required)
* category[assessment] ^min = 0
* code MS
* code ^binding.strength = #preferred
* subject 1.. MS
* subject only Reference(PatientXpandh)
* effective[x] only dateTime or Period or Timing or instant
* effective[x] MS
* effective[x] ^definition = "The time or time-period the observed value is asserted as being true. For biological subjects - e.g. human patients - this is usually called the \"physiologically relevant time\"."
* effective[x] ^comment = "At least a date should be present unless this observation is a historical report."
* effective[x] ^type[0].extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
* effective[x] ^type[=].extension.valueBoolean = true
* performer only Reference(PractitionerXpandh or OrganizationXpandh or PatientXpandh or PractitionerRole or CareTeam or RelatedPerson)
* performer MS
/*
* value[x] only Quantity or CodeableConcept or string or boolean or integer or Range or Ratio or SampledData or time or dateTime or Period
* value[x] MS
* value[x] ^type[0].extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
* value[x] ^type[=].extension.valueBoolean = true
* value[x] ^type[+].extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
* value[x] ^type[=].extension.valueBoolean = true
* value[x] ^type[+].extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
* value[x] ^type[=].extension.valueBoolean = true
* value[x] ^type[+].extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
* value[x] ^type[=].extension.valueBoolean = true
*/
//* derivedFrom only Reference(USCoreObservationScreeningAssessmentProfile or USCoreDocumentReferenceProfile or QuestionnaireResponse or ImagingStudy or Media or MolecularSequence)
* derivedFrom MS
* derivedFrom ^short = "Related Observation(s) or other resource the observation is made from"
* derivedFrom ^definition = "Observations or or other resource such as a QuestionnaireResponse from which this observation value is derived."