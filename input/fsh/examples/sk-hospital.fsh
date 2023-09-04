Instance: SK-Organization-Hospital
InstanceOf: OrganizationCareProviderXpandh
Usage: #example
Description: "Slovak hospital - example of a health provider organization"
* language = $bcp47#sk
* identifier[+].system = "https://ncez.mzcr.cz/standards/fhir/sid/ico"  // to be modified
* identifier[=].value = "27520536"
* type[+] = $fhir-org-type#prov "Poskytovatel zdravotnej starostlivosti"  // should be bound to http://hl7.org/fhir/R4/valueset-organization-type.html
* name = "Mestská Nemocnica Kubín"
* telecom.system = #phone
* telecom.value = "+421 603 853 227"
* telecom.use = #work

* address[+].use = #work
* address[=].type = #both
* address[=].text = "Centrálny rynok 570, 888 01, Kubín"
* address[=].line[+] = "Centrálny rynok 570"
* address[=].line.extension.url = $iso21090-ADXP-streetName
* address[=].line.extension.valueString = "Centrálny rynok"
* address[=].line.extension.url = $iso21090-ADXP-houseNumber
* address[=].line.extension.valueString = "570"
* address[=].city = "Kubín"
* address[=].postalCode = "888 01"
* address[=].country = "SK"
