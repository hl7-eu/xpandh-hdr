// --------------------------------------------------
ValueSet:     HdrEncounterClassXpandhVS
Id:	          hdr-encounterClass-xpandh-vs
Title:	      "Encounter Class Value set"
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
Title:      "In-patient Encounter Type Value set"
Description:  """Hospital Discharge Report Encounter Type allows to classify encounter using general type of care provision regimen during the inpatient encounter. Value set includes concepts from the SNOMED CT descendants of 225351009 (Care provision regime) but needs to be further dicsussed"""
* insert SetFmmandStatusRule (1, draft)
* insert SNOMEDCopyrightForVS
* include codes from system $sct where concept is-a #225351009 "Care provision regime"

// --------------------------------------------------
ValueSet:   HdrAdmissionUrgencyXpandhVS
Id:         hdr-admission-urgency-xpandh-vs
Title:      "Admission Urgency Value set"
Description:  """Hospital Discharge Report Admission Urgency value set includes selected codes from HL7 v3-ActPriority code system."""
* insert SetFmmandStatusRule (1, draft)
* $v3-act-priority#EL "elective"
* $v3-act-priority#EM "emergency"
* $v3-act-priority#R "routine"
* $v3-act-priority#UR "urgent"

// --------------------------------------------------
ValueSet:   HdrConditionXpandhVS
Id:         hdr-condition-xpandh-vs
Title:      "Condition Value set"
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
Title:      "Mandatory Condition Value set"
Description:  """Hospital Discharge Report Mandatory Condition value set includes selected codes from recommended EU code systems for health conditions (WHO-ICD-10, SNOMED CT and Orphacodes) and IPS Absent and Unknown Data."""
* insert SetFmmandStatusRule (1, draft)
* codes from valueset HdrConditionXpandhVS
* $absent-unknown-uv-ips#no-problem-info "No information about problems"
* $absent-unknown-uv-ips#no-known-problems "No known problems"
* $sct#385432009 "Not applicable"

// --------------------------------------------------
ValueSet:   HdrPOAIndicatorXpandhVS
Id:         hdr-poa-indicator-xpandh-vs
Title:      "Condition Present on Admission (POA) Value set"
Description:  """Hospital Discharge Report Condition Present on Admission value set includes codes from Present on Admission code system."""
* insert SetFmmandStatusRule (1, draft)
* $poa#POA "Present on admission"
* $poa#HAC "Hospital acquired condition"
* $poa#NA "Not applicable or unknown"

// --------------------------------------------------
ValueSet:   HdrTreatedXpandhVS
Id:         hdr-treated-xpandh-vs
Title:      "Treatment class value set"
Description: "Value set for category of treatement of the conditoin during encounter. Value set is based on SNOMED CT."
* insert SetFmmandStatusRule (1, draft)
* insert SNOMEDCopyrightForVS
* $sct#69845001 "Received therapy or drug for"
* $sct#25265005 "Did not receive therapy or drug for"


// --------------------------------------------------
ValueSet:   AdmissionVoluntaryStatusVS
Id:         admission-voluntary-status-vs
Title:      "Encounter voluntary status value set"
Description: "Value set of voluntary nature of the encounter. Value set is based on SNOMED CT."
* insert SetFmmandStatusRule (1, draft)
* insert SNOMEDCopyrightForVS
* $sct#135848002 "Voluntary admission"
* $sct#135847007 "Involuntary admission"
* $sct#70755000 "Hospital admission, by legal authority"