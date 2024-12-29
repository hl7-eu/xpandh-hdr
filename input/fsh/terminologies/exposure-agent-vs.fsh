ValueSet: ExposureAgentXpandhVS
Id: exposure-agent-xpandh-vs
Title: "Exposure of transmissible agents - Xpandh"
Description: "Xpandh exposure agent value set. This value set includes codes from SNOMED Clinical Terms®: all descendants of 373873005 \\|Pharmaceutical / biologic product (product)\\|; all descendants of 105590001 \\|Substance (substance)\\|; all descendants of 418038007 \\|Propensity to adverse reactions to substance (finding)\\| plus codes for absent and unknown allergies."
* insert SetFmmandStatusRule (1, draft)
* insert SNOMEDCopyrightForVS
* ^experimental = false

* codes from system $icd10 where concept descendant-of #A00-B99 "Certain infectious and parasitic diseases"
* codes from system $sct where concept descendant-of #40733004 "Infectious disease (disorder)"
