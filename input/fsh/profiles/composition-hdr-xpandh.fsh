Profile: CompositionHdrXpandh
Parent: http://hl7.org/fhir/StructureDefinition/clinicaldocument
Id: Composition-hdr-eu-xpandh
Title: "Composition: Hospital Discharge Report"
Description: "Clinical document used to represent a Hospital Discharge Report (HDR) for the scope of the XpanDH project."
* ^publisher = "XpanDH Project"
* ^copyright = "XpanDH Project"
* . ^short = "Hospital Discharge Report composition"
* . ^definition = "Hospital Discharge Report composition. \r\nA composition is a set of healthcare-related information that is assembled together into a single logical document that provides a single coherent statement of meaning, establishes its own context and that has clinical attestation with regard to who is making the statement. \r\nWhile a Composition defines the structure, it does not actually contain the content: rather the full content of a document is contained in a Bundle, of which the Composition is the first resource contained."

* extension contains $information-recipient named information-recipient 0..*
* extension[information-recipient] contains practictionerRole 0..*
* extension[information-recipient][practictionerRole].valueReference only Reference ( PractitionerRoleXpandh )


//* extension[composition-clinicaldocument-versionNumber]

* identifier ^short = "HDR business identifier"
* status ^short = "HDR status"
* type only http://hl7.org/fhir/uv/ips/StructureDefinition/CodeableConcept-uv-ips
* type ^short = "Kind of composition (\"Hospital Discharge Report\")"
* type ^definition = "Specifies that this composition refer to a Hospital Discharge Report"
* type = $loinc#34105-7 //"Hospital Discharge summary"
* subject only Reference(PatientXpandh)
* subject 1..1
* subject ^definition = "Who or what the composition is about. \r\nIn general a composition can be about a person, (patient or healthcare practitioner), a device (e.g. a machine) or even a group of subjects (such as a document about a herd of livestock, or a set of patients that share a common exposure).\r\nFor the hdr the subject is always the patient."
* encounter only Reference (Encounter or InpatientEncounterHDRXpandh)
* date ^short = "HDR date"
* author ^short = "Who and/or what authored the Hospital Discharge Report"
* author ^definition = "Identifies who is responsible for the information in the Hospital Discharge Report, not necessarily who typed it in."
  * ^slicing.discriminator[0].type = #type
  * ^slicing.discriminator[0].path = "resolve()" //"valueReference.resolve()"
  * ^slicing.ordered = false
  * ^slicing.rules = #open
  * ^short = "Sliced per type of author"
  * ^definition = "Sliced per type of author"
* author contains practictionerRole 0..*
* author[practictionerRole] only Reference ( PractitionerRoleXpandh )

* title ^short = "Hospital Discharge Report"
* title ^definition = "Official human-readable label for the composition.\r\n\r\nFor this document should be \"Hospital Discharge Report\" or any equivalent translation"
* attester.mode ^short = "The type of attestation"
* attester.time ^short = "When the composition was attested"
* attester.party ^short = "Who attested the composition"

* section 1..
* section ^slicing.discriminator[0].type = #value
* section ^slicing.discriminator[0].path = "code"
* section ^slicing.ordered = false
* section ^slicing.rules = #open
* section ^short = "Sections composing the Hospital Discharge Report"
* section ^definition = "The root of the sections that make up the Hospital Discharge Report composition."

// -------------------------------------
// Admission Evaluation Section 0 … 1 R
// -------------------------------------

* section contains admissionEvaluationSection ..1
* section[admissionEvaluationSection]
  * insert SectionComRules (
    Hospital Admission evaluation,
      Hospital Admission evaluation,
      $loinc#67852-4) //"Hospital Admission evaluation note")   // SHORT, DESC, CODE
  * ^comment = "Admission evaluation should be reported only exceptionally, if it is relevant to ensure continuity of care."
  * insert EvaluationSubSectionRules  // insert all sub-section
  * entry 0..

// -------------------------------------
// Hospital Course Section 1..1
// -------------------------------------
* section contains sectionHospitalCourse 1..1
* section[sectionHospitalCourse]
  * insert SectionComRules (
    HDR Hospital course,
    Hospital course describes the sequence of events from admission to discharge in a hospital facility.,
    $loinc#8648-8) // "Hospital course Narrative")   // CODE
  * ^short = "Significant information about course of hospital stay"
  * ^definition = "This section includes basic information about hospital stay (encounter), diagnostic summary in narrative form, pharmacotherapy, major procedures, medical devices, significant findings during hospital stay and clinical synthesis."
  * section
    * ^slicing.discriminator[+].type = #type
    * ^slicing.discriminator[=].path = "resolve()"
    * ^slicing.ordered = false
    * ^slicing.rules = #open
  * entry 1..1
  * entry only Reference(InpatientEncounterHDRXpandh)

  * section contains diagnosticSummaryDescription 0..1
  * section[diagnosticSummaryDescription]
    * insert SectionComRules (
      Diagnostic summary section,
      All problems/diagnoses that affect care during the inpatient case or are important to be recorded to ensure continuity of care. The diagnostic summary differentiates\, in accordance with the international recommendation\, between problems treated during hospital stay and other (untreated\) problems. Treated problems are problems that were the subject of diagnostics\, therapy\, nursing\, or (continuous\) monitoring during the hospitalisation. Furthermore problems could be divided into three categories: problems present on admission (POA\)\, conditions acquired during hospital stay (HAC\) and problems that cannot be classified as being of any of the two (N/A\). The diagnostic summary contains all conditions as they were recognised at the end of hospitalisation\, after all examinations. This section contains concise\, well specified\, codeable\, summary of problems. Problems are ordered by importance (main problems first\) during hospital stay. Description of the problem might be completed with additional details in the medical history section and/or in the Synthesis section.	,
      $sct#721981007) // "Diagnostic studies report (record artifact\)")
    * entry 0..*
    * entry only Reference(ConditionEncounterHdrXpandh)
    * section ..0

  * section contains significantProcedures 1..1
  * section[significantProcedures]
    * insert SectionComRules (
      Significant procedures,
      Significant surgical and non-surgical procedures performed during hospitalisation which are significant for continuity of care\, e.g. surgeries and other \"instrumental\"interventions (endoscopic\, intravascular\)\, chemotherapy\, radiotherapy\, purification methods (dialysis\, hemoperfusion\)\, circulation support methods (counterpulsation\, etc.\)\, administration of blood derivatives or others.\r\nThis section does not include purely diagnostic procedures (MRI\, CT\, etc.\). If no significant performance has been performed\, this fact must be explicitly stated using the IPS Absent and Unknown Data. ,
      $sct#1269501001) // "Procedure section (record artifact\)")
    * entry 1..
    * entry only Reference(ProcedureXpandh)
    * section ..0

  * section contains medicalDevices 1..1
  * section[medicalDevices]
    * insert SectionComRules (
      Medical devices and implants,
      Implants and used medical devices that affected or may affect the provision of health services (diagnosis and treatment\). Also medical devices explanted\, or its use was stopped during hospitalisation. If the section is blank\, the reason must be explicitly stated using the IPS Absent and Unknown Data coding system. ,
      $sct#1184586001) // "Medical device document section (record artifact\)")
    * entry 1..
    * entry only Reference(DeviceXpandh)
    * section ..0

  * section contains medications 0..1
  * section[medications]
    * insert SectionComRules (
      Pharmacotherapy,
      Selected drug treatment during hospitalisation. Medicinal products that were administered during hospitalisation and whose administration has already been discontinued before discharge. Only products which are important for continuity of care (antibiotics other than completely routine\, corticosteroids in high doses\, etc.\) will be listed. Products which administration will continue after discharge will be also recorder in the Medication summary section.
Medicinal products\, the administration of which was started during hospitalisation but is also recommended after discharge\, will be listed in the summary table in the recommendation section. ,
      $sct#761931002) // "Medication treatment plan report (record artifact\)")
    * entry 1..
    * entry only Reference(MedicationStatementXpandh)
    * section ..0

  * section contains significantResults 0..1
  * section[significantResults]
    * insert SectionComRules (
      Significant Observation Results,
      Results of significant functional\, diagnostic\, and imaging examinations to ensure continuity of care\, performed during hospitalisation. Results of examinations ordered but not yet delivered should be presented separately from results already delivered.,
      $sct#423100009) // "Results section (record artifact\)")
    * entry 1..
    * entry only Reference(Observation or ObservationResultsRadiologyUvIps or ObservationResultsLaboratoryEu)
    * section ..0

  * section contains synthesis 1..1
  * section[synthesis]
    * insert SectionComRules (
      Synthesis,
      This section provides clinical synthesis (e.g. description of reasons and course of hospital stay\) clustered by managed conditions. Clinical synthesis may include clinical reasoning (differential diagnostics\, explanation of clinical context\) in clinically complex conditions.,
      $sct#866144008) // "Encounter note (record artifact\)")
    * entry ..0

    * section ^slicing.discriminator[0].type = #value
    * section ^slicing.discriminator[0].path = "code"
    * section ^slicing.ordered = false
    * section ^slicing.rules = #open
    * section ^short = "Subsections of the Hospital Discharge Report Synthesis"

    * section contains problemSynthesis 0..*
    * section[problemSynthesis]
      * insert SectionComRules (
      Problem synthesis,
      Summary description of the reason and course of hospitalisation for a specific problem.,
      $sct#423016009 ) //"Clinical statement entry (record artifact\)"
      //* entry only Reference(ConditionHdrXpandh)
      * entry only Reference(ClinicalImpressionHdrXpandh)
    * section contains clinicalReasoning 0..1
    * section[clinicalReasoning]
      * insert SectionComRules (
      Clinical reasoning,
      The clinical summary can be concluded with a clinical consideration (diff. diagnosis\, explanation of context\, etc.\) for clinically complex conditions.,
      $sct#1331904007 ) //"Informed clinical opinion document (record artifact\)"
      * entry only Reference(ClinicalImpressionHdrXpandh)


// -------------------------------------
// Discharge Details Section 1 … 1 R
// -------------------------------------
* section contains dischargeDetails 1..1
* section[dischargeDetails]
  * insert SectionComRules (
      Discharge details,
      The hospital discharge status or disposition of the patient having a hospitalization.,
      $loinc#8650-4 ) //"Hospital discharge disposition Narrative"
  * insert EvaluationSubSectionRules


// -------------------------------------
// Plan of Care Section
// -------------------------------------
* section contains sectionPlanOfCare 0..1
* section[sectionPlanOfCare]
  * insert SectionComRules (
      Care plan and other recommendations section.,
      Care plan and other recommendations after discharge.,
      $loinc#18776-5 ) //"Plan of care note"
  * ^short = "Care plan and other recommendations after discharge."
  * ^definition = "This section includes summary information on the medication recommended for the period after discharge, formal care plans and other recommendations (advice) after discharge."
  * entry only Reference(CarePlan or DocumentReference)

  * section
    * ^slicing.discriminator[+].type = #type
    * ^slicing.discriminator[=].path = "resolve()"
    * ^slicing.ordered = false
    * ^slicing.rules = #open

  * section contains medicationSummary 1..1
  * section[medicationSummary]
    * insert SectionComRules (
    Medication summary,
    Summary information on the medication recommended for the period after discharge\, indicating whether the medication is changed or newly started. Compared to previous practices\, the overview is supplemented with medication that has been discontinued.,
    $sct#721912009 ) //"Medication summary document (record artifact\)"
    * entry 1..
    * entry only Reference(MedicationStatementXpandh or MedicationRequest or MedicationDispenseHdrXpandh)
      * ^short = "Medication statement, Medication request/recommendation or Medications dispensation."
      * ^definition = "Medication statement on drug that has been or is taken, Medication request/recommendation for medication or Information about medication dispensed/provided to the patient on discharge."
      * ^comment = "Each medication statement should reflect status of the medication - indicating whether the medication is changed/unchanged or newly started."
    * section ..0

// -------------------------------------
// Health Insurance (Coverage) and payment section
// -------------------------------------
* section contains sectionHealthInsurance 0..1
* section[sectionHealthInsurance]
  * insert SectionComRules (
      Health insurance and payment information section.,
      Health insurance information is not always required\, however\, in some jurisdictions\, the insurance number is also used as the patient identifier. It is necessary not just for identification but also forms access to funding for care.,
      $loinc#48768-6) //"Payment sources Document" ) // this is a provisional code as I was not able to find better
  * ^short = "Health insurance and payment information."
  * ^definition = "This section includes heath insurance and payment information."
  * entry only Reference(CoverageHdrXpandh)

// -------------------------------------
// Patient History Section 0 … 1 R
// ToDo: Review
// -------------------------------------

* section contains patientHxSection ..1
* section[patientHxSection]
  * insert SectionComRules (
    Patient History Section,
    This Section describes all aspects of the medical history of the patient even if not pertinent to the current procedure\, and may include chief complaint\, past medical history\, social history\, family history\, surgical or procedure history\, medication history\, and other history information. The history may be limited to information pertinent to the current procedure or may be more comprehensive. The history may be reported as a collection of random clinical statements or it may be reported categorically. Categorical report formats may be divided into multiple subsections including Past Medical History\, Social History\, Family member History.,
    $loinc#11329-0 ) //"History general Narrative - Reported"

  * section
    * ^slicing.discriminator[+].type = #type
    * ^slicing.discriminator[=].path = "resolve()"
    * ^slicing.ordered = false
    * ^slicing.rules = #open

  * section contains pastProblems 0..1
  * section[pastProblems]
    * insert SectionComRules (
    History of Past Illness,
    A list of conditions of a patient that the patient suffered in the past or still suffers. Unlike diagnostic summary\, medical history is not only a list of problems\, but could contain broader description of the condition and its progress\, details about treatment including medication and patient response to treatment. Past problem section (unlike the same section of the patient summary\) should include only conditions that are important for continuity of care. This section\, if provided\, complements the diagnostic summary section of the discharge report. ,
    $sct#1003642006 ) //"Past medical history section (record artifact\)"
    * entry 0..*
    * entry only Reference(ConditionHdrXpandh)
      * ^short = "Condition details."
      * ^definition = "Conditions of a patient that the patient suffered in the past or still suffers."
      //* ^comment = "."
    * section ..0

  * section contains medicalDevicesHx 0..1
  * section[medicalDevicesHx]
    * insert SectionComRules (
    Devices and Implants,
    A list of patient implanted and external medical devices and equipment upon which their health status depends. Includes devices such as cardiac pacemakers\, implantable fibrillator\, prosthesis\, ferromagnetic bone implants\, etc.\, of which the Health professional needs to be aware.,
    $sct#1184586001 ) //"Medical device document section (record artifact\)"
    * entry 1..*
    * entry only Reference(DeviceUseStatement)
      * ^short = "Devices and Implants."
      * ^definition = "The patient implanted and external medical devices and equipment upon which their health status depends. Includes devices such as cardiac pacemakers, implantable fibrillator, prosthesis, ferromagnetic bone implants, etc., of which the Health professional needs to be aware."
      * ^comment = "This entry shall be also used to document that no information about medical device use is available, or that no relevant medical device use is known using the IPS Absent and Unknown Data."
    * section ..0

  * section contains proceduresHx 0..1
  * section[proceduresHx]
    * insert SectionComRules (
    History of procedures,
    Historical procedures performed on or for a patient\, relevant for the current encounter.\r\n
    Examples include surgical procedures\, diagnostic procedures\, endoscopic procedures\, biopsies\, counselling\, physiotherapy\, personal support services\, adult day care services\, etc.,
    $sct#1269501001 ) //"Procedure section (record artifact\)"
    * entry 1..*
    * entry only Reference(ProcedureXpandh)
      * ^short = "Procedures"
      * ^definition = "Historical procedures performed on or for a patient, relevant for the current encounter."
      * ^comment = "This entry shall be also used to document that no information about procedures is available, or that no relevant procedures is known using the IPS Absent and Unknown Data."
    * section ..0

  * section contains vaccination 0..1
  * section[vaccination]
    * insert SectionComRules (
    Vaccination history,
    Vaccination history of the patient,
    $sct#41000179103 ) //"Immunization record (record artifact\)"
    * entry 1..*
    * entry only Reference(ImmunizationXpandh)
      * ^short = "Patient's immunization status and pertinent history."
      * ^definition = "It defines the patient's current immunization status and pertinent immunization history.\r\nThe primary use case for the Immunization Section is to enable communication of a patient's immunization status.\r\n It may contain the entire immunization history that is relevant to the period of time being summarized. This entry shall be used to document that no information about immunizations is available, or that no immunizations are known."
    * section ..0

  * section contains infectiousContacts 0..1
  * section[infectiousContacts]
    * insert SectionComRules (
      Infectious contacts,
      Infectious contacts of the patient,
      $sct#444071008 ) //"Exposure to organism (event\)"
    * entry 0..*
    * entry only Reference(InfectiousContactXpandh)
      * ^short = "Exposure to an infectious agent."
      * ^definition = "Information about a suspected infectious agent or agents the person was exposed to."
    * section ..0

  * section contains travelHx 0..1
  * section[travelHx]
    * insert SectionComRules (
      Travel history,
      Travel history,
      $sct#443846001 ) //"Detail of history of travel (observable entity\)"
    * entry 1..*
    * entry only Reference(TravelHistoryXpandh)
      * ^short = "Travel history of the patient."
      * ^definition = "Travel history as reported by the patient or other informant."
    * section ..0

  * section contains familyHx 0..1
  * section[familyHx]
    * insert SectionComRules (
      Family history,
      Information about serious illnesses in close blood relatives with known or suspected genetic potential or with possible impact on patient care.,
      $sct#422432008 ) //"Family history section (record artifact)"
    * entry 0..*
    * entry only Reference(FamilyMemberHistory)
      * ^short = "Family history"
      * ^definition = "Family history"
    * section ..0

  * section contains socialHx 0..1
  * section[socialHx]
    * insert SectionComRules (
      Social history,
      Information about social determinants of health.,
      $sct#1184589008 ) //"Social history document section (record artifact)"
    * entry 0..*
    * entry only Reference(SocialHistoryXpandh)
      * ^short = "Social history"
      * ^definition = "Social determinants of health"
    * section ..0

// Continue here !!



// -------------------------------------
// Allergies and Intolerances Section 0 … 1
// -------------------------------------
* section contains sectionAllergies 0..1

* section[sectionAllergies]
  * insert SectionComRules (
      HDR Allergies and Intolerances Section,
      This section documents the relevant allergies or intolerances (conditions\) for that patient\, describing the kind of reaction (e.g. rash\, anaphylaxis\,..\); preferably the agents that cause it; and optionally the criticality and the certainty of the allergy.\r\nAt a minimum\, it should list currently active and any relevant historical allergies and adverse reactions.\r\nIf no information about allergies is available\, or if no allergies are known this should be clearly documented in the section.,
      $loinc#48765-2 )   // CODE
  * entry 1..
  * entry only Reference(AllergyIntolerance or DocumentReference  )
  * insert SectionEntrySliceComRules(Relevant allergies or intolerances (conditions\) for that patient.,
    It lists the relevant allergies or intolerances (conditions\) for that patient\, describing the kind of reaction (e.g. rash\, anaphylaxis\,..\); preferably the agents that cause it; and optionally the criticality and the certainty of the allergy.\r\nAt a minimum\, it should list currently active and any relevant historical allergies and adverse reactions.\r\n This entry shall be used to document that no information about allergies is available\, or that no allergies are known .)
  // entry slices
  * insert SectionEntrySliceDefRules (allergyIntolerance, 0.. , HDR Allergy entry,
    HDR Allergy entry, $AllergyIntolerance-uv-ips)


// -------------------------------------
// Alert 0 .. 1
// -------------------------------------

* insert AlertSectionRules


// -------------------------------------
// Care Team 0 … 1
// -------------------------------------
* insert CareTeamSectionRules

/*
// -------------------------------------
// Gynaecological-obstetric history 0 … 1
// -------------------------------------
* section contains sectionPregnancyHx ..1
* section[sectionPregnancyHx] ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[sectionPregnancyHx] ^extension[0].valueString = "Section"
* section[sectionPregnancyHx] ^short = "IPS History of Pregnancy Section"
* section[sectionPregnancyHx] ^definition = "The history of pregnancy section shall contain information about whether the patient is currently pregnant or not.\r\nIt may contain addition summarizing information about the outcome of earlier pregnancies."
* section[sectionPregnancyHx].title 1..
* section[sectionPregnancyHx].code 1..
* section[sectionPregnancyHx].code only http://hl7.org/fhir/uv/ips/StructureDefinition/CodeableConcept-uv-ips
* section[sectionPregnancyHx].code = http://loinc.org#10162-6 (exactly)
* section[sectionPregnancyHx].text 1..
* section[sectionPregnancyHx].entry
* section[sectionPregnancyHx].entry only Reference( $Observation-pregnancy-outcome-uv-ips or $Observation-pregnancy-status-uv-ips or Observation or DocumentReference)
* section[sectionPregnancyHx].entry ^short = "Current pregnancy status and, optionally, information about the outcome of earlier pregnancies."
* section[sectionPregnancyHx].entry ^definition = "It contains information about whether the patient is currently pregnant or not.\r\nIt may contain addition summarizing information about the outcome of earlier pregnancies."
* section[sectionPregnancyHx].emptyReason ..0
* section[sectionPregnancyHx].emptyReason ^mustSupport = false
*/

/*
// -------------------------------------
// Social History Section
// -------------------------------------
* section contains sectionSocialHistory ..1
* section[sectionSocialHistory] ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[sectionSocialHistory] ^extension[0].valueString = "Section"
* section[sectionSocialHistory] ^short = "HDR Social History Section"
* section[sectionSocialHistory] ^definition = "The social history section contains a description of the person’s Health related “lifestyle factors\" or \"lifestyle observations\" (e.g. smoke habits; alcohol consumption; diets, risky habits.)"
* section[sectionSocialHistory].title 1..
* section[sectionSocialHistory].code 1..
* section[sectionSocialHistory].code only http://hl7.org/fhir/uv/ips/StructureDefinition/CodeableConcept-uv-ips
* section[sectionSocialHistory].code = http://loinc.org#29762-2 (exactly)
* section[sectionSocialHistory].text 1..
* section[sectionSocialHistory].entry
* section[sectionSocialHistory].entry only Reference(Observation or DocumentReference or $Observation-alcoholuse-uv-ips or $Observation-tobaccouse-uv-ips)
* section[sectionSocialHistory].entry ^short = "Health related \"lifestyle factors\" or \"lifestyle observations\" (e.g. smoke habits; alcohol consumption; diets, risky habits.)"
* section[sectionSocialHistory].entry ^definition = "Description of the person’s Health related “lifestyle factors\" or \"lifestyle observations\" (e.g. smoke habits; alcohol consumption; diets, risky habits.)"
* section[sectionSocialHistory].emptyReason ..0
* section[sectionSocialHistory].emptyReason ^mustSupport = false
*/


// -------------------------------------
// Hospital Discharge Studies Summary Section
// -------------------------------------
/*
* section contains hospitalDischargeStudiesSection ..1
* section[hospitalDischargeStudiesSection] ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[hospitalDischargeStudiesSection] ^extension[0].valueString = "Section"
* section[hospitalDischargeStudiesSection] ^short = "Hospital Discharge Studies Summary Section"
* section[hospitalDischargeStudiesSection] ^definition = "This section records the results of observations generated by laboratories, imaging procedures, and other procedures. The scope includes hematology, chemistry, serology, virology, toxicology, microbiology, plain x-ray, ultrasound, CT, MRI, angiography, echocardiography, nuclear medicine, pathology, and procedure observations. This section often includes notable results such as abnormal values or relevant trends, and could record all results for the period of time being documented. Laboratory results are typically generated by laboratories providing analytic services in areas such as chemistry, hematology, serology, histology, cytology, anatomic pathology, microbiology, and/or virology. These observations are based on analysis of specimens obtained from the patient and submitted to the laboratory. Imaging results are typically generated by a clinician reviewing the output of an imaging procedure, such as when a cardiologist reports the left ventricular ejection fraction based on the review of an echocardiogram. Procedure results are typically generated by a clinician wanting to provide more granular information about component observations made during the performance of a procedure, such as when a gastroenterologist reports the size of a polyp observed during a colonoscopy. Note that there are discrepancies between CCD and the lab domain model, such as the effectiveTime in specimen collection."
* section[hospitalDischargeStudiesSection].title 1..
* section[hospitalDischargeStudiesSection].code 1..
* section[hospitalDischargeStudiesSection].code only http://hl7.org/fhir/uv/ips/StructureDefinition/CodeableConcept-uv-ips
* section[hospitalDischargeStudiesSection].code = http://loinc.org#11493-4 (exactly)
* section[hospitalDischargeStudiesSection].text 1..
* section[hospitalDischargeStudiesSection].text only Narrative
* section[hospitalDischargeStudiesSection].entry 0..
* section[hospitalDischargeStudiesSection].entry ^short = "Study Summary"
* section[hospitalDischargeStudiesSection].entry ^definition = "Study Summary"
* section[hospitalDischargeStudiesSection].emptyReason ..0
* section[hospitalDischargeStudiesSection].emptyReason ^mustSupport = false
*/
// -------------------------------------

// -------------------------------------

// to be classified

// -------------------------------------



// -------------------------------------
* section contains sectionAdvanceDirectives ..1

* section[sectionAdvanceDirectives]
  * insert SectionComRules (
    Advance Directives Section,
    The advance directives section contains a narrative description of patient's advance directive.,
    $loinc#42348-3 )  // 	Advance directives
  * entry only Reference(Consent or DocumentReference) // ==> Add Profile

// -------------------------------------

/*
* section contains sectionEncounters ..1
* section[sectionEncounters] ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[sectionEncounters] ^extension[0].valueString = "Section"
* section[sectionEncounters] ^short = "Encounters sections"
* section[sectionEncounters] ^definition = "This section lists and describes any healthcare encounters pertinent to the patient’s current health status or historical health history. An encounter is an interaction, regardless of the setting, between a patient and a practitioner who is vested with primary responsibility for diagnosing, evaluating, or treating the patient’s condition. It may include visits, appointments, or non-face-to-face interactions. It is also a contact between a patient and a practitioner who has primary responsibility (exercising independent judgment) for assessing and treating the patient at a given contact.“ (from C-CDA specifications)."
* section[sectionEncounters].title 1..
* section[sectionEncounters].code 1..
* section[sectionEncounters].code = http://loinc.org#46240-8 (exactly)
* section[sectionEncounters].text 1..
* section[sectionEncounters].entry
* section[sectionEncounters].emptyReason ..0
* section[sectionEncounters].emptyReason ^mustSupport = false
*/

// -------------------------------------



