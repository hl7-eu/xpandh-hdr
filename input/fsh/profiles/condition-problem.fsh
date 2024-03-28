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
* . ^mustSupport = false
//* extension contains $condition-assertedDate named assertedDate 0..1 MS
/*
* clinicalStatus MS
* clinicalStatus from ConditionClinicalStatusCodes (required)
* verificationStatus MS
* verificationStatus from ConditionVerificationStatus (required)
*/
//* category MS
/*
* category ^slicing.discriminator.type = #value
* category ^slicing.discriminator.path = "$this"
* category ^slicing.rules = #open
* category ^short = "category codes"
* category contains
    us-core 1..* MS and
    sdoh 0..1 MS
* category[us-core] from USCoreProblemOrHealthConcern (required)
* category[us-core] ^short = "problem-list-item | health-concern"
* category[sdoh] = $us-core-category#sdoh
*/
* code 1.. MS
//* code only $CodeableConcept-uv-ips
//* code from HdrConditionXpandhVS
//* code from USCoreConditionCodes (extensible)
* code ^binding.description = "Valueset to describe the actual problem experienced by the patient"
//* bodySite
  //* extension contains BodyLocationQualifier named qualifier 0..*
  //* extension[qualifier].valueCodeableConcept from VsSiteQualifierI4rc (extensible)
  //  * insert AdditionalBinding (preferred, $mcode-body-location-qualifier-vs, mCode value set)
  //* extension contains LateralityQualifier named laterality 0..1
  //* extension[laterality].valueCodeableConcept from LateralityQualifierVS (extensible)
//* subject only Reference(PatientXpandh)
//* subject MS
/*
* onset[x] only dateTime or Age or Period or Range or string
* onset[x] MS
* onset[x] ^type.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
* onset[x] ^type.extension.valueBoolean = true
* abatement[x] only dateTime or Age or Period or Range or string
* abatement[x] MS
* abatement[x] ^type.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
* abatement[x] ^type.extension.valueBoolean = true
* recordedDate MS
*/