//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: TNM_T_ClinicalCategoryVS
Id: TNM-T-clinical-category-vs
Title: "Clinical T"
Description: "Primary tumor (T) clinical category"
//-------------------------------------------------------------------------------------------
* insert SetFmmandStatusRule (1, draft)
* insert SNOMEDCopyrightForVS

* ^status = #active
* ^experimental = true
* codes from system $sct where concept is-a $sct#1222585009 "American Joint Committee on Cancer clinical T category allowable value (qualifier value)"

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: TNM_T_PathologicalCategoryVS
Id: TNM-T-pathological-category-vs
Title: "Pathological T"
Description: "Primary tumor (T) pathological category"
//-------------------------------------------------------------------------------------------
* insert SetFmmandStatusRule (1, draft)
* insert SNOMEDCopyrightForVS

* ^status = #active
* ^experimental = true
* codes from system $sct where concept is-a $sct#1222589003 "American Joint Committee on Cancer pathological T category allowable value (qualifier value)"

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: TNM_T_CategoryVS
Id: TNM-T-category-vs
Title: "Primary tumor T"
Description: "Primary tumor (T) category"
//-------------------------------------------------------------------------------------------
* insert SetFmmandStatusRule (1, draft)
* insert SNOMEDCopyrightForVS

* ^status = #active
* ^experimental = true
* codes from valueset TNM_T_ClinicalCategoryVS
* codes from valueset TNM_T_PathologicalCategoryVS
