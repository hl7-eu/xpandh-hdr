Profile: OrganizationXpandh
Parent: http://hl7.org/fhir/uv/ips/StructureDefinition/Organization-uv-ips
Id: organization-expandh
Title: "Xpandh Organization Profile"
Description: "This profile sets minimum expectations for the Organization resource to searching for and fetching an Organization associated with a patient or provider to promote interoperability and adoption through common implementation.  It identifies which core elements, extensions, vocabularies, and value sets **SHALL** be present in the resource when using this profile."
* ^status = #active
* ^experimental = false
//* ^date = "2022-04-20"
//* . ^definition = "\\-"
//* . ^comment = "\\-"
//* . ^mustSupport = false
* telecom MS
* telecom.system MS
* telecom.value MS
* address MS
* address only AddressEu