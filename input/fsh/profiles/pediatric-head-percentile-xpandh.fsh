Profile: PediatricHeadOccipitalFrontalCircumferencePercentileXpandh
Parent: ObservationVitalSignsXpandh
Id: pediatric-head-occ-front-circumfer-percent-xpandh
Title: "Xpandh Pediatric Head Occipital Frontal Circumference Profile"
Description: "This profile sets minimum expectations for the Observation resource to record, search, and fetch body height observations with a standard SNOMED CT code and UCUM units of measure. It is based on the Observation Vital Signs Xpandh profile and identifies the *additional* mandatory core elements, extensions, vocabularies and value sets which **SHALL** be present in the Observation resource when using this profile."
* ^experimental = false
//* ^copyright = "Used by permission of HL7 International, all rights reserved Creative Commons License"
* . ^short = "Pediatric Head Occipital Frontal Circumference"
//* . ^definition = "\\-"
//* . ^comment = "\\-"
* code = $sct#1153595005  //"Child head circumference for age percentile (observable entity)"
* code MS
* code ^short = "Circumference observation code"
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
  * code = #% (exactly)
  * code ^short = "Coded responses from the common UCUM units for vital signs value set."