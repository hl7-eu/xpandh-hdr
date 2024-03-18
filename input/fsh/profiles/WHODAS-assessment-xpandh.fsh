Profile: WHODASAssessmentXpandh
Parent: FunctionalStatusAssessmentXpandh
Id: whodas-assessment-xpandh
Title: "Xpandh WHO Disability Assessment Schedule (WHODAS 2.0) Profile"
Description: """This profile is an Xpandh implementation of World Health Organization Disability Assessment Schedule (WHODAS 2.0) resource to record, search, and retrieve observations representing a practitioner's assertion about a patient's functional status.
This profile identifies which core elements, extensions, vocabularies, and value sets **SHALL** be present in the resource when using this profile. It provides the floor for standards development for specific use cases."""
//* ^date = "2022-04-20"
* . ^short = "WHODAS assessment schedule"
//* . ^definition = "\\-"
//* . ^comment = "\\-"
* category[assessment] = AssessmentCategoryXpanDHCS#functional-status
* code from WHODASDomainVS (required)
* value[x] only Quantity
* value[x] ^short = "Assessment scale domain score (if present)"
* hasMember 0..
* component
  * code from WHODASCodeVS
  * value[x] only $CodeableConcept-uv-ips
  * value[x] from WhodasResultVS
