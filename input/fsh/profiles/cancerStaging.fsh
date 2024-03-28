RuleSet: CancerStageCommonRules
* value[x] only CodeableConcept
// * value[x] ^comment = ""    // suppress QA error on #notes link
* status ^short = "The status of the result"
* code ^short = "What was observed"
* effective[x] ^short = "Clinically relevant time for observation"
* value[x] ^short = "Actual result."
* insert NotUsed(device)
* insert NotUsed(referenceRange)
* insert NotUsed(component)
//* focus only Reference(ConditionPrimaryCancerI4rc)
* focus only Reference(ConditionHdrXpandh)
* insert SubjectRules
* method ^short = "ADD BINDING"
/* * method from CancerStagingSystemVS (extensible) */
// MS flags -- for Pathological staging, they might be redundant with US Core Lab Observation (but that's harmless)
// * status and code and subject and effective[x] and value[x] and method and focus MS

Profile: CancerStageGroupHdrXpandh
Id: cancer-stage-group-hdr-xpandh
Parent: Observation
Title: "Observation: Cancer Stage Group"
Description: "The extent of the cancer in the body, according to a given cancer staging classification system, based on evidence such as physical examination, imaging, and/or biopsy or based on pathologic analysis of a specimen."
* insert CancerStageCommonRules

* code from CancerStageGroupVS (extensible)
* valueCodeableConcept from CancerStageGroupVS (preferred)
* hasMember only Reference(Observation)
* insert ObservationHasMemberSlicingRules
* hasMember contains
    tnmPrimaryTumorCategory 0..1  and
    tnmRegionalNodesCategory 0..1  and
    tnmDistantMetastasesCategory 0..1
// Set metadata attributes that show up in the IG
* hasMember[tnmPrimaryTumorCategory] only Reference(TNMPrimaryTumorCategory)
* hasMember[tnmPrimaryTumorCategory] ^short = "TNM Primary Tumor Category"
* hasMember[tnmPrimaryTumorCategory] ^definition = "Category of the primary tumor, based on its size and extent, and based on evidence such as physical examination, imaging, and/or biopsy."
* hasMember[tnmPrimaryTumorCategory] ^comment = "When using this element, the Observation must validate against the specified profile."
* hasMember[tnmRegionalNodesCategory] only Reference(TNMRegionalNodesCategory)
* hasMember[tnmRegionalNodesCategory] ^short = "TNM  Regional Nodes Category"
* hasMember[tnmRegionalNodesCategory] ^definition = "Category of the presence or absence of metastases in regional lymph nodes, based on evidence such as physical examination, imaging, and/or biopsy."
* hasMember[tnmRegionalNodesCategory] ^comment = "When using this element, the Observation must validate against the specified profile."
* hasMember[tnmDistantMetastasesCategory] only Reference(TNMDistantMetastasesCategory)
* hasMember[tnmDistantMetastasesCategory] ^short = "TNM  Distant Metastases Category"
* hasMember[tnmDistantMetastasesCategory] ^definition = "Category describing the presence or absence of metastases in remote anatomical locations, based on evidence such as physical examination, imaging, and/or biopsy."
* hasMember[tnmDistantMetastasesCategory] ^comment = "When using this element, the Observation must validate against the specified profile."
/*
* hasMember contains extraNodalExtension 0..1
* hasMember[extraNodalExtension] only Reference(ObservationEneI4rc)
* hasMember[extraNodalExtension] ^short = "Radiological Extra-nodal extension (rENE)"
* hasMember[extraNodalExtension] ^definition = "It describes the presence or absence of radiological signs of extracapsular extension, as defined in the AJCC 8th Ed"
* hasMember[extraNodalExtension] ^comment = "When using this element, the Observation must validate against the specified profile."
*/

Profile:  TNMPrimaryTumorCategory
Id: mcode-tnm-primary-tumor-category
Parent: Observation
Title: "Observation: TNM Primary Tumor Category"
Description: "Category of the primary tumor, based on its size and extent, based on evidence such as physical examination, imaging, and/or biopsy."
* insert CancerStageCommonRules
* insert NotUsed(hasMember)
* code from ObservationCodesPrimaryTumorVS (required)
* value[x] from TNM_T_CategoryVS (required)


Profile:  TNMRegionalNodesCategory
Id: mcode-tnm-regional-nodes-category
Parent: Observation
Title: "Observation: TNM Regional Nodes Category"
Description: "Category of the presence or absence of metastases in regional lymph nodes, based on evidence such as physical examination, imaging, and/or biopsy."
* insert CancerStageCommonRules
* insert NotUsed(hasMember)
* code from ObservationCodesRegionalNodesVS (required)
* value[x] from TNM_N_CategoryVS (required)


Profile:  TNMDistantMetastasesCategory
Id: mcode-tnm-distant-metastases-category
Parent: Observation
Title: "Observation: TNM Distant Metastases Category"
Description: "Category describing the extent of a tumor metastasis in remote anatomical locations, based on evidence such as physical examination, imaging, and/or biopsy."
* insert CancerStageCommonRules
* insert NotUsed(hasMember)
* code from ObservationCodesDistantMetastasesVS (required)
* value[x] from TNM_M_CategoryVS (preferred)
