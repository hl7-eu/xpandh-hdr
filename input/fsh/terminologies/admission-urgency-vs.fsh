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