Profile: ConditionHdrXpandh
Parent: Condition
Id: condition-hdr-xpandh
Title: "Condition for hospital dischage report profile"
Description: "This profile represents the constraint applied to the Condition in the scope of hospital discharge report guideline."

* text 1..
* code only $CodeableConcept-uv-ips
* code from HdrConditionXpandhVS
* category only $CodeableConcept-uv-ips
* category ^slicing.discriminator.type = #pattern
* category ^slicing.discriminator.path = "$this"
* category ^slicing.rules = #open
* category ^definition = """Slices per type of classificaton"""
* category contains poa 1..1
//* category[poa] only $CodeableConcept-uv-ips
* category[poa] from HdrPOAIndicatorXpandhVS
* category contains treated 1..1
* category[treated] from HdrTreatedXpandhVS
  * ^short = "Treated or untreated condition"
  * ^definition = """Class of the problem (treated, other) in relation to the hospital encounter. Treated problems were treated or affected provisioning of care (diagnostics, therapy, nursing, monitoring) during the hospital encounter. At least one problem should be marked as Treated. Other problems are recorded only if they are important for continuity of care (after discharge)."""