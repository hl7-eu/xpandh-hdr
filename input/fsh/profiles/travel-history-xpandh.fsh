Profile: TravelHistoryXpandh
Parent: ObservationResultsXpandh
Id: travel-history-xpandh
Title: "Xpandh travel history Profile"
Description: "This profile sets minimum expectations for the Observation resource to record, search, and fetch travel history. It is based on the ObservationResultsXpandh profile and identifies the *additional* mandatory core elements, extensions, vocabularies and value sets which **SHALL** be present in the Observation resource when using this profile."
* ^experimental = false
//* ^copyright = "Used by permission of HL7 International, all rights reserved Creative Commons License"
* . ^short = "Skinfold Thickness Profile"
//* . ^definition = "\\-"
//* . ^comment = "\\-"
* code = $sct#420008001  //"Travel"
* effective[x] ^short = "Date or period of visit in a country"
* effective[x] ^definition = "The date or period of visit in a country."
* value[x] ^short = "Country visited"
* value[x] ^definition = "The country visited."
* value[x] only $CodeableConcept-uv-ips
* valueCodeableConcept from $iso3166-1-2
* valueCodeableConcept ^short = "Country visited"
* valueCodeableConcept ^definition = "The country visited."


