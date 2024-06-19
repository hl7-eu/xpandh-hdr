// --------------------------------------------------
ValueSet: MedicalDevicesSnomedCtXpandhVS
Id: medical-devices-xpandh-vs
Title: "Medical Devices (SNOMED CT) - Xpandh"
Description: "This value set includes codes from SNOMED Clinical Terms®: all descendants of 49062001 \\|Device (physical object)\\|."
* insert SetFmmandStatusRule (1, draft)
* insert SNOMEDCopyrightForVS
* ^experimental = false
* include codes from system $sct where concept descendent-of #49062001 "Device (physical object)"

// --------------------------------------------------
ValueSet: MedicalDevicesSnomedAbsentUnknownXpandhVS
Id: medical-devices-snomed-absent-unknown-xpandh-vs
Title: "Medical Devices - SNOMED CT + Absent/Unknown - IPS"
Description: "This value set includes codes from SNOMED Clinical Terms (SNOMED CT®) that are included in: all descendants of 49062001 \\|Device (physical object)\\|, plus IPS codes for absent/unknown devices."
* insert SetFmmandStatusRule (1, draft)
* insert SNOMEDCopyrightForVS
* ^experimental = false
* include codes from valueset MedicalDevicesSnomedCtXpandhVS
* include codes from valueset $AbsentOrUnknownDevicesUvIps
