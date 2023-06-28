// -------------------------------------------------------------------------------					
//  Concept Model. File: 					header-meta-to-fhir-map.fsh
// -------------------------------------------------------------------------------					
Instance: ConceptMap-HeaderMeta2FHIR-eu-xpandh					
InstanceOf: ConceptMap					
Usage: #definition					
// * url = "http://terminology.hl7.it/ConceptMap/ConceptMap-subject2osiris"					
* name = "HeaderMeta2FHIR"					
* title = "eHN HDR header metadata to this guide Map"					
* status = #draft					
* experimental = true					
* description = "eHN eHN HDR header metadata Model to this guide mapping"					
* purpose = "Proposed relationship between the HDR Encounter data set defined by the EU eHN guidelines and this guide"					
* sourceUri = "http://hl7.eu/fhir/ig/xpandh/hdr/StructureDefinition/HospitalDischargeReport"					
* targetUri = "http://hl7.eu/fhir/ig/xpandh/hdr/StructureDefinition/Composition-eu-xpandh"					
					
* group[+].source = "http://hl7.eu/fhir/ig/xpandh/hdr/StructureDefinition/HospitalDischargeReport"					
* group[=].target = "http://hl7.eu/fhir/ig/xpandh/hdr/StructureDefinition/Composition-eu-xpandh"					
					
* group[=].element[+].code = #HospitalDischargeReport.header.documentMetadata					
* group[=].element[=].display = "A.1.8 - Document metadata [Mandatory]"					
* group[=].element[=].target.code = #Composition					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
					
* group[=].element[+].code = #HospitalDischargeReport.header.documentMetadata.identifier					
* group[=].element[=].display = "A.1.8.1 - Document ID [Mandatory]"					
* group[=].element[=].target.code = #Composition.identifier					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #inexact					
* group[=].element[=].target.comment = "if it is the identifer of the document (indipendently by its versions) and not of this particular document instance"					
* group[=].element[+].code = #HospitalDischargeReport.header.documentMetadata.type					
* group[=].element[=].display = "A.1.8.2 - Document type [Mandatory]"					
* group[=].element[=].target.code = #Composition.type					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #HospitalDischargeReport.header.documentMetadata.status					
* group[=].element[=].display = "A.1.8.3 - Document status [Mandatory]"					
* group[=].element[=].target.code = #Composition.status					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #HospitalDischargeReport.header.documentMetadata.dateTime					
* group[=].element[=].display = "A.1.8.4 - Report date and time [Mandatory]"					
* group[=].element[=].target.code = #Composition.date					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #inexact					
* group[=].element[=].target.comment = "dateTime is used for tracking, organizing versions and searching. Note that this is the time of authoring. When packaged in a document, Bundle.timestamp is the date of packaging."					
* group[=].element[+].code = #HospitalDischargeReport.header.documentMetadata.title					
* group[=].element[=].display = "A.1.8.5 - Document title [Mandatory]"					
* group[=].element[=].target.code = #Composition.title					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #HospitalDischargeReport.header.documentMetadata.custodian					
* group[=].element[=].display = "A.1.8.6 - Report custodian [Optional]"					
* group[=].element[=].target.code = #Composition.custodian					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #HospitalDischargeReport.header.documentMetadata.confidentiality					
* group[=].element[=].display = "A.1.8.7 - Confidentiality [Mandatory]"					
* group[=].element[=].target.code = #Composition.confidentiality					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #HospitalDischargeReport.header.documentMetadata.language					
* group[=].element[=].display = "A.1.8.8 - Language [Required]"					
* group[=].element[=].target.code = #Composition.languageÿ					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
					
* group[=].element[+].code = #HospitalDischargeReport.header.documentMetadata.version					
* group[=].element[=].display = "A.1.8.9 - Version [Required]"					
* group[=].element[=].target.code = #Composition.extension:versionNumber.valueString					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "As business version, not as resource version"					
* group[=].element[+].code = #HospitalDischargeReport.header.digitalSignature					
* group[=].element[=].display = "A.1.9 - Digital signatures [Required]"					
//-- unmatched					
//-- unmatched					
* group[=].element[=].target.equivalence = #unmatched					
					
* group[=].element[+].code = #HospitalDischargeReport.header.digitalSignature.signature					
* group[=].element[=].display = "A.1.9.1 - Digital signature [Required]"					
//-- unmatched					
//-- unmatched					
* group[=].element[=].target.equivalence = #unmatched					
					
* group[=].element[+].code = #HospitalDischargeReport.header.digitalSignature.timeStamp					
* group[=].element[=].display = "A.1.9.2 - Time stamp [Required]"					
//-- unmatched					
//-- unmatched					
* group[=].element[=].target.equivalence = #unmatched					
					
//---END					
//---END					
//---END					
//---END					
//---END					
//---END					
					
					
					
* group[+].source = "http://hl7.eu/fhir/ig/xpandh/hdr/StructureDefinition/HospitalDischargeReport"					
* group[=].target = "http://hl7.eu/fhir/ig/xpandh/hdr/StructureDefinition/Bundle-eu-xpandh"					
					
* group[=].element[+].code = #HospitalDischargeReport.header.documentMetadata					
* group[=].element[=].display = "A.1.8 - Document metadata [Mandatory]"					
* group[=].element[=].target.code = #Bundle					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
					
* group[=].element[+].code = #HospitalDischargeReport.header.documentMetadata.identifier					
* group[=].element[=].display = "A.1.8.1 - Document ID [Mandatory]"					
* group[=].element[=].target.code = #Bundle.identifier					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "As idenrtifier of this particular instance"					
* group[=].element[+].code = #HospitalDischargeReport.header.documentMetadata.type					
* group[=].element[=].display = "A.1.8.2 - Document type [Mandatory]"					
* group[=].element[=].target.code = #Bundle.entry:composition.resource.type					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #HospitalDischargeReport.header.documentMetadata.status					
* group[=].element[=].display = "A.1.8.3 - Document status [Mandatory]"					
* group[=].element[=].target.code = #Bundle.entry:composition.resource.status					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #HospitalDischargeReport.header.documentMetadata.dateTime					
* group[=].element[=].display = "A.1.8.4 - Report date and time [Mandatory]"					
* group[=].element[=].target.code = #Bundle.timeStamp					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "Date time of this specific document Bundle"					
* group[=].element[+].code = #HospitalDischargeReport.header.documentMetadata.title					
* group[=].element[=].display = "A.1.8.5 - Document title [Mandatory]"					
* group[=].element[=].target.code = #Bundle.entry:composition.resource.title					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #HospitalDischargeReport.header.documentMetadata.custodian					
* group[=].element[=].display = "A.1.8.6 - Report custodian [Optional]"					
* group[=].element[=].target.code = #Bundle.entry:composition.resource.custodian					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #HospitalDischargeReport.header.documentMetadata.confidentiality					
* group[=].element[=].display = "A.1.8.7 - Confidentiality [Mandatory]"					
* group[=].element[=].target.code = #Bundle.entry:composition.resource.confidentiality					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #HospitalDischargeReport.header.documentMetadata.language					
* group[=].element[=].display = "A.1.8.8 - Language [Required]"					
* group[=].element[=].target.code = #Bundle.entry:composition.resource.languageÿ					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
					
* group[=].element[+].code = #HospitalDischargeReport.header.documentMetadata.version					
* group[=].element[=].display = "A.1.8.9 - Version [Required]"					
* group[=].element[=].target.code = #Bundle.entry:composition.resource.extension:versionNumber.valueString					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "As business version, not as resource version"					
* group[=].element[+].code = #HospitalDischargeReport.header.digitalSignature					
* group[=].element[=].display = "A.1.9 - Digital signatures [Required]"					
* group[=].element[=].target.code = #Bundle.signature					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "the Signature datatype requires to record Who signed and and the type of signature "					
* group[=].element[+].code = #HospitalDischargeReport.header.digitalSignature.signature					
* group[=].element[=].display = "A.1.9.1 - Digital signature [Required]"					
* group[=].element[=].target.code = #Bundle.signature.data					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
					
* group[=].element[+].code = #HospitalDischargeReport.header.digitalSignature.timeStamp					
* group[=].element[=].display = "A.1.9.2 - Time stamp [Required]"					
* group[=].element[=].target.code = #Bundle.signature.when					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
//---END					
//---END					
//---END					
//---END					
//---END					
//---END					
//---END					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
