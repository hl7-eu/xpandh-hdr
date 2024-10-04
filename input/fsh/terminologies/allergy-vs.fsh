ValueSet: AllergyIntoleranceSubstancesXpandhVS
Id: allergy-intolerance-substances-xpandh-vs
* insert SetFmmandStatusRule (1, draft)
* insert SNOMEDCopyrightForVS
* ^experimental = false
* include codes from system $sct where concept descendent-of #105590001 "Substance (substance)"
* include codes from system $sct where concept descendent-of #373873005 "Pharmaceutical / biologic product (product)"
* include codes from system $sct where concept descendent-of #420134006 "Propensity to adverse reaction (finding)"

ValueSet: AllergyIntoleranceXpandhVS
Id: allergy-intolerance-xpandh-vs
Title: "Allergy Intolerance - Xpandh"
Description: "Xpandh allergy intolerance codes value set. This value set includes codes from SNOMED Clinical Terms®: all descendants of 373873005 \\|Pharmaceutical / biologic product (product)\\|; all descendants of 105590001 \\|Substance (substance)\\|; all descendants of 418038007 \\|Propensity to adverse reactions to substance (finding)\\| plus codes for absent and unknown allergies."
* insert SetFmmandStatusRule (1, draft)
* insert SNOMEDCopyrightForVS
* ^experimental = false
* include codes from valueset AllergyIntoleranceSubstancesXpandhVS
* include codes from valueset $AbsentOrUnknownAllergiesUvIps