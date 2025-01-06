Profile: SocialHistoryXpandh
Parent: ObservationResultsXpandh
Id: social-history-xpandh
Title: "Xpandh social history Profile"
Description: "This profile sets minimum expectations for the Observation resource to record, search, and fetch social history. It is based on the ObservationResultsXpandh profile and identifies the *additional* mandatory core elements, extensions, vocabularies and value sets which **SHALL** be present in the Observation resource when using this profile."
* ^experimental = false
//* ^copyright = "Used by permission of HL7 International, all rights reserved Creative Commons License"
* . ^short = "Social History Profile"
* . ^definition = "Information about social determinants of health. "
//* . ^comment = "\\-"

* category = $observation-category#social-history
* code from SocialHistoryObservationsVS
* value[x] only string or CodeableConcept or Quantity //or time or dateTime or Period
