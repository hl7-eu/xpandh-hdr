// --------------------------------------------------
ValueSet:   HdrPOAIndicatorXpandhVS
Id:         hdr-poa-indicator-xpandh-vs
Title:      "Condition Present on Admission (POA) Value Set"
Description:  """Hospital Discharge Report Condition Present on Admission value set includes codes from Present on Admission code system."""
* insert SetFmmandStatusRule (1, draft)
* $poa#POA "Present on admission"
* $poa#HAC "Hospital acquired condition"
* $poa#NA "Not applicable or unknown"