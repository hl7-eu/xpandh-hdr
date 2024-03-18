Profile: ObservationVitalSignsXpandh
Parent: Observation
Id: observation-vital-signs-xpandh
Title:    "Vital Signs Observation"
Description: "This profile constrains the Observation resource to represent various types of vital signs observations. This is the base profile from which the other specific vital sign profiles are derived."
* ^experimental = false
* ^purpose = "This profile constrains the Observation resource to represent various types of vital signs observations."
* status = #final (exactly)
* category only $CodeableConcept-uv-ips
* category = $observation-category#vital-signs
* code only $CodeableConcept-uv-ips
* code MS
* code from AllVitalSignsObservationVS
* subject only Reference(PatientXpandh)
* subject MS
* effective[x] only dateTime or Period
* effective[x] MS
* effective[x] ^type.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
* effective[x] ^type.extension.valueBoolean = true
//* value[x] only Quantity or CodeableConcept or string or boolean or integer or Range or Ratio or SampledData or time or dateTime or Period
* value[x] MS
* value[x] from http://hl7.org/fhir/ValueSet/ucum-vitals-common|4.0.1 (extensible)
* value[x] ^short = "Vital Signs Value"
* value[x] ^definition = "Vital Signs value are typically recorded using the Quantity data type."
* value[x] ^type.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
* value[x] ^type.extension.valueBoolean = true
* value[x] ^binding.description = "Common UCUM units for recording Vital Signs."
* dataAbsentReason MS
* component MS
* component ^short = "Component observations"
* component ^definition = "Used when reporting component observation such as systolic and diastolic blood pressure."
* component.code MS
//* component.code from UsCoreVitalSigns (extensible)
* component.code ^binding.description = "The vital sign codes from the base FHIR and US Core Vital Signs."
//* component.value[x] only Quantity or CodeableConcept or string or boolean or integer or Range or Ratio or SampledData or time or dateTime or Period
* component.value[x] MS
* component.value[x] from http://hl7.org/fhir/ValueSet/ucum-vitals-common|4.0.1 (extensible)  // should we support inches and pounds or should we specify own selection of units?
* component.value[x] ^short = "Vital Sign Component Value"
* component.value[x] ^definition = "Vital Signs value are typically recorded using the Quantity data type. For supporting observations such as cuff size could use other datatypes such as CodeableConcept."
* component.value[x] ^type.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
* component.value[x] ^type.extension.valueBoolean = true
* component.value[x] ^binding.description = "Common UCUM units for recording Vital Signs."
* component.dataAbsentReason MS


/*
Profile: AnthropometricObservationXpandh
Parent: ObservationVitalSignsXpandh
Id: anthropometric-observation-xpandh
Title:    "Anthropometric Observation"
* code from AnthropometricObservationVS
*/