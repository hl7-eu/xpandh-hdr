Instance: SK-Practitioner-1
InstanceOf: PractitionerXpandh
Usage: #example
Description: "Zdravotnický pracovník id(NRZP)=123456789"
* identifier[+].system = "https://ncez.mzcr.cz/standards/fhir/sid/nrzp"
* identifier[=].value = "123456789"
//* identifier[+].system = "https://ncez.mzcr.cz/standards/fhir/sid/clk"
//* identifier[=].value = "4567891230"
* name.use = #usual
* name.prefix = "MUDr."
* name.family = "Josef"
* name.given = "Švejk"
* name.suffix = "PhD."
* gender = #male
* telecom.system = #phone
* telecom.value = "+420 603 853 227"
* telecom.use = #home
//* birthDate = "1965-05-11"
* address[+].use = #work
* address[=].type = #both
* address[=].text = "Rovná 11, 160 00, Praha 6"
* address[=].line[+] = "Rovná 12"
//* address[=].line[=].extension[Streetname].valueString = "Rovná"
//* address[=].line[+].extension[Housenumber].valueString = "11"
* address[=].line.extension.url = $iso21090-ADXP-streetName
* address[=].line.extension.valueString = "Rovná"
* address[=].line.extension.url = $iso21090-ADXP-houseNumber
* address[=].line.extension.valueString = "11"
* address[=].city = "Praha 6"
* address[=].postalCode = "160 00"
* address[=].country = "CZ"
//* communication = urn:ietf:bcp:47#cs
