//===================================================				
//  Logical Model				xph-hdr-sk.fsh
//===================================================				
Logical: HospitalDischargeReportSK				
Id: HospitalDischargeReportSK				
Title: "Hospital Discharge Report (SK)"				
Description:  """Hospital Discharge Report SK
Maturity Level: 0 Draft"""				
* header 1..1 BackboneElement "A.1-Report header data element [Mandatory]" """A.1-Report header data element [Mandatory]"""				
* header.subjectIdentification 1..1 BackboneElement "A.1.1-Identification of the patient/subject [Mandatory]" """A.1.1-Identification of the patient/subject [Mandatory]"""				
* header.subjectIdentification.given 1..* string "A.1.1.1-Given name [Mandatory]" """The given name/first name of the patient (also known as forename or first name). This field can contain more than one element.  """				
* header.subjectIdentification.family 1..* string "A.1.1.2-Family name/surname [Mandatory]" """The family name/surname/last name of the patient. This field can contain more than one element or multiple fields could be present. """				
* header.subjectIdentification.birthDate 1..1 dateTime "A.1.1.3-Date of birth [Required]" """The date of birth of the patient [ISO TS 22220]. As age of the patient might be important for correct interpretation of the test result values, complete date of birth should be provided."""				
* header.subjectIdentification.identifier 1..* Identifier "A.1.1.4-Personal identifier [Required]" """An identifier of the patient that is unique within a defined scope. Example: National ID (birth number) for Czech patient. Multiple identifiers could be provided.  """				
* header.subjectIdentification.nationality 0..* CodeableConcept "A.1.1.5-Nationality [Required]" """Nationality of the patient."""				
* header.subjectIdentification.gender 1..1 CodeableConcept "A.1.1.6-Gender [Mandatory]" """This field must contain a recognised valid value for 'administrative gender'. If different, 'physiological gender' should be communicated elsewhere."""				
* header.subjectIdentification.language 0..0 CodeableConcept "A.1.1.7-Language communication [Optional]" """Patient communication language. Multiple communication languages might be provided.  """				
* header.subjectContact 0..1 BackboneElement "A.1.2-Patient/subject related contact information [Required]" """A.1.2-Patient/subject related contact information [Required]"""				
* header.subjectContact.contactPoint 0..* BackboneElement "A.1.2.1-Patient address []" """A.1.2.1-Patient address []"""				
* header.subjectContact.contactPoint.address 0..* Address "A.1.2.1.1-Address [Required]" """Mailing and home or office addresses. The addresses are always sequences of address parts (e.g. street address line, country, ZIP code, city) even if postal address formats may vary depending on the country. An address may or may not include a specific use code; if this attribute is not present it is assumed to be the default address useful for any purpose."""				
* header.subjectContact.contactPoint.telecom 0..* ContactPoint "A.1.2.1.2-Telecom [Required]" """Telecommunication contact information (addresses) associated to a person. Multiple telecommunication addresses might be provided."""				
* header.subjectContact.contactPoint.preferredHP 0..* BackboneElement "A.1.2.2-Preferred healthcare professional (HP) [Optional]" """- This section can be repeated and linked to any specific information in the document, for example a link between a rare disease problem and the rare disease specialist responsible for the care of the individual patient (this section)."""				
* header.subjectContact.contactPoint.preferredHP.identifier 0..* Identifier "A.1.2.2.1-Identifier [Required]" """An identifier of the healthcare professional that is unique within a defined scope. Example: National healthcare professional ID. Multiple identifiers could be provided."""				
* header.subjectContact.contactPoint.preferredHP.name 1..1 HumanName "A.1.2.2.2-Name of the HP [Required]" """Name of the Health Professional that has been treating or taking responsibility for the patient.
This element can be repeated if several medical problems for the patient require multiple contact information, with references from individual entries.
[the structure of the name will be the same as for the patient (given name, family name / surname)]"""				
* header.subjectContact.contactPoint.preferredHP.role 0..* CodeableConcept "A.1.2.2.3-Role of the HP [Required]" """Healthcare professional role"""				
* header.subjectContact.contactPoint.preferredHP.organization 0..1 BackboneElement "A.1.2.2.4-HP Organisation [Required]" """Healthcare Professional Organisation"""				
* header.subjectContact.contactPoint.preferredHP.address 0..1 Address "A.1.2.2.5-Address [Optional]" """Mailing and home or office addresses. The addresses are always sequences of address parts (e.g. street address line, country, ZIP code, city) even if postal address formats may vary depending on the country. An address may or may not include a specific use code; if this attribute is not present it is assumed to be the default address useful for any purpose."""				
* header.subjectContact.contactPoint.preferredHP.telecom 0..* ContactPoint "A.1.2.2.6-Telecom [Required]" """Telecommunication contact information (addresses) associated to a person. Multiple telecommunication addresses might be provided."""				
* header.subjectContact.contactPoint.person 0..* BackboneElement "A.1.2.3-Contact person/ legal guardian [Required]" """A.1.2.3-Contact person/ legal guardian [Required]"""				
* header.subjectContact.contactPoint.person.role 0..0 CodeableConcept "A.1.2.3.1-Role of that person [Required]" """Role of the contact person: legal guardian, next of kin, other person to contact."""				
* header.subjectContact.contactPoint.person.relationship 0..0 CodeableConcept "A.1.2.3.2-Relationship level [Required]" """Relationship type with the patient (e.g. father, wife, daughter)"""				
* header.subjectContact.contactPoint.person.identifier 0..0 Identifier "A.1.2.3.3-Identifier [Optional]" """An identifier of the healthcare professional that is unique within a defined scope. Example: National personal ID, passport number etc. Multiple identifiers could be provided.  """				
* header.subjectContact.contactPoint.person.given 1..* string "A.1.2.3.4-Given name [Mandatory]" """The first name of the contact person/guardian (example: Peter). This field can contain more than one element."""				
* header.subjectContact.contactPoint.person.name 1..* string "A.1.2.3.5-Family name/surname [Mandatory]" """This field can contain more than one element. Example: Espa¤ol Smith"""				
* header.subjectContact.contactPoint.person.address 0..0 Address "A.1.2.3.6-Address [Optional]" """Mailing, home or office addresses. The addresses are always sequences of address parts (e.g. street address line, country, ZIP code, city) even if postal address formats may vary depending on the country. An address may or may not include a specific use code; if this attribute is not present it is assumed to be the default address useful for any purpose."""				
* header.subjectContact.contactPoint.person.telecom 0..0 ContactPoint "A.1.2.3.7-Telecom [Required]" """Telecommunication contact information (addresses) associated to a person. Multiple telecommunication addresses might be provided."""				
* header.payer 0..1 BackboneElement "A.1.3-Health insurance and payment information [Required]" """Health insurance information is not always required, however, in some jurisdictions, the insurance number is also used as the patient identifier. It is necessary not just for identification but also forms access to funding for care. """				
* header.payer.insuranceCode 0..1 Identifier "A.1.3.1-Health insurance code [Mandatory]" """Unique health insurance company identification code."""				
* header.payer.insuranceName 0..1 string "A.1.3.2-Health insurance name [Required]" """Full, official name of the healthcare insurance provider."""				
* header.payer.insuranceNumber 0..1 Identifier "A.1.3.3-Health insurance number [Mandatory]" """Number or code under which the insured person is registered at the insurance provider."""				
* header.informationRecipient 0..0 BackboneElement "A.1.4-Information recipient [Required]" """intended recipient or recipients of the report, additional recipients might be identified by the ordering party, e.g. GP, other specialist"""				
* header.informationRecipient.identifier 0..0 Identifier "A.1.4.1-Recipient identifier [Required]" """The health professional identification number. Either an internal identifier assigned by a healthcare provider institution or (preferably) a national health professional ID such as the license or registration number. In case when recipient is not a health professional, e.g. patient, appropriate personal identifier should be used. """				
* header.informationRecipient.name 0..0 HumanName "A.1.4.2-Recipient name [Required]" """Person name."""				
* header.informationRecipient.organizationID 0..0 Identifier "A.1.4.3-Recipient organization ID [Required]" """The healthcare provider organization identifier if known. Identifier that is unique within a defined scope. Example: National healthcare provider ID. Multiple identifiers could be provided.  """				
* header.informationRecipient.organization 0..0 BackboneElement "A.1.4.4-Recipient organization [Required]" """The healthcare provider organization information."""				
* header.author 1..* BackboneElement "A.1.5-Author (by whom the Hospital discharge report was authored) [Mandatory]" """Author (by whom the Hospital discharge report was authored)"""				
* header.author.identifier 1..* Identifier "A.1.5.1-Author identifier [Mandatory]" """The health professional identification number. Either an internal identifier assigned by a healthcare provider institution or (preferably) a national health professional ID such as the license or registration number. """				
* header.author.name 1..1 HumanName "A.1.5.2-Author name [Mandatory]" """Person name."""				
* header.author.organizationID 0..* Identifier "A.1.5.3-Author organization ID [Required]" """The healthcare provider organization information."""				
* header.author.organization 1..1 BackboneElement "A.1.5.4-Author organization [Mandatory]" """The healthcare provider organization identifier if known. Identifier that is unique within a defined scope. Example: National healthcare provider ID. Multiple identifiers could be provided.  """				
* header.author.dateTime 1..1 dateTime "A.1.5.5-DateTime [Mandatory]" """Date and time of the last modification of the document by its Author."""				
* header.attester 0..* BackboneElement "A.1.6-Attester [Required]" """A.1.6-Attester [Required]"""				
* header.attester.identifier 0..0 Identifier "A.1.6.1-Attester identifier [Mandatory]" """The health professional identification number. Either an internal identifier assigned by a healthcare provider institution or (preferably) a national health professional ID such as the license or registration number. """				
* header.attester.name 1..1 HumanName "A.1.6.2-Attester name [Mandatory]" """Person name."""				
* header.attester.organizationID 0..0 Identifier "A.1.6.3-Attester organization ID [Required]" """The healthcare provider organization identifier if known. Identifier that is unique within a defined scope. Example: National healthcare provider ID. Multiple identifiers could be provided.  """				
* header.attester.organization 0..0 BackboneElement "A.1.6.4-Attester organization [Mandatory]" """The healthcare provider organization information."""				
* header.attester.dateTime 0..0 dateTime "A.1.6.5-Approval date and time [Mandatory]" """Date and time of the approval of the document by Attester."""				
* header.legalAuthenticator 0..1 BackboneElement "A.1.7-Legal authenticator [Required]" """The person taking responsibility for the medical content of the document"""				
* header.legalAuthenticator.identifier 0..0 Identifier "A.1.7.1-Legal authenticator identifier [Mandatory]" """The health professional identification number. Either an internal identifier assigned by a healthcare provider institution or (preferably) a national health professional ID such as the license or registration number. """				
* header.legalAuthenticator.name 1..1 HumanName "A.1.7.2-Legal authenticator name [Mandatory]" """Person name."""				
* header.legalAuthenticator.organizationID 0..0 Identifier "-Legal authenticator organizationÿID [Required]" """The healthcare provider organization identifier if known. Identifier that is unique within a defined scope.ÿExample: National healthcare provider ID. Multiple identifiers could be provided.ÿÿ"""				
* header.legalAuthenticator.organization 0..0 BackboneElement "A.1.7.3-Legal authenticator organization [Mandatory]" """The healthcare provider organization information."""				
* header.legalAuthenticator.dateTime 0..0 dateTime "A.1.7.4-Authentication date and time [Mandatory]" """Date and time when the document was authorized."""				
* header.documentMetadata 0..0 BackboneElement "A.1.8-Document metadata [Mandatory]" """A.1.8-Document metadata [Mandatory]"""				
* header.documentMetadata.identifier 0..0 Identifier "A.1.8.1-Document ID [Mandatory]" """Unique identifier of the document"""				
* header.documentMetadata.type 0..0 CodeableConcept "A.1.8.2-Document type [Mandatory]" """A coded type of the document. Fixed value 'Hospital dicharge summary'"""				
* header.documentMetadata.status 0..0 CodeableConcept "A.1.8.3-Document status [Mandatory]" """The status of the Hospital discharge report. E.g., preliminary, final."""				
* header.documentMetadata.dateTime 0..0 dateTime "A.1.8.4-Report date and time [Mandatory]" """Date and time of the result report creation."""				
* header.documentMetadata.title 0..0 string "A.1.8.5-Document title [Mandatory]" """Document title, e.g. 'Hospital discharge report'"""				
* header.documentMetadata.custodian 0..0 BackboneElement "A.1.8.6-Report custodian [Optional]" """Organisation that is in charge of maintaining the report"""				
* header.documentMetadata.confidentiality 0..0 CodeableConcept "A.1.8.7-Confidentiality [Mandatory]" """Level of confidentiality of the document. Implicit value is normal."""				
* header.documentMetadata.language 0..0 CodeableConcept "A.1.8.8-Language [Required]" """Language in which the document is written. Language is expressed by the ISO language code."""				
* header.documentMetadata.version 0..0 string "A.1.8.9-Version [Required]" """Version of the document"""				
* header.digitalSignature 0..0 BackboneElement "A.1.9-Digital signatures [Required]" """A.1.9-Digital signatures [Required]"""				
* header.digitalSignature.signature 0..0 BackboneElement "A.1.9.1-Digital signature [Required]" """Digital signature of the document"""				
* header.digitalSignature.timeStamp 0..0 dateTime "A.1.9.2-Time stamp [Required]" """An electronic time stamp"""				
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
				
				
				
				
				
//--------------------------------------------------------------------------------				
//  Logical Model				
//--------------------------------------------------------------------------------				
				
				
				
				
				
				
* header.subjectIdentification.nationality ^comment = """eHDSICountry (ISO 3166)"""				
* header.subjectIdentification.gender ^comment = """HL7 Administrative Gender """				
* header.subjectIdentification.language ^comment = """BCP 47"""				
				
				
* header.subjectContact.contactPoint.address ^comment = """eHDSICountry (ISO 3166)"""				
				
				
				
				
* header.subjectContact.contactPoint.preferredHP.role ^comment = """ISCO or SNOMED CT specialty - to be discussed"""				
				
				
				
				
* header.subjectContact.contactPoint.person.role ^comment = """http://terminology.hl7.org/CodeSystem/v3-RoleClass"""				
* header.subjectContact.contactPoint.person.relationship ^comment = """eHDSIPersonalRelationship"""				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
* header.documentMetadata.type ^comment = """LOINC"""				
* header.documentMetadata.status ^comment = """hl7:CompositionStatus """				
				
				
				
* header.documentMetadata.confidentiality ^comment = """hl7:confidentiality"""				
* header.documentMetadata.language ^comment = """BCP 47"""				
				
				
				
				
				
				
				
				
				
				
				
				
				
//--- END				
//--- END				
//--- END				
//--- END				
				
// -------------------------------------------------------------------------------				
//  Map to FHIR R4				
// -------------------------------------------------------------------------------				
Mapping: HospitalDischargeReportSK2FHIR				
Id: fhir				
Title: "Hospital Discharge Report model to FHIR R4 Map"				
Source: HospitalDischargeReportSK				
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
* header.subjectIdentification.language -> "TBD"				
* header.subjectContact -> "TBD"				
* header.subjectContact.contactPoint -> "TBD"				
* header.subjectContact.contactPoint.address -> "TBD"				
* header.subjectContact.contactPoint.telecom -> "TBD"				
* header.subjectContact.contactPoint.preferredHP -> "TBD"				
* header.subjectContact.contactPoint.preferredHP.identifier -> "TBD"				
* header.subjectContact.contactPoint.preferredHP.name -> "TBD"				
* header.subjectContact.contactPoint.preferredHP.role -> "TBD"				
* header.subjectContact.contactPoint.preferredHP.organization -> "TBD"				
* header.subjectContact.contactPoint.preferredHP.address -> "TBD"				
* header.subjectContact.contactPoint.preferredHP.telecom -> "TBD"				
* header.subjectContact.contactPoint.person -> "TBD"				
* header.subjectContact.contactPoint.person.role -> "TBD"				
* header.subjectContact.contactPoint.person.relationship -> "TBD"				
* header.subjectContact.contactPoint.person.identifier -> "TBD"				
* header.subjectContact.contactPoint.person.given -> "TBD"				
* header.subjectContact.contactPoint.person.name -> "TBD"				
* header.subjectContact.contactPoint.person.address -> "TBD"				
* header.subjectContact.contactPoint.person.telecom -> "TBD"				
* header.payer -> "TBD"				
* header.payer.insuranceCode -> "TBD"				
* header.payer.insuranceName -> "TBD"				
* header.payer.insuranceNumber -> "TBD"				
* header.informationRecipient -> "TBD"				
* header.informationRecipient.identifier -> "TBD"				
* header.informationRecipient.name -> "TBD"				
* header.informationRecipient.organizationID -> "TBD"				
* header.informationRecipient.organization -> "TBD"				
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
* header.digitalSignature -> "TBD"				
* header.digitalSignature.signature -> "TBD"				
* header.digitalSignature.timeStamp -> "TBD"				
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
