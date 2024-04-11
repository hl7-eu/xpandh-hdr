Instance: SK-Organization-GP
InstanceOf: OrganizationXpandh
Usage: #example
Description: "Slovak general practitioner example"
* language = $bcp47#sk
* identifier[+].system = "https://ncez.mzcr.cz/standards/fhir/sid/ico"  // to be modified
* identifier[=].value = "27520536"
* type[+] = $fhir-org-type#prov "Poskytovatel zdravotnej starostlivosti"  // should be bound to http://hl7.org/fhir/R4/valueset-organization-type.html
* name = "MUDr. Pes Filipes, praktický lékař"
* telecom.system = #phone
* telecom.value = "+421 603 853 227"
* telecom.use = #work

* address[+].use = #work
* address[=].type = #both
* address[=].text = "Štefánikova 1, 890 01, Blava"
* address[=].line[+] = "Štefánikova 1"
* address[=].line.extension.url = $iso21090-ADXP-streetName
* address[=].line.extension.valueString = "Štefánikova"
* address[=].line.extension.url = $iso21090-ADXP-houseNumber
* address[=].line.extension.valueString = "1"
* address[=].city = "Blava"
* address[=].postalCode = "890 01"
* address[=].country = "SK"
