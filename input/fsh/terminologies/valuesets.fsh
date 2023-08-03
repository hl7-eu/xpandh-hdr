ValueSet:      HdrEncounterClassXpandh
Id:	       hdr-encounterClass-xpandh
Title:	       "Encounter Class"
Description:   """Hospital Discharge Report Encounter Class"""


// HK: we should discuss if all values are applicable in case of inpatient encounter, e.g. pre-admission should not be present in HDR accordign to my opinion, what about observation encounter?
* $v3-ActCode#IMP	    "inpatient encounter"
* $v3-ActCode#ACUTE	    "inpatient acute"
* $v3-ActCode#NONAC	    "inpatient non-acute"
* $v3-ActCode#OBSENC	"observation encounter"
* $v3-ActCode#PRENC	    "pre-admission"
* $v3-ActCode#SS	    "short stay"