Profile: ConditionProblemsHdrXpandh
Parent: ConditionHdrXpandh
Id: condition-problems-hdr-xpandh
Title: "Xpandh Condition Problems Profile"
Description: "Xpandh Condition Problems Profile is based upon the core FHIR Condition Resource and meets the  Xpandh project requirements."
* ^status = #active
* ^experimental = false
//* ^date = "2022-04-20"
//* . ^definition = "\\-"
//* . ^comment = "\\-"
//* . ^mustSupport = false
* category
  * ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "$this"
  * ^slicing.rules = #open
  * ^definition = """Slices per type of classificaton"""
  * ^short = "category codes"
* category contains
    hdr-core 1..* MS //and
//    sdoh 0..1 MS
//* category[hdr-core] from USCoreProblemOrHealthConcern (required)
* category[hdr-core] = $condition-category#problem-list-item
  * ^short = "problem-list-item"  //"problem-list-item | health-concern"
//* category[sdoh] = $us-core-category#sdoh
