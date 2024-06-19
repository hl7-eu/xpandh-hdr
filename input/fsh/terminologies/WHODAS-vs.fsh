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
