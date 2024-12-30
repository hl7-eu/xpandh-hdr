Profile: CoverageHdrXpandh
Parent: Coverage
Id: coverage-hdr-eu-xpandh
Title: "Coverage: Encounter Payer"
Description: "Coverage used to represent the payer for this Encounter for the scope of the XpanDH project."


// Clarify if the payer data should go into a dedicated section
* . ^short = "Encounter Payer"
* . ^definition = "Encounter Payer"
// add binding for category and code
* payor
  * ^slicing.discriminator[0].type = #type
  * ^slicing.discriminator[0].path = "resolve()"
  * ^slicing.ordered = false
  * ^slicing.rules = #open
  * ^short = "Sliced per type of payor"
  * ^definition = "Sliced per type of payor"

* payor contains organization 0..*
* payor[organization] only Reference ( Organization )
* beneficiary only Reference ( PatientXpandh )
