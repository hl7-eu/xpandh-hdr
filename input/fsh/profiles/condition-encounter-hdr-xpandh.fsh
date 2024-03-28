Profile: ConditionEncounterHdrXpandh
Parent: ConditionHdrXpandh
Id: condition-encounter-hdr-xpandh
Title: "Condition for Xpandh Hospital Dischage Encounter"
Description: """This profile represents the constraint applied to the Condition in the scope of Xpandh hospital discharge encounter resource. Encounter conditions implements Diagnostic summary part of the eHN data model adding two additional categories: First category distingueshes conditions present at admission and acquired during hospital stay (POA, HAC, NA - Not applicable or unknown) while second category is used to indicate impact of the condition to the treatement during hospital stay (treated, untreated)."""

//* text 1..
//* category only $CodeableConcept-uv-ips
* category ^slicing.discriminator.type = #value
* category ^slicing.discriminator.path = "$this"
* category ^slicing.rules = #open
* category ^definition = """Slices per type of classificaton"""
* category contains poa 1..1
* category[poa] from HdrPOAIndicatorXpandhVS
* category contains treated 1..1
* category[treated] from HdrTreatedXpandhVS
  * ^short = "Treated or untreated condition"
  * ^definition = """Class of the problem (treated, other) in relation to the hospital encounter. Treated problems were treated or affected provisioning of care (diagnostics, therapy, nursing, monitoring) during the hospital encounter. At least one problem should be marked as Treated. Other problems are recorded only if they are important for continuity of care (after discharge)."""
//* code only $CodeableConcept-uv-ips
//* code from HdrConditionXpandhVS
