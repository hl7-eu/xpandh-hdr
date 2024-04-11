Instance: SK-Organization-Hospital-Department-1
InstanceOf: OrganizationXpandh
Usage: #example
Description: "Example of Slovak hospital department"
* language = $bcp47#sk
* identifier[+].system = "https://ncez.mzcr.cz/standards/fhir/sid/ico"  // to be modified acording to SK
* identifier[=].value = "27520536"
//* identifier[+].system = "https://ncez.mzcr.cz/standards/fhir/sid/ico"  // to be modified acording to SK
//* identifier[=].value = "xxxxx"
* type[+] = $fhir-org-type#dept "Oddelenie nemocnice"  // should be bound to http://hl7.org/fhir/R4/valueset-organization-type.html
* name = "Nemocnica - oddělení chirurgie"
* telecom.system = #phone
* telecom.value = "+420 603 853 227"
* telecom.use = #work

* address[+].use = #work
* address[=].type = #both
* address[=].text = "Václavská 570, 537 01, Chrudim"
* address[=].line[+] = "Václavská 570"
* address[=].line.extension.url = $iso21090-ADXP-streetName
* address[=].line.extension.valueString = "Václavská"
* address[=].line.extension.url = $iso21090-ADXP-houseNumber
* address[=].line.extension.valueString = "570"
* address[=].city = "Chrudim"
* address[=].postalCode = "537 01"
* address[=].country = "CZ"
* partOf = Reference(Organization/SK-Organization-Hospital)