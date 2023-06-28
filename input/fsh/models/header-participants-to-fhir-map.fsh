// -------------------------------------------------------------------------------					
//  Concept Model. File: 					header-participants-to-fhir-map.fsh
// -------------------------------------------------------------------------------					
Instance: ConceptMap-HeaderParticipants2FHIR-eu-xpandh					
InstanceOf: ConceptMap					
Usage: #definition					
// * url = "http://terminology.hl7.it/ConceptMap/ConceptMap-subject2osiris"					
* name = "HeaderParticipants2FHIR"					
* title = "eHN Recipient to this guide Map"					
* status = #draft					
* experimental = true					
* description = "eHN HDR Encounter Model to this guide mapping"					
* purpose = "Proposed relationship between the HDR Encounter data set defined by the EU eHN guidelines and this guide"					
* sourceUri = "http://hl7.eu/fhir/ig/xpandh/hdr/StructureDefinition/HospitalDischargeReport"					
* targetUri = "http://hl7.eu/fhir/ig/xpandh/hdr/StructureDefinition/Composition-eu-xpandh"					
					
* group[+].source = "http://hl7.eu/fhir/ig/xpandh/hdr/StructureDefinition/HospitalDischargeReport"					
* group[=].target = "http://hl7.eu/fhir/ig/xpandh/hdr/StructureDefinition/Composition-eu-xpandh"					
					
* group[=].element[+].code = #HospitalDischargeReport.header.informationRecipient					
* group[=].element[=].display = "A.1.4 - Information recipient [Required]"					
* group[=].element[=].target.code = #Composition.extension:information-recipient					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
					
* group[=].element[+].code = #HospitalDischargeReport.header.informationRecipient.identifier					
* group[=].element[=].display = "A.1.4.1 - Recipient identifier [Required]"					
* group[=].element[=].target.code = #Composition.extension:information-recipient.identifier					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "If PractictionerRole"					
* group[=].element[+].code = #HospitalDischargeReport.header.informationRecipient.name					
* group[=].element[=].display = "A.1.4.2 - Recipient name [Required]"					
* group[=].element[=].target.code = #Composition.extension:information-recipient.practictioner.name					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "If PractictionerRole"					
* group[=].element[+].code = #HospitalDischargeReport.header.informationRecipient.organizationID					
* group[=].element[=].display = "A.1.4.3 - Recipient organization ID [Required]"					
* group[=].element[=].target.code = #Composition.extension:information-recipient.organization.identifier					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "If PractictionerRole"					
* group[=].element[+].code = #HospitalDischargeReport.header.informationRecipient.organization					
* group[=].element[=].display = "A.1.4.4 - Recipient organization [Required]"					
* group[=].element[=].target.code = #Composition.extension:information-recipient.organization					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "If PractictionerRole"					
* group[=].element[+].code = #HospitalDischargeReport.header.author					
* group[=].element[=].display = "A.1.5 - Author (by whom the Hospital discharge report was authored) [Mandatory]"					
* group[=].element[=].target.code = #Composition.author					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #HospitalDischargeReport.header.author.identifier					
* group[=].element[=].display = "A.1.5.1 - Author identifier [Mandatory]"					
* group[=].element[=].target.code = #Composition.author.identifier					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "If PractictionerRole"					
* group[=].element[+].code = #HospitalDischargeReport.header.author.name					
* group[=].element[=].display = "A.1.5.2 - Author name [Mandatory]"					
* group[=].element[=].target.code = #Composition.author.practictioner.name					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "If PractictionerRole"					
* group[=].element[+].code = #HospitalDischargeReport.header.author.organizationID					
* group[=].element[=].display = "A.1.5.3 - Author organization ID [Required]"					
* group[=].element[=].target.code = #Composition.author.organization.identifier					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "If PractictionerRole"					
* group[=].element[+].code = #HospitalDischargeReport.header.author.organization					
* group[=].element[=].display = "A.1.5.4 - Author organization [Mandatory]"					
* group[=].element[=].target.code = #Composition.author.organization					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "If PractictionerRole"					
* group[=].element[+].code = #HospitalDischargeReport.header.author.dateTime					
* group[=].element[=].display = "A.1.5.5 - DateTime [Mandatory]"					
* group[=].element[=].target.code = #Composition.date					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #HospitalDischargeReport.header.attester					
* group[=].element[=].display = "A.1.6 - Attester [Required]"					
* group[=].element[=].target.code = #Composition.attester.party					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "where attester.mode = 'professional'"					
* group[=].element[+].code = #HospitalDischargeReport.header.attester.identifier					
* group[=].element[=].display = "A.1.6.1 - Attester identifier [Mandatory]"					
* group[=].element[=].target.code = #Composition.attester.party.identifier					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "where attester.mode = 'professional' AND attester.party is of type PractictionerRole"					
* group[=].element[+].code = #HospitalDischargeReport.header.attester.name					
* group[=].element[=].display = "A.1.6.2 - Attester name [Mandatory]"					
* group[=].element[=].target.code = #Composition.attester.party.practitioner.name					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "where attester.mode = 'professional' AND attester.party is of type PractictionerRole"					
* group[=].element[+].code = #HospitalDischargeReport.header.attester.organizationID					
* group[=].element[=].display = "A.1.6.3 - Attester organization ID [Required]"					
* group[=].element[=].target.code = #Composition.attester.party.organization.name					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "where attester.mode = 'professional' AND attester.party is of type PractictionerRole"					
* group[=].element[+].code = #HospitalDischargeReport.header.attester.organization					
* group[=].element[=].display = "A.1.6.4 - Attester organization [Mandatory]"					
* group[=].element[=].target.code = #Composition.attester.party.organization.name					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "where attester.mode = 'professional' AND attester.party is of type PractictionerRole"					
* group[=].element[+].code = #HospitalDischargeReport.header.attester.dateTime					
* group[=].element[=].display = "A.1.6.5 - Approval date and time [Mandatory]"					
* group[=].element[=].target.code = #Composition.attester.time					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equal					
* group[=].element[=].target.comment = "where attester.mode = 'professional'"					
* group[=].element[+].code = #HospitalDischargeReport.header.legalAuthenticator					
* group[=].element[=].display = "A.1.7 - Legal authenticator [Required]"					
* group[=].element[=].target.code = #Composition.attester.party					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "where attester.mode = 'legal'"					
* group[=].element[+].code = #HospitalDischargeReport.header.legalAuthenticator.identifier					
* group[=].element[=].display = "A.1.7.1 - Legal authenticator identifier [Mandatory]"					
* group[=].element[=].target.code = #Composition.attester.party.identifier					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "where attester.mode = 'legal' AND attester.party is of type PractictionerRole"					
* group[=].element[+].code = #HospitalDischargeReport.header.legalAuthenticator.name					
* group[=].element[=].display = "A.1.7.2 - Legal authenticator name [Mandatory]"					
* group[=].element[=].target.code = #Composition.attester.party.practitioner.name					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "where attester.mode = 'legal' AND attester.party is of type PractictionerRole"					
* group[=].element[+].code = #HospitalDischargeReport.header.legalAuthenticator.organizationID					
* group[=].element[=].display = " - Legal authenticator organizationÿID [Required]"					
* group[=].element[=].target.code = #Composition.attester.party.organization.name					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "where attester.mode = 'legal' AND attester.party is of type PractictionerRole"					
* group[=].element[+].code = #HospitalDischargeReport.header.legalAuthenticator.organization					
* group[=].element[=].display = "A.1.7.3 - Legal authenticator organization [Mandatory]"					
* group[=].element[=].target.code = #Composition.attester.party.organization.name					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "where attester.mode = 'legal' AND attester.party is of type PractictionerRole"					
* group[=].element[+].code = #HospitalDischargeReport.header.legalAuthenticator.dateTime					
* group[=].element[=].display = "A.1.7.4 - Authentication date and time [Mandatory]"					
* group[=].element[=].target.code = #Composition.attester.time					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equal					
* group[=].element[=].target.comment = "where attester.mode = 'legal'"					
//---END					
//---END					
//---END					
//---END					
//---END					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
