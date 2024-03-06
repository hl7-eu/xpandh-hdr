
// should we define our own coding or reuse CMS
//(https://www.cms.gov/medicare/payment/fee-for-service-providers/hospital-aquired-conditions-hac/coding) ?
CodeSystem: POAIndicatorXpanDHCS
Id: poa-indicator-xpandh-cs
Title: "Present on Admission (POA) Indicator"
Description: """This code system consists of Present on Admission (POA) indicators which are assigned to the diagnoses and the external cause of injury codes to indicate the presence or absence of the diagnosis at the time of inpatient admission."""
* ^version = "2022.12.02"
* ^status = #draft
//* ^date = "2022-12-02"
* ^experimental = false
//* ^publisher = ""
* ^description = "Present on Admission (POA) indicators"
* ^caseSensitive = true
* ^content = #complete

* #POA "Present on admission"
* #HAC "Hospital acquired condition"
* #NA "Not applicable or unknown"
