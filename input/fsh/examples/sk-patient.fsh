Instance: Mracena
InstanceOf: PatientXpandh
Usage: #example
Description: "Example of Slovak patient"
//* identifier[+].system = "https://ncez.mzcr.cz/standards/fhir/sid/rcis"  // change to SK specific
* identifier[+].system = "urn:oid:1.3.158.165387.100.10.53.9"  // Slovak birth number - confirm OID
* identifier[=].value = "7161264528"    // change to SK specific
* identifier[+].system = "https://ncez.mzcr.cz/standards/fhir/sid/rid"  // change to SK specific EHR identifier if applicable
* identifier[=].value = "456789123"     // change to SK specific
* name.use = #usual
* name.family = "Mrakomorová"
* name.given = "Mračena"
* telecom.system = #phone
* telecom.value = "+421 603 853 227"
* telecom.use = #home
* gender = #female
* birthDate = "1971-11-26"
* address[+].use = #home
* address[=].type = #physical
* address[=].text = "Hlavná ulica 156, Velké mesto"
* address[=].line[+] = "Hlavná ulica 156"
//* address[=].line[=].extension[Streetname].valueString = "Hlavná ulica 156"
//* address[=].line[+].extension[Housenumber].valueString = "156"
* address[=].line.extension.url = $iso21090-ADXP-streetName
* address[=].line.extension.valueString = "Hlavná ulica"
* address[=].line.extension.url = $iso21090-ADXP-houseNumber
* address[=].line.extension.valueString = "156"
* address[=].city = "Velké mesto"
* address[=].postalCode = "81101"
* address[=].country = "SK"

* contact[+].relationship.coding[+] = $v3-RoleCode#MTH "matka"
* contact[=].relationship.coding[+] = $v2-0131#N "príbuzný"
* contact[=].name.use = #usual
* contact[=].name.family = "Mrakomorová"
* contact[=].name.given[+] = "Biologická"
* contact[=].name.given[+] = "Matka"
* contact[=].telecom[+].use = #mobile
* contact[=].telecom[=].system = #phone
* contact[=].telecom[=].value = "+421 604 123 456"

* contact[+].relationship.coding[+] = $v3-RoleCode#FRND "priateľ/priateľka"
* contact[=].relationship.coding[+] = $v2-0131#C "Emergentný kontakt"
* contact[=].name.use = #usual
* contact[=].name.family = "Priateľková"
* contact[=].name.given[0] = "Alena"
* contact[=].telecom.system = #phone
* contact[=].telecom.value = "+421 601 111 111"
* contact[=].telecom.use = #home
* contact[=].address[+].use = #home
* contact[=].address[=].type = #physical
* contact[=].address[=].text = "Horná ulica 18, 123 45, Trenčín, Slovensko"
* contact[=].address[=].line[+] = "Horná ulica 18"
//* contact[=].address[=].line[=].extension[Streetname].valueString = "Horná ulica"
//* contact[=].address[=].line[+].extension[Housenumber].valueString = "18"
* address[=].line.extension.url = $iso21090-ADXP-streetName
* address[=].line.extension.valueString = "Horná ulica"
* address[=].line.extension.url = $iso21090-ADXP-houseNumber
* address[=].line.extension.valueString = "18"
* contact[=].address[=].city = "Trenčín"
* contact[=].address[=].postalCode = "123 45"
* contact[=].address[=].country = "SK"

//* communication.language = urn:ietf:bcp:47#sk
* communication[+].language = urn:ietf:bcp:47#sk
* communication[=].preferred = true
* communication[+].language = urn:ietf:bcp:47#en
* communication[+].language = urn:ietf:bcp:47#hu
* generalPractitioner.identifier.system = "https://ncez.mzcr.cz/standards/fhir/sid/nrzp"   // change to SK specific id system
* generalPractitioner.identifier.value = "123456789"
* generalPractitioner.display = "MUDr. Josef Švejk"