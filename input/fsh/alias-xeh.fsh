
//============== ALIAS ===============

// --- Code Systems
Alias: $ajcc = http://cancerstaging.org
Alias: $dicomOntology = http://dicom.nema.org/resources/ontology/DCM
Alias: $edqm = https://standardterms.edqm.eu
Alias: $spor-sms = http://spor.ema.eu/sms // FAKE URL TO BE CHANGED
Alias: $iccc3 = http://terminology.hl7.org/CodeSystem/iccc-3 // FAKE URL NOT YET ASSIGNED !!
Alias: $icd03 = http://terminology.hl7.org/CodeSystem/icd-o-3
Alias: $loinc =  http://loinc.org
Alias: $observation-category = http://terminology.hl7.org/CodeSystem/observation-category

Alias: $ucum =  http://unitsofmeasure.org
Alias: $v2-0131 = http://terminology.hl7.org/CodeSystem/v2-0131
Alias: $v3-ActCode = http://terminology.hl7.org/CodeSystem/v3-ActCode
Alias: $v3-RoleCode = http://terminology.hl7.org/CodeSystem/v3-RoleCode
Alias: $data-absent-reason = http://terminology.hl7.org/CodeSystem/data-absent-reason
Alias: $diagnostic-service-sections = http://terminology.hl7.org/CodeSystem/v2-0074
Alias: $obs-interpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation
Alias: $reference-range-meaning = http://terminology.hl7.org/CodeSystem/referencerange-meaning

Alias: $absent-unknown-uv-ips = http://hl7.org/fhir/uv/ips/CodeSystem/absent-unknown-uv-ips
Alias: $allergyintolerance-verification = http://terminology.hl7.org/CodeSystem/allergyintolerance-verification
Alias: $allergyintolerance-clinical = http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical
Alias: $v3-Confidentiality = http://terminology.hl7.org/CodeSystem/v3-Confidentiality
Alias: $condition-ver-status = http://terminology.hl7.org/CodeSystem/condition-ver-status
Alias: $allergy-intolerance-criticality = http://hl7.org/fhir/allergy-intolerance-criticality
Alias: $orphanet = https://www.orpha.net // TEMPORARY
Alias: $isco = urn:oid:2.16.840.1.113883.2.9.6.2.7
Alias: $eu-device = http://example.org/eu-devices // ASSIGN URL



// --- Value Sets
Alias: $v3-ClassNullFlavor = http://terminology.hl7.org/ValueSet/v3-ClassNullFlavor
Alias: $v3-ActCode = http://terminology.hl7.org/CodeSystem/v3-ActCode
Alias: $v3-ParticipationType = http://terminology.hl7.org/CodeSystem/v3-ParticipationType
Alias: $diagnosis-role = http://terminology.hl7.org/CodeSystem/diagnosis-role

Alias: $results-laboratory-observations-uv-ips = http://hl7.org/fhir/uv/ips/ValueSet/results-laboratory-observations-uv-ips
Alias: $results-coded-values-laboratory-uv-ips = http://hl7.org/fhir/uv/ips/ValueSet/results-coded-values-laboratory-uv-ips

Alias: $radiotherapy-energy-units = http://hl7.org/fhir/us/codex-radiation-therapy/ValueSet/radiotherapy-energy-units
Alias: $codex-radiotherapy-isotopes = http://hl7.org/fhir/us/codex-radiation-therapy/ValueSet/codex-radiotherapy-isotopes

// ---- Extensions
Alias: $condition-related = http://hl7.org/fhir/StructureDefinition/condition-related
Alias: $condition-assertedDate = http://hl7.org/fhir/StructureDefinition/condition-assertedDate
Alias: $mcode-histology-morphology-behavior = http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-histology-morphology-behavior
Alias: $mcode-body-location-qualifier = http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-body-location-qualifier
Alias: $mcode-laterality-qualifier =  http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-laterality-qualifier
Alias: $patient-birthPlace = http://hl7.org/fhir/StructureDefinition/patient-birthPlace
Alias: $patient-mothersMaidenName = http://hl7.org/fhir/StructureDefinition/patient-mothersMaidenName
Alias: $event-statusReason = http://hl7.org/fhir/StructureDefinition/event-statusReason
Alias: $procedure-method = http://hl7.org/fhir/StructureDefinition/procedure-method
Alias: $workflow-supportingInfo = http://hl7.org/fhir/StructureDefinition/workflow-supportingInfo
Alias: $bodySite = http://hl7.org/fhir/StructureDefinition/bodySite
Alias: $flag-detail = http://hl7.org/fhir/StructureDefinition/flag-detail
Alias: $flag-priority = http://hl7.org/fhir/StructureDefinition/flag-priority
// Alias: $composition-diagnostic-report-reference = http://hl7.eu/fhir/ig/xeh/StructureDefinition/composition-DiagnosticReportReference
Alias: $diagnostic-report-composition-r5 = http://hl7.org/fhir/5.0/StructureDefinition/extension-DiagnosticReport.composition

Alias: $patient-citizenship = http://hl7.org/fhir/StructureDefinition/patient-citizenship
Alias: $patient-nationality = http://hl7.org/fhir/StructureDefinition/patient-nationality
Alias: $composition-basedOn-order-or-requisition = http://hl7.eu/fhir/StructureDefinition/composition-basedOn-order-or-requisition
Alias: $information-recipient = http://hl7.eu/fhir/StructureDefinition/information-recipient
//Alias: $composition-clinicaldocument-versionNumber = http://hl7.org/fhir/StructureDefinition/composition-clinicaldocument-versionNumber


// --- Profiles
Alias: $Composition-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/Composition-uv-ips
Alias: $Patient-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/Patient-uv-ips
Alias: $AllergyIntolerance-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/AllergyIntolerance-uv-ips
Alias: $Condition-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/Condition-uv-ips
Alias: $DeviceUseStatement-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/DeviceUseStatement-uv-ips
Alias: $DiagnosticReport-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/DiagnosticReport-uv-ips
Alias: $ImagingStudy-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/ImagingStudy-uv-ips
Alias: $Immunization-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/Immunization-uv-ips
Alias: $Media-observation-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/Media-observation-uv-ips
Alias: $Medication-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/Medication-uv-ips
Alias: $MedicationRequest-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/MedicationRequest-uv-ips
Alias: $MedicationStatement-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/MedicationStatement-uv-ips
Alias: $Practitioner-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/Practitioner-uv-ips
Alias: $PractitionerRole-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/PractitionerRole-uv-ips
Alias: $Procedure-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/Procedure-uv-ips
Alias: $Organization-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/Organization-uv-ips
Alias: $Observation-pregnancy-edd-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/Observation-pregnancy-edd-uv-ips
Alias: $Observation-pregnancy-outcome-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/Observation-pregnancy-outcome-uv-ips
Alias: $Observation-pregnancy-status-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/Observation-pregnancy-status-uv-ips
Alias: $Observation-alcoholuse-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/Observation-alcoholuse-uv-ips
Alias: $Observation-tobaccouse-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/Observation-tobaccouse-uv-ips
Alias: $Observation-results-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/Observation-results-uv-ips
Alias: $Specimen-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/Specimen-uv-ips
Alias: $Bundle-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/Bundle-uv-ips
Alias: $vitalsigns = http://hl7.org/fhir/StructureDefinition/vitalsigns

Alias: $SD-data-absent-reason = http://hl7.org/fhir/StructureDefinition/data-absent-reason

Alias: $Range-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/Range-uv-ips
Alias: $Ratio-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/Ratio-uv-ips
Alias: $Quantity-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/Quantity-uv-ips

Alias: $Observation-results-laboratory-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/Observation-results-laboratory-uv-ips

//=========================