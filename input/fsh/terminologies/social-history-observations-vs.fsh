// --------------------------------------------------
ValueSet: SocialHistoryObservationsVS
Id: socail-history-observations-xpandh-vs
Title: "Social history observation codes: Snomed CT"
Description: "This value set includes selected codes from SNOMED Clinical Terms®"
* insert SetFmmandStatusRule (1, draft)
* insert SNOMEDCopyrightForVS
* ^experimental = false

//* codes from system $sct where concept descendent-of $sct#71388002 "Procedure (procedure)"