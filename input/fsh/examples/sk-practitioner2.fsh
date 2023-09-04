Instance: SK-Practitioner-2
InstanceOf: PractitionerXpandh
Usage: #example
Description: "SK Practitioner id=987654321"
* identifier[+].system = "https://ncez.mzcr.cz/standards/fhir/sid/nrzp"   // use DK identifier
* identifier[=].value = "987654321"
* name.use = #usual
* name.prefix = "MUDr."
* name.family = "Nagy"
* name.given = "Valérie"

* gender = #female
//* communication[+] = urn:ietf:bcp:47#sk
//* communication[+] = urn:ietf:bcp:47#en
