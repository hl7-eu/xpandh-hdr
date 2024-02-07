//===================================================
//  Logical Model				xph-hdr.fsh
//===================================================
Logical: HospitalDischargeReportEHN
Id: HospitalDischargeReport
Title: "A - Hospital Discharge Report (eHN)"
Description:  """Hospital Discharge Report
Maturity Level: 0 Draft"""
* header 1..1 BackboneElement "A.1 - Hospital Discharge Report header data element" """Hospital Discharge Report header data element"""
* header.subjectIdentification 1..1 BackboneElement "A.1.1 - Identification of the patient/subject" """Identification of the patient/subject"""
* header.subjectIdentification.given 1..* string "A.1.1.1 - Given name" """The given name/first name of the patient (also known as forename or first name). This field can contain more than one element."""
* header.subjectIdentification.family 1..* string "A.1.1.2 - Family name/surname" """The family name/surname/last name of the patient. This field can contain more than one element or multiple fields could be present."""
* header.subjectIdentification.birthDate 1..1 dateTime "A.1.1.3 - Date of birth" """Complete date, following the ISO 8601."""
* header.subjectIdentification.identifier 1..* Identifier "A.1.1.4 - National healthcare patient ID" """An identifier of the patient that is unique within a defined scope. Example: National ID (birth number) for a Czech patient. Multiple identifiers could be provided"""
* header.subjectIdentification.nationality 0..* CodeableConcept "A.1.1.5 - Nationality" """Nationality of the patient."""
* header.subjectIdentification.gender 1..1 CodeableConcept "A.1.1.6 - Gender" """This field must contain a recognised valid value for "administrative gender". If different, "physiological gender" should be communicated elsewhere in the relevant clinical information section."""
* header.subjectIdentification.countryOfAffiliation 0..1 CodeableConcept "A.1.1.7 - Country of affiliation" """Name of country of affiliation"""
* header.subjectContact 0..1 BackboneElement "A.1.2 - Patient/subject related contact information" """Patient/subject related contact information"""
* header.subjectContact.personalContact 0..1 BackboneElement "A.1.2.1 - Patient address" """Patient address"""
* header.subjectContact.personalContact.address 0..* Address "A.1.2.1.1 - Address" """Mailing and home or office addresses. The addresses are always sequences of address parts (e.g. street address line, country, postcode, city) even if postal address formats may vary depending on the country. An address may or may not include a specific use code; if this attribute is not present it is assumed to be the default address useful for any purpose."""
* header.subjectContact.personalContact.telecom 0..* ContactPoint "A.1.2.1.2 - Telecom" """Telecommunication contact information (addresses) associated with a person, such as phone number, email, or messaging service. Multiple telecommunication addresses might be provided."""
* header.subjectContact.preferredHP 0..* BackboneElement "A.1.2.2 - Preferred health professional (HP) - This section can be repeated and linked to any specific information in the document, for example a link between a rare disease problem and the rare disease specialist responsible for the care of the individual patient (this section)." """Preferred health professional (HP) - This section can be repeated and linked to any specific information in the document, for example a link between a rare disease problem and the rare disease specialist responsible for the care of the individual patient (this section)."""
* header.subjectContact.preferredHP.identifier 0..* Identifier "A.1.2.2.1 - Identifier of the HP" """An identifier of the health professional that is unique within a defined scope. Example: National health professional ID. Multiple identifiers could be provided."""
* header.subjectContact.preferredHP.name 1..1 HumanName "A.1.2.2.2 - Name of the HP" """Name of the health professional that has been treating or taking responsibility for the patient.[the structure of the name will be the same as for the patient (given name, family name / surname)]"""
* header.subjectContact.preferredHP.role 0..* CodeableConcept "A.1.2.2.3 - Role of the HP" """Health professional role. Multiple roles could be provided."""
* header.subjectContact.preferredHP.organization 0..1 BackboneElement "A.1.2.2.4 - HP Organisation" """Health professional organisation"""
* header.subjectContact.preferredHP.address 0..1 Address "A.1.2.2.5 - Address" """Mailing and home or office addresses. The addresses are always sequences of address parts (e.g. street address line, country, postcode, city) even if postal address formats may vary depending on the country. An address may or may not include a specific use code; if this attribute is not present it is assumed to be the default address useful for any purpose."""
* header.subjectContact.preferredHP.telecom 0..* ContactPoint "A.1.2.2.6 - Telecom" """Telecommunication contact information (addresses) associated with a person, such as phone number, email, or messaging service. Multiple telecommunication addresses might be provided."""
* header.subjectContact.contactPerson 0..* BackboneElement "A.1.2.3 - Contact person/ legal guardian (multiple contacts could be provided)" """Contact person/ legal guardian (multiple contacts could be provided)"""
* header.subjectContact.contactPerson.role 0..* CodeableConcept "A.1.2.3.1 - Role of that person" """Role of the contact person: legal guardian, next of kin, other person to contact."""
* header.subjectContact.contactPerson.relationship 0..1 CodeableConcept "A.1.2.3.2 - Relationship level" """Relationship type with the patient (e.g. father, wife, daughter)"""
* header.subjectContact.contactPerson.given 1..* string "A.1.2.3.4 - Given name" """Given name of the contact person/guardian . This field can contain more than one element."""
* header.subjectContact.contactPerson.family 1..* string "A.1.2.3.5 - Family name/surname" """Family name of the contact person. This field can contain more than one element [the structure of the name will be the same as for the patient (given name, family name / surname)].."""
* header.subjectContact.contactPerson.address 0..* Address "A.1.2.3.6 - Address" """Mailing, home or office addresses. The addresses are always sequences of address parts (e.g. street address line, country, postcode, city) even if postal address formats may vary depending on the country. An address may or may not include a specific use code; if this attribute is not present it is assumed to be the default address useful for any purpose."""
* header.subjectContact.contactPerson.telecom 0..* ContactPoint "A.1.2.3.7 - Telecom" """Telecommunication contact information (addresses) associated with a person, such as phone number, email, or messaging service. Multiple telecommunication addresses might be provided."""
* header.subjectContact.contactPerson.organization 0..1 BackboneElement "A.1.2.3.8 - Contact person organisation" """Contact person organisation information."""
* header.payer 0..1 BackboneElement "A.1.3 - Health insurance and payment information - Health insurance information is not always required, however, in some jurisdictions, the insurance number is also used as the patient identifier. It is necessary not just for identification but also forms access to funding for care. " """Health insurance and payment information - Health insurance information is not always required, however, in some jurisdictions, the insurance number is also used as the patient identifier. It is necessary not just for identification but also forms access to funding for care. """
* header.payer.insuranceCode 0..1 Identifier "A.1.3.1 - Health insurance code" """Unique health insurance company identification code."""
* header.payer.insuranceName 0..1 string "A.1.3.2 - Health insurance name" """Full, official name of the healthcare insurance provider."""
* header.payer.insuranceNumber 0..1 Identifier "A.1.3.3 - Health insurance number" """Number or code under which the insured person is registered at the insurance provider."""
* header.informationRecipient 0..* BackboneElement "A.1.4 - Information recipient - (intended recipient or recipients of the report), if applicable" """Information recipient - (intended recipient or recipients of the report), if applicable"""
* header.informationRecipient.identifier 0..1 Identifier "A.1.4.1 - Recipient identifier" """The health professional or patient identifier. Either an internal identifier assigned by a healthcare provider institution or (preferably) a national health professional ID such as the licence or registration number. In case when the recipient is not a health professional, e.g. patient, appropriate personal identifier could be used."""
* header.informationRecipient.name 0..1 HumanName "A.1.4.2 - Recipient name" """Person name [the structure of the name will be the same as for the patient (given name, family name / surname)]."""
* header.informationRecipient.organizationID 0..* Identifier "A.1.4.3 - Recipient organisation ID" """The healthcare provider organisation identifier. Identifier that is unique within a defined scope. Example: National healthcare provider ID. Multiple identifiers could be provided. """
* header.informationRecipient.organization 0..1 BackboneElement "A.1.4.4 - Recipient organisation" """The healthcare provider organisation information."""
* header.informationRecipient.address 0..1 Address "A.1.4.5 - Address" """Mailing and home or office addresses. The addresses are always sequences of address parts (e.g. street address line, country, postcode, city) even if postal address formats may vary depending on the country. An address may or may not include a specific use code; if this attribute is not present it is assumed to be the default address useful for any purpose."""
* header.informationRecipient.country 1..1 CodeableConcept "A.1.4.6 - Country" """Country of the intended recipient as part of the address."""
* header.informationRecipient.telecom 0..* ContactPoint "A.1.4.7 - Telecom" """Telecommunication contact information (addresses) associated to a person, such as phone number, email, or messaging service. Multiple telecommunication addresses might be provided."""
* header.author 1..* BackboneElement "A.1.5 - Author (by whom the Hospital discharge report was/were authored). Multiple authors could be provided." """Author (by whom the Hospital discharge report was/were authored). Multiple authors could be provided."""
* header.author.identifier 1..* Identifier "A.1.5.1 - Author identifier" """The health professional identifier that will allow addressing recipients within a national or international data exchange infrastructure, such as the licence or registration number. In case when the recipient is not a health professional, e.g. patient, appropriate personal identifier should be used."""
* header.author.name 1..1 HumanName "A.1.5.2 - Author name" """Person name [the structure of the name will be the same as for the patient (given name, family name / surname)]."""
* header.author.organizationID 0..* Identifier "A.1.5.3 - Author organisation ID" """The healthcare provider organisation identifier. Identifier that is unique within a defined scope. Example: National healthcare provider ID. Multiple identifiers could be provided. """
* header.author.organization 1..1 BackboneElement "A.1.5.4 - Author organisation" """The healthcare provider organisation information.  """
* header.author.dateTime 1..1 dateTime "A.1.5.5 - Date Time" """Date and time of the last modification of the document by its Author."""
* header.attester 0..* BackboneElement "A.1.6 - Attester (multiple attesters could be provided)" """Attester (multiple attesters could be provided)"""
* header.attester.identifier 1..* Identifier "A.1.6.1 - Attester identifier" """The health professional identification number. Either an internal identifier assigned by a healthcare provider institution or (preferably) a national health professional ID such as the licence or registration number."""
* header.attester.name 1..1 HumanName "A.1.6.2 - Attester name" """Person name [the structure of the name will be the same as for the patient (given name, family name / surname)]."""
* header.attester.organizationID 0..* Identifier "A.1.6.3 - Attester organisation ID" """The healthcare provider organisation identifier. Identifier that is unique within a defined scope. Example: National healthcare provider ID. Multiple identifiers could be provided. """
* header.attester.organization 1..1 BackboneElement "A.1.6.4 - Attester organisation" """The healthcare provider organisation information."""
* header.attester.dateTime 1..1 dateTime "A.1.6.5 - Approval date and time" """Date and time of the approval of the document by Attester."""
* header.legalAuthenticator 0..1 BackboneElement "A.1.7 - Legal authenticator (The person taking responsibility for the medical content of the document)" """Legal authenticator (The person taking responsibility for the medical content of the document)"""
* header.legalAuthenticator.identifier 1..* Identifier "A.1.7.1 - Legal authenticator identifier" """The health professional identification number. Either an internal identifier assigned by a healthcare provider institution or (preferably) a national health professional ID such as the licence or registration number. Multiple identifiers could be provided."""
* header.legalAuthenticator.name 1..1 HumanName "A.1.7.2 - Legal authenticator name" """Person name [the structure of the name will be the same as for the patient (given name, family name / surname)]."""
* header.legalAuthenticator.organizationID 0..* Identifier "A.1.7.3 - Legal authenticator organisation ID" """The healthcare provider organisation identifier. Identifier that is unique within a defined scope. Example: National healthcare provider ID. Multiple identifiers could be provided. """
* header.legalAuthenticator.organization 1..1 BackboneElement "A.1.7.4 - Legal authenticator organisation" """The healthcare provider organisation information."""
* header.legalAuthenticator.dateTime 1..1 dateTime "A.1.7.5 - Authentication date and time" """Date and time when the document was authorised."""
* header.documentMetadata 1..1 BackboneElement "A.1.8 - Document metadata" """Document metadata"""
* header.documentMetadata.identifier 1..1 Identifier "A.1.8.1 - Document ID" """Unique identifier of the document"""
* header.documentMetadata.type 1..1 CodeableConcept "A.1.8.2 - Document type" """Identifies the type of document at hand, e.g. Hospital discharge report."""
* header.documentMetadata.status 1..1 CodeableConcept "A.1.8.3 - Document status" """The status of the Hospital discharge report. E.g., preliminary, final."""
* header.documentMetadata.dateTime 1..1 dateTime "A.1.8.4 - Report date and time" """Date and time of the Hospital discharge  report creation."""
* header.documentMetadata.title 1..1 string "A.1.8.5 - Document title" """Document title, fix value "Hospital discharge report". """
* header.documentMetadata.custodian 1..1 BackboneElement "A.1.8.6 - Report custodian" """Organisation that is in charge of maintaining the report [this element will include organisation ID, name, address etc., as other elements describing organisations]."""
* header.documentMetadata.confidentiality 1..1 CodeableConcept "A.1.8.7 - Confidentiality" """Level of confidentiality of the document. Implicit value is normal."""
* header.documentMetadata.language 1..1 CodeableConcept "A.1.8.8 - Language" """Language in which the document is written. Language is expressed by the ISO language code."""
* header.documentMetadata.version 0..1 string "A.1.8.9 - Version" """Version of the document"""

* body 1..1 BackboneElement "A.2 - Hospital Discharge Report body data element" """Hospital Discharge Report body data element"""
* body.presentedForm 0..1 BackboneElement "A.2.0 - Hospital Discharge Report in its narrative form" """Hospital Discharge Report in its narrative form"""
* body.advanceDirectives 0..1 HDRAdvanceDirectives "A.2.1 - Advance directives" """Advance directives"""
* body.alerts 1..1 HDRAlerts "A.2.2 - Alerts" """Alerts"""
* body.encounter 1..1 HDREncounter "A.2.3 - Encounter [Mandatory]" """A.2.3-Encounter [Mandatory]"""
* body.admissionEvaluation 0..1 HDRAdmissionEvaluation "A.2.4 - Admission evaluation - Admission status should be reported exceptionally only if it is relevant to ensure continuity of care." """Admission evaluation - Admission status should be reported exceptionally only if it is relevant to ensure continuity of care."""
* body.patientHistory 0..1 BackboneElement "A.2.6 - Patient history" """Patient history (might include information about provenance of the information)"""
* body.hospitalStay 1..1 HDRHospitalStay "A.2.7 - Course of hospitalisation (Hospital stay)" """Course of hospitalisation (Hospital stay)"""
* body.dischargeDetails 1..1 HDRDischargeDetails "A.2.8 - Discharge details" """Discharge details (structured information should be provided, however if not available, at least a summary note should be present)."""
* body.recommendations 0..1 HDRRecommendations "A.2.9 - Care plan and other recommendations after discharge." """Care plan and other recommendations after discharge."""


//--------------------------------------------------------------------------------
//  Logical Model - preferred code systems
//--------------------------------------------------------------------------------

* header.subjectIdentification.nationality ^comment = "ISO 3166"
* header.subjectIdentification.gender ^comment = "HL7 Administrative Gender"
* header.subjectIdentification.countryOfAffiliation ^comment = "ISO 3166"

* header.subjectContact.personalContact.address ^comment = "ISO 3166"
* header.subjectContact.preferredHP.role ^comment = "ISCO"
* header.subjectContact.preferredHP.address ^comment = "ISO 3166"
* header.subjectContact.contactPerson.role ^comment = "HL7 RoleClass"
* header.subjectContact.contactPerson.relationship ^comment = "HL7 RoleCodeSNOMED CT"
* header.subjectContact.contactPerson.address ^comment = "ISO 3166"

* header.informationRecipient.country ^comment = "ISO 3166"

* header.documentMetadata.type ^comment = "LOINC"
* header.documentMetadata.status ^comment = "hl7:CompositionStatus"
* header.documentMetadata.confidentiality ^comment = "hl7:Confidentiality"
* header.documentMetadata.language ^comment = "ISO 639"

// -------------------------------------------------------------------------------
//  Map to FHIR R4
// -------------------------------------------------------------------------------
Mapping: HospitalDischargeReportEHN2FHIR
Id: fhir
Title: "Hospital Discharge Report model to FHIR R4 Map"
Source: HospitalDischargeReport
Target: "hl7.org/fhir/r4"

* -> "TBD"
* header -> "TBD"
* header.subjectIdentification -> "TBD"
* header.subjectIdentification.given -> "TBD"
* header.subjectIdentification.family -> "TBD"
* header.subjectIdentification.birthDate -> "TBD"
* header.subjectIdentification.identifier -> "TBD"
* header.subjectIdentification.nationality -> "TBD"
* header.subjectIdentification.gender -> "TBD"
* header.subjectIdentification.countryOfAffiliation -> "TBD"
* header.subjectContact -> "TBD"
* header.subjectContact.personalContact -> "TBD"
* header.subjectContact.personalContact.address -> "TBD"
* header.subjectContact.personalContact.telecom -> "TBD"
* header.subjectContact.preferredHP -> "TBD"
* header.subjectContact.preferredHP.identifier -> "TBD"
* header.subjectContact.preferredHP.name -> "TBD"
* header.subjectContact.preferredHP.role -> "TBD"
* header.subjectContact.preferredHP.organization -> "TBD"
* header.subjectContact.preferredHP.address -> "TBD"
* header.subjectContact.preferredHP.telecom -> "TBD"
* header.subjectContact.contactPerson -> "TBD"
* header.subjectContact.contactPerson.role -> "TBD"
* header.subjectContact.contactPerson.relationship -> "TBD"
* header.subjectContact.contactPerson.given -> "TBD"
* header.subjectContact.contactPerson.family -> "TBD"
* header.subjectContact.contactPerson.address -> "TBD"
* header.subjectContact.contactPerson.telecom -> "TBD"
* header.subjectContact.contactPerson.organization -> "TBD"
* header.payer -> "TBD"
* header.payer.insuranceCode -> "TBD"
* header.payer.insuranceName -> "TBD"
* header.payer.insuranceNumber -> "TBD"
* header.informationRecipient -> "TBD"
* header.informationRecipient.identifier -> "TBD"
* header.informationRecipient.name -> "TBD"
* header.informationRecipient.organizationID -> "TBD"
* header.informationRecipient.organization -> "TBD"
* header.informationRecipient.address -> "TBD"
* header.informationRecipient.country -> "TBD"
* header.informationRecipient.telecom -> "TBD"
* header.author -> "TBD"
* header.author.identifier -> "TBD"
* header.author.name -> "TBD"
* header.author.organizationID -> "TBD"
* header.author.organization -> "TBD"
* header.author.dateTime -> "TBD"
* header.attester -> "TBD"
* header.attester.identifier -> "TBD"
* header.attester.name -> "TBD"
* header.attester.organizationID -> "TBD"
* header.attester.organization -> "TBD"
* header.attester.dateTime -> "TBD"
* header.legalAuthenticator -> "TBD"
* header.legalAuthenticator.identifier -> "TBD"
* header.legalAuthenticator.name -> "TBD"
* header.legalAuthenticator.organizationID -> "TBD"
* header.legalAuthenticator.organization -> "TBD"
* header.legalAuthenticator.dateTime -> "TBD"
* header.documentMetadata -> "TBD"
* header.documentMetadata.identifier -> "TBD"
* header.documentMetadata.type -> "TBD"
* header.documentMetadata.status -> "TBD"
* header.documentMetadata.dateTime -> "TBD"
* header.documentMetadata.title -> "TBD"
* header.documentMetadata.custodian -> "TBD"
* header.documentMetadata.confidentiality -> "TBD"
* header.documentMetadata.language -> "TBD"
* header.documentMetadata.version -> "TBD"
