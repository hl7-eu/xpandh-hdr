
Profile: ServiceRequestHdrXpandh
Parent: ServiceRequest
Id: serviceRequest-hdr-eu-xpandh
Title: "ServiceRequest: Encounter Request"
Description: "ServiceRequest used to represent a the request that triggered this HDR for the scope of the XpanDH project. Thsi is also used to link the HDR witht the payer"

// Clarify if the payer data shoudl go into a dedicated section
* . ^short = "Encounter Request"
* . ^definition = "Encounter Request"
// add binding for category and code
* identifier 0..
/* * category 1..  */
* code 1..
* subject 1..
* subject only Reference ( PatientXpandh)
* requisition ^short = "Composite Request ID." 
* specimen 0..
* insurance only Reference (CoverageHdrXpandh)
* authoredOn ^short = "When the order was placed"