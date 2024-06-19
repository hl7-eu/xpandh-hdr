ValueSet: MedicationSnomedCodesAbsentUnknown
Id: medication-snomed-absent-unknown-uv-ips
Title: "Medications - SNOMED CT + Absent/Unknown (IPS)"
Description: "This value set includes the codes from SNOMED CT that are included in: descendants of 373873005 \\|Pharmaceutical / biologic product (product)\\|, excluding the descendants of 787859002 \\|Vaccine product (medicinal product)\\|, plus IPS codes for absent/unknown medications."
* ^status = #active
* ^experimental = false
* ^publisher = "HL7 International"
* ^contact.name = "HL7 International"
* ^contact.telecom[0].system = #phone
* ^contact.telecom[=].value = "+1 734 677 7777"
* ^contact.telecom[+].system = #fax
* ^contact.telecom[=].value = "+1 734 677 6622"
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "info@hl7.org"
* ^immutable = false
* ^copyright = "The HL7 International IPS implementation guides incorporate SNOMED CT®, used by permission of the International Health Terminology Standards Development Organisation, trading as SNOMED International. SNOMED CT was originally created by the College of American Pathologists. SNOMED CT is a registered trademark of the International Health Terminology Standards Development Organisation, all rights reserved. Implementers of SNOMED CT should review [usage terms](http://www.snomed.org/snomed-ct/get-snomed-ct) or directly contact SNOMED International: info@snomed.org"
* include codes from valueset MedicationsSnomedCtUvIps
* include codes from valueset AbsentOrUnknownMedicationUvIps