Profile: ConditionEncounterHdrXpandh
Parent: ConditionHdrXpandh
Id: condition-encounter-hdr-xpandh
Title: "Condition Xpandh Hospital Dischage Encounter"
Description: """This profile represents the constraint applied to the Condition in the scope of Xpandh hospital discharge encounter resource. Encounter conditions implements Diagnostic summary part of the eHN data model adding two additional categories: First category distingueshes conditions present at admission and acquired during hospital stay (POA, HAC, NA - Not applicable or unknown) while second category is used to indicate impact of the condition to the treatement during hospital stay (treated, untreated)."""

* category
  * ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "$this"
  * ^slicing.rules = #open
  * ^definition = """Slices per type of classificaton"""
  * ^short = "category codes"
* category contains hdr-core 1..1
* category[hdr-core] = $condition-category#encounter-diagnosis
  * ^short = "encounter-diagnosis"
* category contains poa 1..1
* category[poa] from HdrPOAIndicatorXpandhVS
  * ^short = "POA, HAC, NA"
  * ^definition = "Present on admission, Hospital acquired condition, Not applicable or unknown"
* category contains treated 1..1
* category[treated] from HdrTreatedXpandhVS
  * ^short = "Treated or untreated"
  * ^definition = """Class of the problem (treated, other) in relation to the hospital encounter. Treated problems were treated or affected provisioning of care (diagnostics, therapy, nursing, monitoring) during the hospital encounter. At least one problem should be marked as Treated. Other problems are recorded only if they are important for continuity of care (after discharge)."""
