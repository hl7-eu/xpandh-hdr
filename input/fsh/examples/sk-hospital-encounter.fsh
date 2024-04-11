Instance: SK-Hospital-Encounter
InstanceOf: InpatientEncounterHDRXpandh
Usage: #example
Description: "Slovak hospital - example of a health provider organization"

* language = $bcp47#sk
* class = $v3-ActCode#IMP "Hospitalizácia"
* status = $encounter-status#finished
* priority = $v3-act-priority#R "routine"
* contained[+] = Condition-1
// * type =
* subject = Reference(Patient/Mracena)
* period.start = "2022-12-20T08:00:00+01:00"
* period.end = "2022-12-28T10:30:00+01:00"
* reasonCode.text = "popsat důvod hospitalizace slovně"
* hospitalization.origin = Reference(SK-Organization-GP)
* hospitalization.admitSource = $encounter-admit-source#gp
* diagnosis[+].condition = Reference(Condition-1)



// Here: to be completed !!!

Instance: Condition-1
InstanceOf: Condition
Title: "Condition: ICD-10 A00.0"
Description: "Example of condition"
Usage: #inline
* code = $icd10#A00.0 "Cholera"
* subject = Reference(Patient/Mracena)