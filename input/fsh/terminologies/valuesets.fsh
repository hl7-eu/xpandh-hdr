// --------------------------------------------------
ValueSet:     HdrEncounterClassXpandhVS
Id:	          hdr-encounterClass-xpandh-vs
Title:	      "Encounter Class Value Set"
Description:  """Hospital Discharge Report Encounter Class specifies a general class of inpatient encounter as being accute, nonaccute, emergency, short stay ... """

* insert SetFmmandStatusRule (1, draft)
* $v3-ActCode#IMP	    "inpatient encounter"  // should we have this general category ?
* $v3-ActCode#ACUTE	    "inpatient acute"
* $v3-ActCode#NONAC	    "inpatient non-acute"
* $v3-ActCode#OBSENC	"observation encounter"
//* $v3-ActCode#PRENC	    "pre-admission"  // should we have pre-admission if this is value set for hospital discharge report?
* $v3-ActCode#SS	    "short stay"


// --------------------------------------------------
ValueSet:   HdrEncounterTypeXpandhVS
Id:         hdr-encounter-type-xpandh-vs
Title:      "In-patient Encounter Type Value Set"
Description:  """Hospital Discharge Report Encounter Type allows to classify encounter using general type of care provision regimen during the inpatient encounter. Value set includes concepts from the SNOMED CT descendants of 225351009 (Care provision regime) but needs to be further dicsussed"""
* insert SetFmmandStatusRule (1, draft)
* insert SNOMEDCopyrightForVS
* include codes from system $sct where concept is-a #225351009 "Care provision regime"

// --------------------------------------------------
ValueSet:   HdrAdmissionUrgencyXpandhVS
Id:         hdr-admission-urgency-xpandh-vs
Title:      "Admission Urgency Value Set"
Description:  """Hospital Discharge Report Admission Urgency value set includes selected codes from HL7 v3-ActPriority code system."""
* insert SetFmmandStatusRule (1, draft)
* $v3-act-priority#EL "elective"
* $v3-act-priority#EM "emergency"
* $v3-act-priority#R "routine"
* $v3-act-priority#UR "urgent"

// --------------------------------------------------
ValueSet:   HdrConditionXpandhVS
Id:         hdr-condition-xpandh-vs
Title:      "Condition Value Set"
Description:  """Hospital Discharge Report Condition value set includes selected codes from recommended EU code systems for health conditions (WHO-ICD-10, SNOMED CT and Orphacodes)."""
* insert SetFmmandStatusRule (1, draft)
* insert SNOMEDCopyrightForVS
* codes from system $icd-10
* codes from system $orpha
* codes from system $sct where concept is-a #404684003 "Clinical finding"
* codes from system $sct where concept is-a #71388002 "Procedure"
* codes from system $sct where concept is-a #243796009 "Context dependent categories"
* codes from system $sct where concept is-a #272379006 "Events"

// --------------------------------------------------
ValueSet:   HdrConditionMandatoryXpandhVS
Id:         hdr-condition-mandatory-xpandh-vs
Title:      "Mandatory Condition Value Set"
Description:  """Hospital Discharge Report Mandatory Condition value set includes selected codes from recommended EU code systems for health conditions (WHO-ICD-10, SNOMED CT and Orphacodes) and IPS Absent and Unknown Data."""
* insert SetFmmandStatusRule (1, draft)
* codes from valueset HdrConditionXpandhVS
* $absent-unknown-uv-ips#no-problem-info "No information about problems"
* $absent-unknown-uv-ips#no-known-problems "No known problems"
* $sct#385432009 "Not applicable"

// --------------------------------------------------
ValueSet:   HdrPOAIndicatorXpandhVS
Id:         hdr-poa-indicator-xpandh-vs
Title:      "Condition Present on Admission (POA) Value Set"
Description:  """Hospital Discharge Report Condition Present on Admission value set includes codes from Present on Admission code system."""
* insert SetFmmandStatusRule (1, draft)
* $poa#POA "Present on admission"
* $poa#HAC "Hospital acquired condition"
* $poa#NA "Not applicable or unknown"

// --------------------------------------------------
ValueSet:   HdrTreatedXpandhVS
Id:         hdr-treated-xpandh-vs
Title:      "Treatment Class Value Set"
Description: "Value set for category of treatement of the conditoin during encounter."
* insert SetFmmandStatusRule (1, draft)
* insert SNOMEDCopyrightForVS
* $sct#69845001 "Received therapy or drug for"
* $sct#25265005 "Did not receive therapy or drug for"


// --------------------------------------------------
ValueSet:   AdmissionVoluntaryStatusVS
Id:         admission-voluntary-status-vs
Title:      "Encounter Voluntary Status Value Set"
Description: "Value set of voluntary nature of the encounter."
* insert SetFmmandStatusRule (1, draft)
* insert SNOMEDCopyrightForVS
* $sct#135848002 "Voluntary admission"
* $sct#135847007 "Involuntary admission"
* $sct#70755000 "Hospital admission, by legal authority"


// --------------------------------------------------
// To be discussed
ValueSet:   BMIObservationVS
Id:         bmi-observation-vs
Title:      "BMI Observation Value Set"
Description: "Body mass index observation codes from the XpanDH BMI observation."
* insert SetFmmandStatusRule (1, draft)
* insert SNOMEDCopyrightForVS
* $sct#60621009 "Body mass index (observable entity)"
* $sct#715456008 "Percentage median body mass index for age and sex (observable entity)"   // to be discussed

// --------------------------------------------------
// To be discussed
ValueSet:   BMIObservationUnitVS
Id:         bmi-observation-unit-vs
Title:      "BMI Observation Unit Value Set"
Description: "Body mass index observation units for the XpanDH BMI observations."
* insert SetFmmandStatusRule (1, draft)
//* insert UCUMCopyrightForVS
* $ucum#kg/m2 "kilogram per square meter"
* $ucum#% "percent"   // to be discussed

// --------------------------------------------------
// To be discussed
ValueSet:   BodyHeightObservationVS
Id:         body-height-observation-vs
Title:      "Body Height Observation Value Set"
Description: "Body height observation codes from the XpanDH body height observations."
* insert SetFmmandStatusRule (1, draft)
* insert SNOMEDCopyrightForVS
* $sct#1153637007 "Body height (observable entity)"
* $sct#1162419008 "Self reported body height (observable entity)"  // To be discussed

// --------------------------------------------------
// To be discussed
ValueSet:   BodyWeightObservationVS
Id:         body-weight-observation-vs
Title:      "Body Weight Observation Value Set"
Description: "Body weight observation codes from the XpanDH body weight observations."
* insert SetFmmandStatusRule (1, draft)
* insert SNOMEDCopyrightForVS
* $sct#27113001 "Body weight (observable entity)"
* $sct#784399000 "Self reported body weight (observable entity)"  // To be discussed

// --------------------------------------------------
// To be discussed
ValueSet:   BodyWeightUnitsVS
Id:         body-weight-units-vs
Title:      "Body Weight Observation Value Set"
Description: "Body weight observation codes from the XpanDH body weight observations."
* insert SetFmmandStatusRule (1, draft)
* $ucum#kg "kilogram"
* $ucum#g "gram"

// --------------------------------------------------
// To be discussed
ValueSet:   CircumferenceObservationVS
Id:         circumference-observation-vs
Title:      "Circumference Observation Value Set"
Description: "Circumference observation codes from the XpanDH Circumference observations."
* insert SetFmmandStatusRule (1, draft)
* insert SNOMEDCopyrightForVS
* $sct#276361009 "Waist circumference (observable entity)"
* $sct#284472007 "Hip circumference (observable entity)"
* $sct#413171006 "Lower limb circumference (observable entity)"  // To be discussed
* $sct#363812007 "Head circumference (observable entity)"  // To be discussed

// --------------------------------------------------
// To be discussed
ValueSet:   SkinfoldThicknessVS
Id:         skinfold-thickness-vs
Title:      "Skinfold Thickness Value Set"
Description: "Skinfold Thickness observation codes from the XpanDH Skinfold Thickness observations."
* insert SetFmmandStatusRule (1, draft)
* insert SNOMEDCopyrightForVS
* codes from system $sct where concept is-a $sct#165186003 "Skin-fold thickness (observable entity)"
* $sct#1162538001 "Triceps skinfold percentile (observable entity)"
* $sct#1162539009 "Triceps skinfold z score (observable entity)"

// --------------------------------------------------
// To be discussed
ValueSet:   SkinfoldThicknessUnitsVS
Id:         skinfold-thickness-units-vs
Title:      "Skinfold Thickness Units Value Set"
Description: "Skinfold Thickness observation units for the XpanDH Skinfold Thickness observations."
* insert SetFmmandStatusRule (1, draft)
* $ucum#mm "millimeter"
* $ucum#1 "1"


// --------------------------------------------------
// To be discussed
ValueSet:   AnthropometricObservationVS
Id:         anthropometric-observation-vs
Title:      "Anthropometric Observation Value Set"
Description: "Anthropometric observation codes from the XpanDH anthropometric observations."
* insert SetFmmandStatusRule (1, draft)
* insert SNOMEDCopyrightForVS
* codes from valueset BMIObservationVS
* codes from valueset BodyHeightObservationVS
* codes from valueset BodyWeightObservationVS
* codes from valueset CircumferenceObservationVS
* codes from valueset SkinfoldThicknessVS
* $sct#1153595005 "Child head circumference for age percentile (observable entity)"

// --------------------------------------------------
// To be discussed
ValueSet:   AllVitalSignsObservationVS
Id:         vital-signs-observation-vs
Title:      "Vital Signs Observation Value Set"
Description: "The vital sign obsevrvation codes from the XpanDH Vital Signs."
* insert SetFmmandStatusRule (1, draft)
* insert SNOMEDCopyrightForVS

* codes from valueset AnthropometricObservationVS
* $sct#364075005 "Heart rate (observable entity)"
* $sct#86290005 "Respiratory rate (observable entity)"
* $sct#75367002 "Blood pressure (observable entity)"  // 271649006 "Systolic blood pressure (observable entity)"  271650006 | Diastolic blood pressure (observable entity)
* $sct#386725007 "Body temperature (observable entity)"
* $sct#103228002 "Hemoglobin saturation with oxygen (observable entity)"

// --------------------------------------------------
ValueSet: AssessmentObservationCategoryVS
Id: assessment-observation-category-vs
Title: "Xpandh Assessment Observation Category"
Description: "Used to classify the context of a survey, screening or assessment for assessment observations and may be used to assist with indexing and searching for appropriate instances."
* ^status = #active
* ^experimental = false
//* ^date = "2022-09-29"
//* ^copyright = "Used by permission of HL7 International, all rights reserved Creative Commons License"
* include codes from system AssessmentCategoryXpanDHCS
//* include codes from system $observation-category


// --------------------------------------------------
ValueSet: FunctionalAssessmentScalesVS
Id: functional-assessment-scales-vs
Title: "Xpandh Functional Assessment Scales"
Description: "Used to specify type of functional assessment scale. May be used to assist with indexing and searching for appropriate instances."
* ^status = #active
* ^experimental = false
* $sct#719091001 "World Health Organization Disability Assessment Schedule 2.0 (assessment scale)"  // WHODAS (World Health Organization Disability Assessment Schedule) 2.0
* $sct#273302005 "Barthel index (assessment scale)"
* $sct#443364002 "Modified Barthel index of activities of daily living (assessment scale)"


// --------------------------------------------------
ValueSet: WhodasResultVS
Id: whodas-result-vs
Title: "Xpandh WHODAS Result Valueset"
Description: "Used to specify WHODAS Disability Assessment Schedule 2.0 functional assessment result codes."
* ^status = #active
* ^experimental = false
* $whodas#0 "None"
* $whodas#1 "Mild"
* $whodas#2 "Moderate"
* $whodas#3 "Severe"
* $whodas#4 "Extreme"

// --------------------------------------------------
ValueSet: WHODASDomainVS
Id: whodas-domain-vs
Title: "Xpandh WHODAS Domain Valueset"
Description: "Used to specify WHODAS Disability Assessment Schedule 2.0 assessment domains."
* ^status = #active
* ^experimental = false
* $whodas#D1 "Cognition"
* $whodas#D2 "Mobility"
* $whodas#D3 "Self care"
* $whodas#D4 "Getting along"
* $whodas#D5 "Life activities"
* $whodas#D6 "Participation"

// --------------------------------------------------
ValueSet: WHODASCodeVS
Id: whodas-code-vs
Title: "Xpandh WHODAS Codes Valueset"
Description: "Used to specify WHODAS Disability Assessment Schedule 2.0 assessment codes."
* ^status = #active
* ^experimental = false
* include codes from system $whodas where concept.level = "1"
