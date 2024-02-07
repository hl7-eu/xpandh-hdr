//===================================================
//  Logical Model				xph-hdr-enc.fsh
//===================================================
Logical: HdrEHNEncounter
Id: HDREncounter
Title: "A2.3 - Encounter (eHN)"
Description:  """Hospital Discharge Report - Encounter - A.2.3 eHN
Maturity Level: 0 Draft"""
* type 1..1 CodeableConcept "A.2.3.1 - Encounter type" """The type of the encounter whether inpatient or short stay encounter."""
* note 0..1 string "A.2.3.2 - Encounter note" """A narrative description of the encounter course."""
* admission 1..1 BackboneElement "A.2.3.3 - Admission" """Admission"""
* admission.urgency 0..1 CodeableConcept "A.2.3.3.1 - Admission urgency" """Admission type, either emergency or planned"""
* admission.date 1..1 dateTime "A.2.3.3.2 - Admission date" """Admission date and time."""
* admission.admitter 0..1 BackboneElement "Admitting professional" """Admitting Healthcare Professional"""
* admission.admitter.identifier 0..1 Identifier "A.2.3.3.3 - Admitting professional ID" """The health professional identification number. Either an internal identifier assigned by a healthcare provider institution or (preferably) a national health professional ID such as the licence or registration number. """
* admission.admitter.name 0..1 HumanName "A.2.3.3.4 - Admitting professional name" """Person name [the structure of the name will be the same as for the patient (given name, family name / surname)]."""

* admission.admitter.organizationID 0..1 Identifier "A.2.3.3.5 - Admitting organisation ID" """The healthcare provider organisation identifier."""
* admission.admitter.organization 0..1 BackboneElement "A.2.3.3.6 - Admitting organisation" """The healthcare provider organisation information."""

* admission.source 0..1 CodeableConcept "A.2.3.3.7 - Admit Source" """From where the patient was admitted (e.g. physician referral, transfer)."""

* admission.referringHP 0..1 BackboneElement "Referring professional" """Referring Healthcare Professional"""
* admission.referringHP.identifier 0..1 Identifier "A.2.3.3.8 - Referring professional ID" """The health professional identification number. Either an internal identifier assigned by a healthcare provider institution or (preferably) a national health professional ID such as the licence or registration number. """
* admission.referringHP.name 0..1 HumanName "A.2.3.3.9 - Referring professional name" """Person name [the structure of the name will be the same as for the patient (given name, family name / surname)]."""
* admission.referringHP.organizationID 0..1 Identifier "A.2.3.3.10 - Referring organisation ID" """The healthcare provider organisation identifier."""
* admission.referringHP.organization 0..1 BackboneElement "A.2.3.3.11 - Referring organisation" """The healthcare provider organisation information."""

* admissionReason 1..1 BackboneElement "A.2.3.4 - Admission reason" """Admission reason"""
* admissionReason.code 0..* CodeableConcept "A.2.3.4.1 - Admission reason" """Reason or reasons for admission, e.g. Problem, procedure or finding."""
* admissionReason.comment 0..1 string "A.2.3.4.2 - Admission reason comment" """Explanation of the reason for the encounter."""
* admissionReason.legalStatus 0..1 CodeableConcept "A.2.3.4.3 - Admission legal status" """Legal status/situation at admission. The legal status indicates the basis on which the patient is staying in a healthcare organisation. This can be either voluntary or involuntary, however the legal status is always determined by a court. A patient can also receive healthcare based on a forensic status. (voluntary, involuntary, admission by legal authority)."""

* discharge 1..1 BackboneElement "A.2.3.5 - Discharge" """Discharge"""
* discharge.date 1..1 dateTime "A.2.3.5.1 - Discharge date" """Discharge date and time"""
* discharge.destinationType 0..1 CodeableConcept "A.2.3.5.2 - Discharge destination type" """Type of location to which the patient will go after the encounter. E.g. home, hospital, nursing home, left against medical advice etc.  """
* discharge.destinationLocation 0..1 CodeableConcept "A.2.3.5.3 - Destination location" """The location/organisation to which the patient will go after the encounter. Name, address and telecommunication contact."""
* location 0..*  BackboneElement "A.2.3.6 - Location - All locations/departments where the patient stayed (was boarded) within the hospital." """Location - All locations/departments where the patient stayed (was boarded) within the hospital."""
* location.period 1..1 Period "A.2.3.6.1 - Period" """Time period during which the patient was present at the location"""
* location.organization 1..1 BackboneElement "Organization" """Organization or organization part (hospital department) where the patient was present."""
* location.organization.identifier 0..1 Identifier "A.2.3.6.2 - Organisation Part ID" """The organisation’s part identifier."""
* location.organization.name 1..1 string "A.2.3.6.3 - Organisation Part Name" """Full name of the organisation part, e.g. Name of the department"""
* location.organization.details 0..1 BackboneElement "A.2.3.6.4 - Organisation Part Details" """Address, contact names and contact details, specialty of the organisation part."""


//--------------------------------------------------------------------------------
//  Comments - Preferred Code systems
//--------------------------------------------------------------------------------

* type ^comment = """hl7v3:ActEncounterCode"""

* admission.urgency ^comment = """hl7:v3-xEncounterAdmissionUrgency"""
* admission.source ^comment = """Hl7:admit-source"""
* admissionReason.code ^comment = """ICD-10*
SNOMED CT
Orphacode if rare disease is diagnosed"""
* admissionReason.legalStatus ^comment = """SNOMED CT"""

* discharge.destinationType ^comment = """hl7.discharge-disposition"""

* location.organization.details ^comment = """SNOMED CT"""



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
* admission.admitter.organizationID -> "TBD"
* admission.admitter.organization -> "TBD"
* admission.source -> "TBD"
* admission.referringHP -> "TBD"
* admission.referringHP.identifier -> "TBD"
* admission.referringHP.name -> "TBD"
* admission.referringHP.organizationID -> "TBD"
* admission.referringHP.organization -> "TBD"
* admissionReason -> "TBD"
* admissionReason.code -> "TBD"
* admissionReason.comment -> "TBD"
* admissionReason.legalStatus -> "TBD"
* discharge -> "TBD"
* discharge.date -> "TBD"
* discharge.destinationType -> "TBD"
* discharge.destinationLocation -> "TBD"
* location -> "TBD"
* location.period -> "TBD"
* location.organization -> "TBD"
* location.organization.identifier -> "TBD"
* location.organization.name -> "TBD"
* location.organization.details -> "TBD"
