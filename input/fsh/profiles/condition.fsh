Profile: ConditionHdrXpandh
Parent: ConditionUvIps
Id: condition-hdr-xpandh
Title: "Condition for Xpandh Profile"
Description: "This profile represents the constraint applied to the Condition in the scope of Xpandh hospital discharge report."

* identifier ^definition = "Globally unique identifier of this problem which remain constant as the resource is updated and propagates from server to server."
* text 1..
  * ^definition = "Human readable specification of the problem. This is a general notes/comments entry for description of the problem, its diagnosis and prognosis."
* category MS
  * ^definition = "The type of problem; see the concept description."
* category only $CodeableConcept-uv-ips
* clinicalStatus MS
* clinicalStatus from ConditionClinicalStatusCodes (required)
  * ^definition = "The problem status describes the condition of the problem:\n\r
1.	Active problems are problems of which the patient experiences symptoms or for which evidence exists.\n\r
2.	If condition is abated, then clinicalStatus must be either inactive, resolved, or remission. \n\r
3.	Problems with the status 'Inactive' refer to problems that don't affect the patient anymore or that of which there is no evidence of existence anymore."
* verificationStatus MS
* verificationStatus from ConditionVerificationStatus (required)
  * ^definition = "The verification status to support the clinical status of the condition."
* code only $CodeableConcept-uv-ips
* code from HdrConditionXpandhVS
  * ^definition = "The problem code specifies the problem. Depending on the setting, different code systems can be used. The ProblemCodelist provides an overview of the possible code systems."
* bodySite
  * ^definition = "Anatomical location which is the focus of the problem."
  * extension contains LateralityQualifier named laterality 0..1
  * extension[laterality].valueCodeableConcept from LateralityQualifierVS (required)
* subject only Reference(PatientXpandh)
* subject MS
* onset[x] only dateTime or Age or Period or Range or string
* onset[x] MS
* onset[x] ^type.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
* onset[x] ^type.extension.valueBoolean = true
* onsetDateTime ^definition = "Onset of the symptom, complaint, functional limitation, complication or date of diagnosis. A ‘vague’ date, such as only the year or the month and the year, is permitted."

* abatement[x] only dateTime or Age or Period or Range or string
* abatement[x] MS
* abatement[x] ^type.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
* abatement[x] ^type.extension.valueBoolean = true
* abatementDateTime ^definition = "The date or estimated date that the condition resolved or went into remission. A ‘vague’ date, such as only the year or the month and the year, is permitted"

* recordedDate MS
  * ^definition = "Date (and time) when this problem was recorded into information system."

* recorder ^definition = "A healthcare professional who authored information about the problem."

* stage.assessment only Reference(CancerStageGroupHdrXpandh)
* stage.summary from CancerStageGradingVS
  * ^short = "Most recent Stage Group"
  * ^definition = "As for mCODE, in IDEA4RC staging information MUST be captured in an Observation that conforms to the CancerStageGroup profile. For convenience, the stage group MAY appear in this element, copied from the CancerStageGroup, but Data Senders and Receivers MAY ignore it."
* stage.type ^short = "Staging system used."
* stage.type ^definition = "As for mCODE, in IDEA4RC staging information MUST be captured in an Observation that conforms to the CancerStageGroup profile. For convenience, the staging system MAY appear in this element, but Data Senders and Receivers MAY ignore it."

* note ^definition = "Comment by the one who determined or updated the Problem."

* severity MS
* severity ^definition = "A subjective assessment of the severity of the condition as evaluated by the clinician."

