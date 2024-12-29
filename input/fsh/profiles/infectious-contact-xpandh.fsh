Profile: InfectiousContactXpandh
Parent: ObservationResultsXpandh
Id: infectious-contact-xpandh
Title: "Xpandh Infectious Contact Profile"
Description: "Infectious Contact profile represents potential patient exposure to an agent (exposure source)."
* ^experimental = false
//* ^copyright = "Used by permission of HL7 International, all rights reserved Creative Commons License"
* . ^short = "Infectious Contact Profile"
//* . ^definition = "\\-"
//* . ^comment = "\\-"

* category 1..1
* category from $ActClassExposure
  * ^short = "Use AEXPOS for aquisition exposure, use TEXPOS for transmission exposure, or use EXPOS if the type of exposure is unknown"
  * ^definition = "Use AEXPOS for aquisition exposure, use TEXPOS for transmission exposure, or use EXPOS if the type of exposure is unknown"
* effective[x] ^short = "Time or period the contact/exposure occurred."
* code = $v3-ParticipationType#EXPAGNT
  * ^short = "Exposure Agent"
* valueCodeableConcept from ExposureAgentXpandhVS

