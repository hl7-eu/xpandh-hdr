Profile: CircumferenceMeasurementXpandh
Parent: ObservationVitalSignsXpandh
Id: circumference-measurement-xpandh
Title: "Xpandh Circumference Measurement Profile"
Description: "This profile sets minimum expectations for the Observation resource to record, search, and fetch body height observations with a standard SNOMED CT code and UCUM units of measure. It is based on the Observation Vital Signs Xpandh profile and identifies the *additional* mandatory core elements, extensions, vocabularies and value sets which **SHALL** be present in the Observation resource when using this profile."
* ^experimental = false
//* ^copyright = "Used by permission of HL7 International, all rights reserved Creative Commons License"
* . ^short = "Circumference Measurement Profile"
//* . ^definition = "\\-"
//* . ^comment = "\\-"
* code from CircumferenceObservationVS
* code MS
* code ^short = "Circumference Measurement"
* valueQuantity 0..1 MS
  * value 1..1 MS
  * value only decimal
  * unit 1..1 MS
  * unit only string
  * system 1..1 MS
  * system only uri
  * system = "http://unitsofmeasure.org" (exactly)
  * code 1..1 MS
  * code only code
  * code = #cm (exactly)
  * code ^short = "Coded responses from the common UCUM units for vital signs value set."