// -------------------------------------------------------------------------------					
//  Concept Model. File: 					encounter-to-fhir-map.fsh
// -------------------------------------------------------------------------------					
Instance: ConceptMap-hdrEncounter2FHIR-eu-xpandh					
InstanceOf: ConceptMap					
Usage: #definition					
// * url = "http://terminology.hl7.it/ConceptMap/ConceptMap-subject2osiris"					
* name = "HdrEncounter2FHIR"					
* title = "eHN Recipient to this guide Map"					
* status = #draft					
* experimental = true					
* description = "eHN HDR Encounter Model to this guide mapping"					
* purpose = "Proposed relationship between the HDR Encounter data set defined by the EU eHN guidelines and this guide"					
* sourceUri = "http://hl7.eu/fhir/ig/xpandh/hdr/StructureDefinition/HDREncounter"					
* targetUri = "http://hl7.eu/fhir/ig/xpandh/hdr/StructureDefinition/Encounter-eu-xpandh"					
					
* group[+].source = "http://hl7.eu/fhir/ig/xpandh/hdr/StructureDefinition/HDREncounter"					
* group[=].target = "http://hl7.eu/fhir/ig/xpandh/hdr/StructureDefinition/Encounter-eu-xpandh"					
					
* group[=].element[+].code = #HDREncounter.type					
* group[=].element[=].display = "A.2.3.1 - Encounter type [Mandatory]"					
* group[=].element[=].target.code = #Encounter.conformsTo('http://hl7.eu/fhir/ig/xpandh/hdr/StructureDefinition/Encounter-eu-xpandh').class					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equal					
					
* group[=].element[+].code = #HDREncounter.note					
* group[=].element[=].display = "A.2.3.2 - Encounter note [Optional]"					
* group[=].element[+].code = #HDREncounter.type					
//-- unmatched					
//-- unmatched					
* group[=].element[=].target.equivalence = #unmatched					
					
* group[=].element[+].code = #HDREncounter.admission					
* group[=].element[=].display = "A.2.3.3 - Admission [Mandatory]"					
* group[=].element[=].target.code = #Encounter.conformsTo('http://hl7.eu/fhir/ig/xpandh/hdr/StructureDefinition/Encounter-eu-xpandh').ofType(Organization)					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #HDREncounter.admission.urgency					
* group[=].element[=].display = "A.2.3.3.1 - Admission urgency [Required]"					
* group[=].element[=].target.code = #Encounter.conformsTo('http://hl7.eu/fhir/ig/xpandh/hdr/StructureDefinition/Encounter-eu-xpandh').priority					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "to be checked"					
* group[=].element[+].code = #HDREncounter.admission.date					
* group[=].element[=].display = "A.2.3.3.2 - Admission date [Mandatory]"					
* group[=].element[=].target.code = #Encounter.conformsTo('http://hl7.eu/fhir/ig/xpandh/hdr/StructureDefinition/Encounter-eu-xpandh').period.start					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "to be checked"					
* group[=].element[+].code = #HDREncounter.admission.admitter					
* group[=].element[=].display = "- Admitting professional Id []"					
* group[=].element[=].target.code = #Encounter.conformsTo('http://hl7.eu/fhir/ig/xpandh/hdr/StructureDefinition/Encounter-eu-xpandh').participant.where(type='ADM').individual.resolve()					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #HDREncounter.admission.admitter.identifier					
* group[=].element[=].display = "A.2.3.3.3 - Admitting professional Id [Required]"					
* group[=].element[=].target.code = #Encounter.conformsTo('http://hl7.eu/fhir/ig/xpandh/hdr/StructureDefinition/Encounter-eu-xpandh').participant.where(type='ADM').individual.resolve().identifier					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #HDREncounter.admission.admitter.name					
* group[=].element[=].display = "A.2.3.3.4 - Admitting professional name [Required]"					
* group[=].element[=].target.code = #Encounter.conformsTo('http://hl7.eu/fhir/ig/xpandh/hdr/StructureDefinition/Encounter-eu-xpandh').participant.where(type='ADM').individual.resolve().ofType(Practictioner).name					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "to be checked"					
* group[=].element[+].code = #HDREncounter.admission.admitter.name					
* group[=].element[=].display = "A.2.3.3.4 - Admitting professional name [Required]"					
* group[=].element[=].target.code = #Encounter.conformsTo('http://hl7.eu/fhir/ig/xpandh/hdr/StructureDefinition/Encounter-eu-xpandh').participant.where(type='ADM').individual.resolve().ofType(PractictionerRole).practitioner.resolve().name					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "to be checked"					
* group[=].element[+].code = #HDREncounter.admission.source					
* group[=].element[=].display = "A.2.3.3.5 - Admit Source [Required]"					
* group[=].element[=].target.code = #Encounter.conformsTo('http://hl7.eu/fhir/ig/xpandh/hdr/StructureDefinition/Encounter-eu-xpandh').hospitalization.admitSource					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
					
* group[=].element[+].code = #HDREncounter.admission.referringHP					
* group[=].element[=].display = " - Referring professional Id []"					
* group[=].element[=].target.code = #Encounter.conformsTo('http://hl7.eu/fhir/ig/xpandh/hdr/StructureDefinition/Encounter-eu-xpandh').participant.where(type='REF').individual.resolve()					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #HDREncounter.admission.referringHP.identifier					
* group[=].element[=].display = "A.2.3.3.6 - Referring professional Id [Required]"					
* group[=].element[=].target.code = #Encounter.conformsTo('http://hl7.eu/fhir/ig/xpandh/hdr/StructureDefinition/Encounter-eu-xpandh').participant.where(type='REF').individual.resolve().identifier					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #HDREncounter.admission.referringHP.name					
* group[=].element[=].display = "A.2.3.3.7 - Referring professional name [Required]"					
* group[=].element[=].target.code = #Encounter.conformsTo('http://hl7.eu/fhir/ig/xpandh/hdr/StructureDefinition/Encounter-eu-xpandh').participant.where(type='REF').individual.resolve().ofType(Practictioner).name					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "to be checked"					
* group[=].element[+].code = #HDREncounter.admission.referringHP.organization					
* group[=].element[=].display = "A.2.3.3.8 - Referring organization [Required]"					
* group[=].element[=].target.code = #Encounter.conformsTo('http://hl7.eu/fhir/ig/xpandh/hdr/StructureDefinition/Encounter-eu-xpandh').participant.where(type='REF').individual.resolve().ofType(PractictionerRole).practitioner.resolve().name					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "to be checked"					
* group[=].element[+].code = #HDREncounter.reason					
* group[=].element[=].display = "A.2.3.4 - Admission reason [Mandatory]"					
* group[=].element[=].target.code = #Encounter.conformsTo('http://hl7.eu/fhir/ig/xpandh/hdr/StructureDefinition/Encounter-eu-xpandh').TBC					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "to be completed"					
* group[=].element[+].code = #HDREncounter.reason.code					
* group[=].element[=].display = "A.2.3.4.1 - Admission reason [Required]"					
* group[=].element[=].target.code = #Encounter.conformsTo('http://hl7.eu/fhir/ig/xpandh/hdr/StructureDefinition/Encounter-eu-xpandh').reasonCode					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equal					
					
* group[=].element[+].code = #HDREncounter.reason.comment					
* group[=].element[=].display = "A.2.3.4.2 - Admission reason comment [Optional]"					
* group[=].element[=].target.code = #Encounter.conformsTo('http://hl7.eu/fhir/ig/xpandh/hdr/StructureDefinition/Encounter-eu-xpandh').reasonCode.text					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "to be checked"					
* group[=].element[+].code = #HDREncounter.reason.legalStatus					
* group[=].element[=].display = "A.2.3.4.3 - Admission legal status [Required]"					
* group[=].element[=].target.code = #Encounter.conformsTo('http://hl7.eu/fhir/ig/xpandh/hdr/StructureDefinition/Encounter-eu-xpandh').TBD					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
					
* group[=].element[+].code = #HDREncounter.discharge					
* group[=].element[=].display = "A.2.3.5 - Discharge [Mandatory]"					
* group[=].element[=].target.code = #Encounter.conformsTo('http://hl7.eu/fhir/ig/xpandh/hdr/StructureDefinition/Encounter-eu-xpandh').TBC					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "to be completed"					
* group[=].element[+].code = #HDREncounter.discharge.dateTime					
* group[=].element[=].display = "A.2.3.5.1 - Discharge date [Mandatory]"					
* group[=].element[=].target.code = #Encounter.conformsTo('http://hl7.eu/fhir/ig/xpandh/hdr/StructureDefinition/Encounter-eu-xpandh').period.end					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "to be checked"					
* group[=].element[+].code = #HDREncounter.discharge.destinationType					
* group[=].element[=].display = "A.2.3.5.2 - Discharge destination type [Required]"					
* group[=].element[=].target.code = #Encounter.conformsTo('http://hl7.eu/fhir/ig/xpandh/hdr/StructureDefinition/Encounter-eu-xpandh').hospitalization.dischargeDisposition					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "to be checked"					
* group[=].element[+].code = #HDREncounter.discharge.destinationLocation					
* group[=].element[=].display = "A.2.3.5.3 - Destination location [Required]"					
* group[=].element[=].target.code = #Encounter.conformsTo('http://hl7.eu/fhir/ig/xpandh/hdr/StructureDefinition/Encounter-eu-xpandh').TBD					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "to be checked"					
* group[=].element[+].code = #HDREncounter.location					
* group[=].element[=].display = "A.2.3.6 - Location - All locations/departments where the patient stayed within the hospital. [Required]"					
* group[=].element[=].target.code = #Encounter.conformsTo('http://hl7.eu/fhir/ig/xpandh/hdr/StructureDefinition/Encounter-eu-xpandh').location					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #HDREncounter.location.period					
* group[=].element[=].display = "A.2.3.6.1 - Period [Mandatory]"					
* group[=].element[=].target.code = #Encounter.conformsTo('http://hl7.eu/fhir/ig/xpandh/hdr/StructureDefinition/Encounter-eu-xpandh').location.period					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
					
* group[=].element[+].code = #HDREncounter.location.organization					
* group[=].element[=].display = " - Organization Id []"					
* group[=].element[=].target.code = #Encounter.conformsTo('http://hl7.eu/fhir/ig/xpandh/hdr/StructureDefinition/Encounter-eu-xpandh').TBD					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "to be checked"					
* group[=].element[+].code = #HDREncounter.location.organization.id					
* group[=].element[=].display = "A.2.3.6.2 - Organization Id [Required]"					
* group[=].element[=].target.code = #Encounter.conformsTo('http://hl7.eu/fhir/ig/xpandh/hdr/StructureDefinition/Encounter-eu-xpandh').TBD					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "to be checked"					
* group[=].element[+].code = #HDREncounter.location.organization.name					
* group[=].element[=].display = "A.2.3.6.3 - Organization Part Name [Mandatory]"					
* group[=].element[=].target.code = #Encounter.conformsTo('http://hl7.eu/fhir/ig/xpandh/hdr/StructureDefinition/Encounter-eu-xpandh').TBD					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "to be checked"					
* group[=].element[+].code = #HDREncounter.location.organization.details					
* group[=].element[=].display = "A.2.3.6.4 - Organization Part Details [Required]"					
* group[=].element[=].target.code = #Encounter.conformsTo('http://hl7.eu/fhir/ig/xpandh/hdr/StructureDefinition/Encounter-eu-xpandh').TBD					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "to be checked"					
//---END					
//---END					
//---END					
//---END					
//---END					
//---END					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
