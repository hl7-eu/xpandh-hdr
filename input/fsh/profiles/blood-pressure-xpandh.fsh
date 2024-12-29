Profile: BloodPressureXpandh
Parent: ObservationVitalSignsXpandh
Id: blood-pressure-xpandh
Title: "Xpandh Blood Pressure Profile"
Description: "This profile sets minimum expectations for the Observation resource to record, search, and fetch diastolic and systolic blood pressure observations with standard SNOMED CT codes and UCUM units of measure. It is based on the Observation Vital Signs Xpandh profile and identifies the *additional* mandatory core elements, extensions, vocabularies and value sets which **SHALL** be present in the Observation resource when using this profile."
* ^experimental = false
//* ^copyright = "Used by permission of HL7 International, all rights reserved Creative Commons License"
* . ^short = "Xpandh Blood Pressure Profile"
//* . ^definition = "\\-"
//* . ^comment = "\\-"
* code = $sct#75367002
* code MS
* code ^short = "Blood Pressure"
* component ..* MS
* component ^slicing.discriminator.type = #value
* component ^slicing.discriminator.path = "code"
* component ^slicing.ordered = false
* component ^slicing.rules = #open
* component contains
    systolic 1..1 MS and
    diastolic 1..1 MS
* component[systolic] ^short = "Systolic Blood Pressure"
* component[systolic].code 1..1 MS
* component[systolic].code = $sct#271649006 //"Systolic blood pressure (observable entity)"
* component[systolic].code ^short = "Systolic Blood Pressure Code"
* component[systolic].valueQuantity only Quantity
* component[systolic].valueQuantity MS
* component[systolic].valueQuantity.value 1..1 MS
* component[systolic].valueQuantity.value only decimal
* component[systolic].valueQuantity.unit 1..1 MS
* component[systolic].valueQuantity.unit only string
* component[systolic].valueQuantity.system 1..1 MS
* component[systolic].valueQuantity.system only uri
* component[systolic].valueQuantity.system = "http://unitsofmeasure.org" (exactly)
* component[systolic].valueQuantity.code 1..1 MS
* component[systolic].valueQuantity.code only code
* component[systolic].valueQuantity.code = #mm[Hg] (exactly)
* component[diastolic] ^short = "Diastolic Blood Pressure"
* component[diastolic].code 1..1 MS
* component[diastolic].code = $sct#271650006 "Diastolic blood pressure (observable entity)"
* component[diastolic].code ^short = "Diastolic Blood Pressure Code"
* component[diastolic].valueQuantity only Quantity
* component[diastolic].valueQuantity MS
* component[diastolic].valueQuantity.value 1..1 MS
* component[diastolic].valueQuantity.value only decimal
* component[diastolic].valueQuantity.unit 1..1 MS
* component[diastolic].valueQuantity.unit only string
* component[diastolic].valueQuantity.system 1..1 MS
* component[diastolic].valueQuantity.system only uri
* component[diastolic].valueQuantity.system = "http://unitsofmeasure.org" (exactly)
* component[diastolic].valueQuantity.code 1..1 MS
* component[diastolic].valueQuantity.code only code
* component[diastolic].valueQuantity.code = #mm[Hg] (exactly)