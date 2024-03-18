Profile: FunctionalStatusAssessmentXpandh
Parent: AssessmentObservationXpandh
Id: functional-status-assessment-xpandh
Title: "Xpandh Functional Status Observation Profile"
Description: """This profile promotes interoperability and adoption through common implementation by setting minimum expectations for the Functional Status Observation resource to record, search, and retrieve observations representing a practitioner's assertion about a patient's functional status.
These observations may or may not be associated with a formal survey, screening, or assessment tool. For example, an assessment of the patient's cognitive, functional, or disability status.
This profile identifies which core elements, extensions, vocabularies, and value sets **SHALL** be present in the resource when using this profile. It provides the floor for standards development for specific use cases."""
//* ^date = "2022-04-20"
* . ^short = "Functional assessment observation"
//* . ^definition = "\\-"
//* . ^comment = "\\-"
* category[assessment] = AssessmentCategoryXpanDHCS#functional-status
* code from FunctionalAssessmentScalesVS (extensible)
* hasMember only Reference(WHODASAssessmentXpandh or Observation or QuestionnaireResponse or MolecularSequence)
