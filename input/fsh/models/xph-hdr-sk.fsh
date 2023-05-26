//===================================================				
//  Logical Model				xph-hdr-sk.fsh
//===================================================				
Logical: HospitalDischargeReportSK				
Id: HospitalDischargeReportSK				
Title: "Hospital Discharge Report (SK)"				
Description:  """Hospital Discharge Report SK
Maturity Level: 0 Draft"""				
* header 1..1 BackboneElement "A.1-Report header data element [Mandatory]" """A.1-Report header data element [Mandatory]"""				
* header.subject-identification 1..1 BackboneElement "A.1.1-Identification of the patient/subject [Mandatory]" """A.1.1-Identification of the patient/subject [Mandatory]"""				
* header.subject-contact 0..1 BackboneElement "A.1.2-Patient/subject related contact information [Required]" """A.1.2-Patient/subject related contact information [Required]"""				
* header.payer 0..1 BackboneElement "A.1.3-Health insurance and payment information [Required]" """Health insurance information is not always required, however, in some jurisdictions, the insurance number is also used as the patient identifier. It is necessary not just for identification but also forms access to funding for care.ÿ"""				
* header.informationRecipient 0..0 BackboneElement "A.1.4-Information recipient [Required]" """intended recipient or recipients of the report, additional recipients might be identified by the ordering party, e.g. GP, other specialist"""				
* header.author 1..* BackboneElement "A.1.5-Author (by whom the Hospital discharge report was authored) [Mandatory]" """Author (by whom the Hospital discharge report was authored)"""				
* header.attester 0..0 BackboneElement "A.1.6-Attesterÿ [Required]" """A.1.6-Attesterÿ [Required]"""				
* header.legalAuthenticator 0..0 BackboneElement "A.1.7-Legal authenticator [Required]" """The person taking responsibility for the medical content of the document"""				
* header.documentMetadata 0..0 BackboneElement "A.1.8-Document metadata [Mandatory]" """A.1.8-Document metadata [Mandatory]"""				
* header.digitalSignature 0..0 BackboneElement "A.1.9-Digital signatures [Required]" """A.1.9-Digital signatures [Required]"""				
* body 1..1 BackboneElement "A.2-Body (missing elementy ?) [Mandatory]" """Missing element ?"""				
* body.advanceDirectives 0..1 BackboneElement "A.2.1-Advance directives [Required]" """A.2.1-Advance directives [Required]"""				
* body.emergencyInfos 1..1 BackboneElement "A.2.2-Emergency information [Mandatory]" """A.2.2-Emergency information [Mandatory]"""				
* body.encounter 1..1 BackboneElement "A.2.3-Encounter [Mandatory]" """A.2.3-Encounter [Mandatory]"""				
* body.admissionEvaluation 0..1 BackboneElement "A.2.4-Admission evaluation - Admission status should be reported exceptionally only if it is relevant to ensure continuity of care. [Optional]" """A.2.4-Admission evaluation - Admission status should be reported exceptionally only if it is relevant to ensure continuity of care. [Optional]"""				
* body.patientHistory 0..1 BackboneElement "A.2.6-Patient history [Optional]" """A.2.6-Patient history [Optional]"""				
* body.hospitalStay 1..1 BackboneElement "A.2.7-Hospital stay [Mandatory]" """A.2.7-Hospital stay [Mandatory]"""				
* body.dischargeDetails 1..1 BackboneElement "A.2.8-Discharge details [Mandatory]" """structured information should be provided, however if not available, at least a summary note should be present"""				
* body.recommendations 0..1 BackboneElement "A.2.9-Recommendations [Required]" """A.2.9-Recommendations [Required]"""				
//--- END				
//--- END				
//--- END				
//--- END				
//--- END				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
//--------------------------------------------------------------------------------				
//  Logical Model				
//--------------------------------------------------------------------------------				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
//--- END				
//--- END				
//--- END				
//--- END				
//--- END				
				
				
				
				
				
				
				
				
				
				
				
				
				
// -------------------------------------------------------------------------------				
//  Map to FHIR R4				
// -------------------------------------------------------------------------------				
Mapping: HospitalDischargeReportSK2FHIR				
Id: fhir				
Title: "Hospital Discharge Report (SK) model to FHIR R4 Map"				
Source: HospitalDischargeReportSK				
Target: "hl7.org/fhir/r4"				
				
* -> "TBD"				
* header -> "TBD"				
* header.subject-identification -> "TBD"				
* header.subject-contact -> "TBD"				
* header.payer -> "TBD"				
* header.informationRecipient -> "TBD"				
* header.author -> "TBD"				
* header.attester -> "TBD"				
* header.legalAuthenticator -> "TBD"				
* header.documentMetadata -> "TBD"				
* header.digitalSignature -> "TBD"				
* body -> "TBD"				
* body.advanceDirectives -> "TBD"				
* body.emergencyInfos -> "TBD"				
* body.encounter -> "TBD"				
* body.admissionEvaluation -> "TBD"				
* body.patientHistory -> "TBD"				
* body.hospitalStay -> "TBD"				
* body.dischargeDetails -> "TBD"				
* body.recommendations -> "TBD"				
// --END				
// --END				
// --END				
// --END				
// --END				
// --END				
// --END				
// --END				
// --END				
// --END				
// --END				
// --END				
// --END				
// --END				
// --END				
// --END				
