//===================================================				
//  Logical Model				xph-hdr-enc.fsh
//===================================================				
Logical: HdrEHNEncounter				
Id: HDREncounter				
Title: "A2.3 - Encounter"				
Description:  """Hospital Discharge Report - Encounter - A2.3 eHN
Maturity Level: 0 Draft"""				
* type 1..1 CodeableConcept "A.2.3.1 - Encounter type [Mandatory]" """The type of the encounter whether inpatient or short stay encounter."""				
* note 0..1 string "A.2.3.2 - Encounter note [Optional]" """A narrative description of the encounter course."""				
* admission 1..1 BackboneElement "A.2.3.3 - Admission [Mandatory]" """A.2.3.3 - Admission [Mandatory]"""				
* admission.urgency 0..1 CodeableConcept "A.2.3.3.1 - Admission urgency [Required]" """Admission type, either emergency or planned"""				
* admission.date 1..1 dateTime "A.2.3.3.2 - Admission date [Mandatory]" """Admission date and time."""				
* admission.admitter 0..* BackboneElement "- Admitting professional Id []" """Admitting Healthcare Professional"""				
* admission.admitter.identifier 0..1 Identifier "A.2.3.3.3 - Admitting professional Id [Required]" """The health professional identification number. Either an internal identifier assigned by a healthcare provider institution or (preferably) a national health professional ID such as�the license or registration number.�"""				
* admission.admitter.name 0..1 HumanName "A.2.3.3.4 - Admitting professional name [Required]" """Person name."""				
* admission.source 0..1 CodeableConcept "A.2.3.3.5 - Admit Source [Required]" """From where patient was admitted (e.g. physician referral, transfer)."""				
* admission.referringHP 0..* BackboneElement " - Referring professional Id []" """Referring Healthcare Professional"""				
* admission.referringHP.identifier 0..1 Identifier "A.2.3.3.6 - Referring professional Id [Required]" """The health professional identification number. Either an internal identifier assigned by a healthcare provider institution or (preferably) a national health professional ID such as�the license or registration number.�"""				
* admission.referringHP.name 0..1 HumanName "A.2.3.3.7 - Referring professional name [Required]" """Person name."""				
* admission.referringHP.organization 0..1 BackboneElement "A.2.3.3.8 - Referring organization [Required]" """The healthcare provider organization information."""				
* reason 1..1 BackboneElement "A.2.3.4 - Admission reason [Mandatory]" """Reason for admission, e.g. Problem, procedure or finding."""				
* reason.code 0..* CodeableConcept "A.2.3.4.1 - Admission reason [Required]" """Reason for admission code"""				
* reason.comment 0..1 string "A.2.3.4.2 - Admission reason comment [Optional]" """Explanation of the reason for the encounter."""				
* reason.legalStatus 0..1 CodeableConcept "A.2.3.4.3 - Admission legal status [Required]" """Legal status/situation at admission. The legal status indicates the basis on which the patient is staying in a healthcare organization. This can be either voluntary or involuntary, however the legal status is always determined by a court. A patient can also receive healthcare based on a forensic status. (voluntary, involuntary, admission by legal authority)."""				
* discharge 0..* BackboneElement "A.2.3.5 - Discharge [Mandatory]" """A.2.3.5 - Discharge [Mandatory]"""				
* discharge.dateTime 1..1 dateTime "A.2.3.5.1 - Discharge date [Mandatory]" """Discharge date and time"""				
* discharge.destinationType 0..1 CodeableConcept "A.2.3.5.2 - Discharge destination type [Required]" """Type of location to which the patient will go after the encounter. E.g. home, hospital, nursing home, left against medical advice etc.��"""				
* discharge.destinationLocation 0..1 BackboneElement "A.2.3.5.3 - Destination location [Required]" """The location/organization to which the patient will go after the encounter. Name, address and telecommunication contact."""				
* location 0..* BackboneElement "A.2.3.6 - Location - All locations/departments where the patient stayed within the hospital. [Required]" """A.2.3.6 - Location - All locations/departments where the patient stayed within the hospital. [Required]"""				
* location.period 1..1 Period "A.2.3.6.1 - Period [Mandatory]" """Time period during which the patient was present at the location"""				
* location.organization 0..1 BackboneElement " - Organization Id []" """ - Organization Id []"""				
* location.organization.id 0..1 Identifier "A.2.3.6.2 - Organization Id [Required]" """The organization?s part identifier."""				
* location.organization.name 1..1 string "A.2.3.6.3 - Organization Part Name [Mandatory]" """Full name of the organization part, e.g. Name of the department"""				
* location.organization.details 1..* BackboneElement "A.2.3.6.4 - Organization Part Details [Required]" """Address, contact names and contact details, specialty of the organization part."""				
//--- END				
//--- END				
//--- END				
				
				
				
				
				
				
				
//--------------------------------------------------------------------------------				
//  Comments				
//--------------------------------------------------------------------------------				
* type ^comment = """Selection from hl7v3:ActEncounterCode"""				
				
				
* admission.urgency ^comment = """http://terminology.hl7.org/ValueSet/v3-xEncounterAdmissionUrgency"""				
				
				
				
				
* admission.source ^comment = """http://terminology.hl7.org/CodeSystem/admit-source"""				
				
				
				
				
				
* reason.code ^comment = """ICD-10*
SNOMED CT
Orphacode"""				
				
* reason.legalStatus ^comment = """SNOMED CT"""				
				
				
* discharge.destinationType ^comment = """http://terminology.hl7.org/CodeSystem/discharge-disposition"""				
				
				
				
				
				
				
				
//--- END				
//--- END				
//--- END				
				
				
				
// -------------------------------------------------------------------------------				
//  Map to FHIR R4				
// -------------------------------------------------------------------------------				
Mapping: HdrEHNEncounter2FHIR				
Id: fhir				
Title: "Hospital Discharge Report model to FHIR R4 Map"				
Source: HDREncounter				
Target: "hl7.org/fhir/r4"				
				
* -> "TBD"				
* type -> "TBD"				
* note -> "TBD"				
* admission -> "TBD"				
* admission.urgency -> "TBD"				
* admission.date -> "TBD"				
* admission.admitter -> "TBD"				
* admission.admitter.identifier -> "TBD"				
* admission.admitter.name -> "TBD"				
* admission.source -> "TBD"				
* admission.referringHP -> "TBD"				
* admission.referringHP.identifier -> "TBD"				
* admission.referringHP.name -> "TBD"				
* admission.referringHP.organization -> "TBD"				
* reason -> "TBD"				
* reason.code -> "TBD"				
* reason.comment -> "TBD"				
* reason.legalStatus -> "TBD"				
* discharge -> "TBD"				
* discharge.dateTime -> "TBD"				
* discharge.destinationType -> "TBD"				
* discharge.destinationLocation -> "TBD"				
* location -> "TBD"				
* location.period -> "TBD"				
* location.organization -> "TBD"				
* location.organization.id -> "TBD"				
* location.organization.name -> "TBD"				
* location.organization.details -> "TBD"				
// --END				
// --END				
// --END				
// --END				
