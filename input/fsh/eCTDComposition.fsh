Profile: CMCeCTDDocument32P10
Parent: Bundle
Id: cmc-ectd-document-32p10
Title: "CMC eCTD 32P10 Document"
Description: "Definition for a document bundle with the CMC eCTD 32P10 profiles."

* . ^short = "CMC eCTD 32P10 Bundle"
* . obeys cmc-first-resource
* identifier 0..1 MS
* type MS
* type = #document (exactly)
* type ^short = "document"
* timestamp 1..1 MS
* entry 1..* MS
* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #closed
* entry contains
    Composition 1..1 and
    MedicinalProductDefinition 1..1 and
    MedicinalProductContainer 1..1 and
    ManufacturedItemDefinition 1..1 and
    Ingredient 1..* and
    SubstanceDefinition 1..* and
    Organization 1..1 and
    OrganizationMfg 1..* and
    DocumentReference 0..*
* entry[Composition].fullUrl 1..1
* entry[Composition].resource 1..1
* entry[Composition].resource only ectd-composition-32P10
* entry[MedicinalProductDefinition].fullUrl 1..1
* entry[MedicinalProductDefinition].resource 1..1
* entry[MedicinalProductDefinition].resource only pqcmc-drug-product-description
* entry[MedicinalProductDefinition].resource.meta.profile 1..1 MS
* entry[MedicinalProductContainer].fullUrl 1..1
* entry[MedicinalProductContainer].resource 1..1
* entry[MedicinalProductContainer].resource only pqcmc-drugproduct-container-closure
* entry[MedicinalProductContainer].resource.meta.profile 1..1 MS
* entry[ManufacturedItemDefinition].fullUrl 1..1
* entry[ManufacturedItemDefinition].resource 1..1
* entry[ManufacturedItemDefinition].resource only pqcmc-product-part
* entry[ManufacturedItemDefinition].resource.meta.profile 1..1 MS
* entry[Ingredient].fullUrl 1..1
* entry[Ingredient].resource 1..1
* entry[Ingredient].resource only pqcmc-component
* entry[Ingredient].resource.meta.profile 1..1 MS
* entry[SubstanceDefinition].fullUrl 1..1
* entry[SubstanceDefinition].resource 1..1
* entry[SubstanceDefinition].resource only pqcmc-component-substance
* entry[SubstanceDefinition].resource.meta.profile 1..1 MS
* entry[Organization].fullUrl 1..1
* entry[Organization].resource 1..1
* entry[Organization].resource only cmc-sponsor-organization
* entry[OrganizationMfg].fullUrl 1..1
* entry[OrganizationMfg].resource 1..1
* entry[OrganizationMfg].resource only mfg-test-site-organization
* entry[DocumentReference].fullUrl 1..1
* entry[DocumentReference].resource 1..1
* entry[DocumentReference].resource only Base64DocumentReference
* entry[DocumentReference].resource.meta.profile 1..1 MS

Profile: CMCeCTDDocument32P32
Parent: Bundle
Id: cmc-ectd-document-32p32
Title: "CMC eCTD 32P32 Document"
Description: "Definition for a document bundle with the CMC eCTD 32P32 profiles."
* . ^short = "CMC eCTD 32P32 Bundle"
* . obeys cmc-first-resource
* identifier 0..1 MS
* type MS
* type = #document (exactly)
* type ^short = "document"
* timestamp 1..1 MS
* entry
* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #closed
* entry ^slicing.description = "The specific bundle entries that are needed for a Product Batch Formula document."
* entry contains
    Composition 1..1 and
    MedicinalProductDefinition 1..1 and
    ManufacturedItemDefinition 1..1 and
    Organization 1..1 and
    OrganizationMfg 1..* and
    Ingredient 1..* and
    SubstanceDefinition 1..*
* entry[Composition].fullUrl MS
* entry[Composition].resource MS
* entry[Composition].resource only ectd-composition-32p32
* entry[MedicinalProductDefinition].fullUrl MS
* entry[MedicinalProductDefinition].resource MS
* entry[MedicinalProductDefinition].resource only BatchFormulaMedicinalProduct
* entry[MedicinalProductDefinition].resource.meta.profile 1..1 MS
* entry[ManufacturedItemDefinition].fullUrl MS
* entry[ManufacturedItemDefinition].resource MS
* entry[ManufacturedItemDefinition].resource only BatchFormula
* entry[ManufacturedItemDefinition].resource.meta.profile 1..1 MS
* entry[Organization].fullUrl 1..1
* entry[Organization].resource 1..1
* entry[Organization].resource only cmc-sponsor-organization
* entry[OrganizationMfg].fullUrl 1..1
* entry[OrganizationMfg].resource 1..1
* entry[OrganizationMfg].resource only mfg-test-site-organization
* entry[Ingredient].fullUrl MS
* entry[Ingredient].resource MS
* entry[Ingredient].resource only DrugProductIngredient
* entry[Ingredient].resource.meta.profile 1..1 MS
* entry[SubstanceDefinition].fullUrl MS
* entry[SubstanceDefinition].resource MS
* entry[SubstanceDefinition].resource only RoutineSubstanceDefinition
* entry[SubstanceDefinition].resource.meta.profile 1..1 MS

Profile: CMCeCTDDocument32S10
Parent: Bundle
Id: cmc-ectd-document-32s10
Title: "CMC eCTD 32S10 Document"
Description: "Definition for a document bundle with the CMC eCTD 32S10 profiles."
* . ^short = "CMC eCTD 32S10 Bundle"
* . obeys cmc-first-resource
* identifier 0..1 MS
* type MS
* type = #document (exactly)
* type ^short = "document"
* timestamp 1..1 MS
* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry ^slicing.description = "The specific bundle entries that are needed for a Drug Substance general inforamion document."
* entry contains
    Composition 1..1 and
    Nomenclature 1..1 and
    MolecularStructure 1..1 and
    Polymorph 1..* and
    Organization 1..* and
    DocumentReference 0..*
* entry[Composition].fullUrl MS
* entry[Composition].resource MS
* entry[Composition].resource only EctdComposition32S10
* entry[Nomenclature].fullUrl MS
* entry[Nomenclature].resource MS
* entry[Nomenclature].resource only DrugSubstanceNomenclature
* entry[Nomenclature].resource.meta.profile 1..1 MS
* entry[MolecularStructure].fullUrl MS
* entry[MolecularStructure].resource MS
* entry[MolecularStructure].resource only DrugSubstanceMolecularStructure 
* entry[MolecularStructure].resource.meta.profile 1..1 MS
* entry[Polymorph].fullUrl MS
* entry[Polymorph].resource MS
* entry[Polymorph].resource only PolymorphicForm
* entry[Polymorph].resource.meta.profile 1..1 MS
* entry[Organization].fullUrl MS
* entry[Organization].resource MS
* entry[Organization].resource only cmc-sponsor-organization
* entry[Organization].resource.meta.profile 1..1 MS
* entry[DocumentReference].fullUrl MS
* entry[DocumentReference].resource MS
* entry[DocumentReference].resource only Base64DocumentReference
* entry[DocumentReference].resource.meta.profile 1..1 MS

Profile: CMCeCTDDocument32S30
Parent: Bundle
Id: cmc-ectd-document-32s30
Title: "CMC eCTD 32S30 Document"
Description: "Definition for a document bundle with the CMC eCTD 32S30 profiles."
* . ^short = "CMC eCTD 32S30 Bundle"
* . obeys cmc-first-resource
* identifier 0..1 MS
* type MS
* type = #document (exactly)
* type ^short = "document"
* timestamp 1..1 MS

* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry ^slicing.description = "The specific bundle entries that are needed for a Substance Characterization document."
* entry contains
    Composition 1..1 and
    SubstanceDefinition 1..* and
    Organization 1..* and
    DocumentReference 0..*
* entry[Composition].fullUrl MS
* entry[Composition].resource MS
* entry[Composition].resource only EctdComposition32S30
* entry[Composition].resource.meta.profile 1..1 MS
* entry[SubstanceDefinition].fullUrl MS
* entry[SubstanceDefinition].resource MS
* entry[SubstanceDefinition].resource only DrugSubstance
* entry[SubstanceDefinition].resource.meta.profile 1..1 MS
* entry[Organization].fullUrl MS
* entry[Organization].resource MS
* entry[Organization].resource only cmc-sponsor-organization
* entry[Organization].resource.meta.profile 1..1 MS
* entry[DocumentReference].fullUrl MS
* entry[DocumentReference].resource MS
* entry[DocumentReference].resource only Base64DocumentReference
* entry[DocumentReference].resource.meta.profile 1..1 MS

Profile: CMCeCTDDocument32S23
Parent: Bundle
Id: cmc-ectd-document-32s23
Title: "CMC eCTD 32S23 Document"
Description: "Definition for a document bundle with the CMC eCTD 32S23 profiles."
* . ^short = "CMC eCTD 32S23 Bundle"
* . obeys cmc-first-resource
* identifier 0..1 MS
* type MS
* type = #document (exactly)
* type ^short = "document"
* timestamp 1..1 MS

* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry ^slicing.description = "The specific bundle entries that are needed for a Substance Control of Materials Composition document."
* entry contains
    Composition 1..1 and
    SubstanceDefinition 1..* and
    Organization 1..1 and
    OrganizationMfg 1..* and
    PlanDefinition 0..*
* entry[Composition].fullUrl MS
* entry[Composition].resource MS
* entry[Composition].resource only EctdComposition32S23
* entry[SubstanceDefinition].fullUrl MS
* entry[SubstanceDefinition].resource MS
* entry[SubstanceDefinition].resource only ExcipientRaw
* entry[SubstanceDefinition].resource.meta.profile 1..1 MS
* entry[Organization].fullUrl 1..1
* entry[Organization].resource 1..1
* entry[Organization].resource only cmc-sponsor-organization
* entry[OrganizationMfg].fullUrl 1..1
* entry[OrganizationMfg].resource 1..1
* entry[OrganizationMfg].resource only mfg-test-site-organization
* entry[PlanDefinition].fullUrl MS
* entry[PlanDefinition].resource MS
* entry[PlanDefinition].resource only QualitySpecification
* entry[PlanDefinition].resource.meta.profile 1..1 MS

Profile: CMCeCTDDocument32P55
Parent: Bundle
Id: cmc-ectd-document-32p55
Title: "CMC eCTD 32P55 Document"
Description: "Definition for a document bundle with the CMC eCTD 32P55 profile."
* . ^short = "CMC eCTD 32P55 Bundle"
* . obeys cmc-first-resource
* identifier 0..1 MS
* type MS
* type = #document (exactly)
* type ^short = "document"
* timestamp 1..1 MS
* entry 1..* MS
* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #closed
* entry ^slicing.rules = #open
* entry ^slicing.description = "The specific bundle entries that are needed for a Product Characterization of Impurities Composition document."
* entry contains
    Composition 1..1 and
    MedicinalProductDefinition 1..1 and
    SubstanceDefinition 1..* and
    Organization 1..1 and
    OrganizationMfg 1..* and
    DocumentReference 0..*
* entry[Composition].fullUrl 1..1
* entry[Composition].resource 1..1
* entry[Composition].resource only ectd-composition-32p55
* entry[MedicinalProductDefinition].fullUrl 1..1
* entry[MedicinalProductDefinition].resource 1..1
* entry[MedicinalProductDefinition].resource only pqcmc-drug-product-with-impurities
* entry[MedicinalProductDefinition].resource.meta.profile 1..1 MS
* entry[SubstanceDefinition].fullUrl 1..1
* entry[SubstanceDefinition].resource 1..1
* entry[SubstanceDefinition].resource only pqcmc-drug-product-substance-impurity
* entry[SubstanceDefinition].resource.meta.profile 1..1 MS
* entry[Organization].fullUrl 1..1
* entry[Organization].resource 1..1
* entry[Organization].resource only cmc-sponsor-organization
* entry[OrganizationMfg].fullUrl 1..1
* entry[OrganizationMfg].resource 1..1
* entry[OrganizationMfg].resource only mfg-test-site-organization
* entry[DocumentReference].fullUrl 1..1
* entry[DocumentReference].resource 1..1
* entry[DocumentReference].resource only Base64DocumentReference
* entry[DocumentReference].resource.meta.profile 1..1 MS

Profile: CMCeCTDDocument32S60
Parent: Bundle
Id: cmc-ectd-document-32s60
Title: "CMC eCTD 32S60 Document"
Description: "Definition for a document bundle with the CMC eCTD 32S60 profiles."
* . ^short = "CMC eCTD 32S60 Bundle"
* . obeys cmc-first-resource
* identifier 0..1 MS
* type MS
* type = #document (exactly)
* type ^short = "document"
* timestamp 1..1 MS

* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry ^slicing.description = "The specific bundle entries that are needed for a Drug Substance Container Closure System document."
* entry contains
    Composition 1..1 and
    SubstanceDefinition 1..1 and
    Organization 1..1 
* entry[Composition].fullUrl MS
* entry[Composition].resource MS
* entry[Composition].resource only EctdComposition32S60
* entry[SubstanceDefinition].fullUrl MS
* entry[SubstanceDefinition].resource MS
* entry[SubstanceDefinition].resource only pqcmc-drug-substance-container-closure
* entry[SubstanceDefinition].resource.meta.profile 1..1 MS
* entry[Organization].fullUrl MS
* entry[Organization].resource MS
* entry[Organization].resource only cmc-sponsor-organization
* entry[Organization].resource.meta.profile 1..1 MS

Profile: CMCeCTDDocument32P70
Parent: Bundle
Id: cmc-ectd-document-32p70
Title: "CMC eCTD 32P70 Document"
Description: "Definition for a document bundle with the CMC eCTD 32P70 profiles."
* . ^short = "CMC eCTD 32P70 Bundle"
* . obeys cmc-first-resource
* identifier 0..1 MS
* type MS
* type = #document (exactly)
* type ^short = "document"
* timestamp 1..1 MS
* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry ^slicing.description = "The specific bundle entries that are needed for a Container Closure System document.  Note this bundle and associated profiles is expected to change substantialy in the future."
* entry contains
    Composition 1..1 and
    MedicinalProductDefinition 1..1 and
    Organization 1..1 
* entry[Composition].fullUrl MS
* entry[Composition].resource MS
* entry[Composition].resource only EctdComposition32P70
* entry[MedicinalProductDefinition].fullUrl MS
* entry[MedicinalProductDefinition].resource MS
* entry[MedicinalProductDefinition].resource only pqcmc-drugproduct-container-closure
* entry[MedicinalProductDefinition].resource.meta.profile 1..1 MS
* entry[Organization].fullUrl MS
* entry[Organization].resource MS
* entry[Organization].resource only cmc-sponsor-organization
* entry[Organization].resource.meta.profile 1..1 MS

Profile: CMCeCTDDocumentSP4151
Parent: Bundle
Id: cmc-ectd-document-sp4151
Title: "CMC eCTD SP4151 Document"
Description: "Definition for a document bundle with the CMC eCTD SP4151 profiles."
* . ^short = "CMC eCTD SP4151 Bundle"
* . obeys cmc-first-resource
* identifier 0..1 MS
* type MS
* type = #document (exactly)
* type ^short = "document"
* timestamp 1..1 MS
* entry 1..* MS
* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #closed
* entry ^slicing.description = "The specific bundle entries that are needed for a Quality Specification document."
* entry contains
    Composition 1..1 and
    PlanDefinition 1..1 and
    MedicinalProductDefinition 0..1 and
    SubstanceDefinition 0..1 and
    Excipient 0..1 and
    Organization 1..1 and
    OrganizationMfg 1..*
* entry[Composition].fullUrl 1..1
* entry[Composition].resource 1..1
* entry[Composition].resource only ectd-composition-sp4151
* entry[PlanDefinition].fullUrl 1..1
* entry[PlanDefinition].resource 1..1
* entry[PlanDefinition].resource only pqcmc-quality-specification
* entry[PlanDefinition].resource.meta.profile 1..1 MS
* entry[MedicinalProductDefinition].fullUrl 1..1
* entry[MedicinalProductDefinition].resource 1..1
* entry[MedicinalProductDefinition].resource only pqcmc-routine-drug-product
* entry[MedicinalProductDefinition].resource.meta.profile 1..1 MS
* entry[SubstanceDefinition].fullUrl 1..1
* entry[SubstanceDefinition].resource 1..1
* entry[SubstanceDefinition].resource only pqcmc-routine-drug-substance
* entry[SubstanceDefinition].resource.meta.profile 1..1 MS
* entry[Excipient].fullUrl 1..1
* entry[Excipient].resource 1..1
* entry[Excipient].resource only pqcmc-excipient
* entry[Excipient].resource.meta.profile 1..1 MS
* entry[Organization].fullUrl 1..1
* entry[Organization].resource 1..1
* entry[Organization].resource only cmc-sponsor-organization
* entry[OrganizationMfg].fullUrl 1..1
* entry[OrganizationMfg].resource 1..1
* entry[OrganizationMfg].resource only mfg-test-site-organization

Profile: CMCeCTDDocumentSP4454
Parent: Bundle
Id: cmc-ectd-document-sp4454
Title: "CMC eCTD SP4454 Document"
Description: "Definition for a document bundle with the CMC eCTD SP4454 profiles."
* . ^short = "CMC eCTD SP4454 Bundle"
* . obeys cmc-first-resource
* identifier 0..1 MS
* type MS
* type = #document (exactly)
* type ^short = "document"
* timestamp 1..1 MS
* entry 1..* MS
* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #closed
* entry ^slicing.description = "The specific bundle entries that are needed for a batch analysis document."
* entry contains
    Composition 1..1 and
    DiagnosticReport 1..1 and
    Medication 1..1 and
    Substance 1..1 and
    Organization 1..1 and
    OrganizationMfg 1..* and
    Observation 1..* and
    ObservationPlus 1..*
* entry[Composition].fullUrl 1..1
* entry[Composition].resource 1..1
* entry[Composition].resource only ectd-composition-sp4454
* entry[DiagnosticReport].fullUrl 1..1
* entry[DiagnosticReport].resource 1..1
* entry[DiagnosticReport].resource only pqcmc-batch-analysis
* entry[DiagnosticReport].resource.meta.profile 1..1 MS
* entry[Medication].fullUrl 1..1
* entry[Medication].resource 1..1
* entry[Medication].resource only pqcmc-drug-product-instance
* entry[Medication]..resource.meta.profile 1..1 MS
* entry[Substance].fullUrl 1..1
* entry[Substance].resource 1..1
* entry[Substance].resource only pqcmc-drug-substance-batch
* entry[Substance].resource.meta.profile 1..1 MS
* entry[Organization].fullUrl 1..1
* entry[Organization].resource 1..1
* entry[Organization].resource only cmc-sponsor-organization
* entry[OrganizationMfg].fullUrl 1..1
* entry[OrganizationMfg].resource 1..1
* entry[OrganizationMfg].resource only mfg-test-site-organization
* entry[Observation].fullUrl 1..1
* entry[Observation].resource 1..1
* entry[Observation].resource only pq-result-observation
* entry[Observation].resource.meta.profile 1..1 MS
* entry[ObservationPlus].fullUrl 1..1
* entry[ObservationPlus].resource 1..1
* entry[ObservationPlus].resource only pq-additional-stage-result-observation
* entry[ObservationPlus].resource.meta.profile 1..1 MS

Profile: CMCeCTDDocumentSP7383
Parent: Bundle
Id: cmc-ectd-document-sp7383
Title: "CMC eCTD SP7383 Document"
Description: "Definition for a document bundle with the CMC eCTD SP7383 profiles."
* . ^short = "CMC eCTD SP7383 Bundle"
* . obeys cmc-first-resource
* identifier 0..1 MS
* type MS
* type = #document (exactly)
* type ^short = "document"
* timestamp 1..1 MS
* entry 1..* MS
* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #closed
* entry ^slicing.description = "The specific bundle entries that are needed for a stability report document."
* entry contains
    Composition 1..1 and
    ResearchStudy 1..* and
    ResearchSubStudy 1..* and
    BatchAnalysis 1..1 and
    Medication 1..1 and
    Substance 1..1 and
    Organization 1..1 and
    OrganizationMfg 1..* and  
    Observation 1..* and
    ObservationPlus 1..*
* entry[Composition].fullUrl 1..1
* entry[Composition].resource 1..1
* entry[Composition].resource only ectd-composition-sp7383
* entry[ResearchStudy].fullUrl 1..1
* entry[ResearchStudy].resource 1..1
* entry[ResearchStudy].resource only pqcmc-stability-study-interval-report
* entry[ResearchStudy].resource.meta.profile 1..1 MS
* entry[ResearchSubStudy].fullUrl 1..1
* entry[ResearchSubStudy].resource 1..1
* entry[ResearchSubStudy].resource only pq-stability-sub-study
* entry[ResearchSubStudy].resource.meta.profile 1..1 MS
* entry[BatchAnalysis].fullUrl 1..1
* entry[BatchAnalysis].resource 1..1
* entry[BatchAnalysis].resource only pqcmc-batch-analysis
* entry[BatchAnalysis].resource.meta.profile 1..1 MS
* entry[Medication].fullUrl 1..1
* entry[Medication].resource 1..1
* entry[Medication].resource only pqcmc-drug-product-instance
* entry[Medication].resource.meta.profile 1..1 MS
* entry[Substance].fullUrl 1..1
* entry[Substance].resource 1..1
* entry[Substance].resource only pqcmc-drug-substance-batch
* entry[Substance].resource.meta.profile 1..1 MS
* entry[Organization].fullUrl 1..1
* entry[Organization].resource 1..1
* entry[Organization].resource only cmc-sponsor-organization
* entry[OrganizationMfg].fullUrl 1..1
* entry[OrganizationMfg].resource 1..1
* entry[OrganizationMfg].resource only mfg-test-site-organization
* entry[Observation].fullUrl 1..1
* entry[Observation].resource 1..1
* entry[Observation].resource only pq-result-observation
* entry[Observation].resource.meta.profile 1..1 MS
* entry[ObservationPlus].fullUrl 1..1
* entry[ObservationPlus].resource 1..1
* entry[ObservationPlus].resource only pq-additional-stage-result-observation
* entry[ObservationPlus].resource.meta.profile 1..1 MS

Profile: CMCeCTDDocumentSP7181
Parent: Bundle
Id: cmc-ectd-document-sp7181
Title: "CMC eCTD SP7181 Document"
Description: "Definition for a document bundle with the CMC eCTD SP7181 profiles."
* . ^short = "CMC eCTD SP7181 Bundle"
* . obeys cmc-first-resource
* identifier 0..1 MS
* type MS
* type = #document (exactly)
* type ^short = "document"
* timestamp 1..1 MS
* entry 1..* MS
* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #closed
* entry ^slicing.description = "The specific bundle entries that are needed for a Stability Summary document."
* entry contains
    Composition 1..1 and
    PlanDefinition 1..1 and
    MedicinalProductDefinition 0..1 and
    SubstanceDefinition 0..1 and
    Organization 1..1 and
    OrganizationMfg 1..*
* entry[Composition].fullUrl 1..1
* entry[Composition].resource 1..1
* entry[Composition].resource only ectd-composition-sp7181
* entry[PlanDefinition].fullUrl 1..1
* entry[PlanDefinition].resource 1..1
* entry[PlanDefinition].resource only pqcmc-stability-summary
* entry[PlanDefinition].resource.meta.profile 1..1 MS
* entry[MedicinalProductDefinition].fullUrl 1..1
* entry[MedicinalProductDefinition].resource 1..1
* entry[MedicinalProductDefinition].resource only pqcmc-routine-drug-product
* entry[MedicinalProductDefinition].resource.meta.profile 1..1 MS
* entry[SubstanceDefinition].fullUrl 1..1
* entry[SubstanceDefinition].resource 1..1
* entry[SubstanceDefinition].resource only pqcmc-routine-drug-substance
* entry[SubstanceDefinition].resource.meta.profile 1..1 MS
* entry[Organization].fullUrl 1..1
* entry[Organization].resource 1..1
* entry[Organization].resource only cmc-sponsor-organization
* entry[OrganizationMfg].fullUrl 1..1
* entry[OrganizationMfg].resource 1..1
* entry[OrganizationMfg].resource only mfg-test-site-organization

/*Compositions---------------------------------------------------------------------------------------*/

Profile: EctdCompositionSP4151
Parent: Composition
Id: ectd-composition-sp4151
Title: "eCTD Specification Composition"
Description: "The fields needed to represent the Quality Specifications to be included under the eCTD 3.2.P.5.1, 3.2.S.4.1, and 3.2.P.4.1 headings.. References Sponsor Organization and Quality Specification."

* . obeys cmc-ectd-doc-2
* status = #final
* identifier 0..1 MS
* type = pqcmc-comp-section-types#SP4151 "Quality Specification"
* author 1..1 MS
* author only Reference(SponsorOrganization)
* title 1..1 MS
* section obeys cmc-ectd-doc-2
* section 1..1 MS
* section.code 1..1 MS
* section.code from cmc-comp-section-types-vs (required)
* section.title 1..1 MS
/*
    SECTION SLICESProduct
*/
* section 1..1 MS
* section.entry MS
* section obeys cmc-ectd-doc-3
* section ^slicing.discriminator.type = #pattern
* section ^slicing.discriminator.path = "code"
* section ^slicing.rules = #closed
* section ^slicing.description = "There is only one section in the profile. The slice the code must correpond to the subject of the Quality Specification profile: RoutineDrugProduct or Routine Api or Excipient"
* section contains
    DrugProduct 0..1 MS and
    Api 0..1 MS and
    Excipient 0..1 MS
* section[DrugProduct] ^definition = "Product Specification to be included under the 3.2.P.5.1 eCTD heading."
* section[DrugProduct].code = pqcmc-comp-section-types#32P51 "Product Specification"
* section[DrugProduct].title 1..1 MS
* section[DrugProduct].entry 1..1 MS
* section[DrugProduct].entry only Reference(QualitySpecification)
* section[Api] ^definition = "Drug Substance Specification to be included under the 3.2.S.4.1 eCTD heading."
* section[Api].code = pqcmc-comp-section-types#32S41 "Substance Specification"
* section[Api].title 1..1 MS
* section[Api].entry 1..1 MS
* section[Api].entry only Reference(QualitySpecification)
* section[Excipient] ^definition = "Excipient Specification to be included under the 3.2.P.4.1 eCTD heading."
* section[Excipient].code = pqcmc-comp-section-types#32P41 "Excipients Specification"
* section[Excipient].title 1..1 MS
* section[Excipient].entry 1..1 MS
* section[Excipient].entry only Reference(QualitySpecification)
// need check that Specification type in instance matches the seciton selected.

Profile: EctdCompositionSP7383
Parent: Composition
Id: ectd-composition-sp7383
Title: "eCTD Stability Data Composition"
Description: "The fields needed to represent the Stability Data to be included under the 3.2.P.8.3 , 3.2.S.7.3 and 3.2.P.4.5 eCTD headings. References Sponsor Organization and Stability Study."

* status = #final
* identifier 0..1 MS
* type = pqcmc-comp-section-types#SP7383 "Stability Data"
* author 1..1 MS
* author only Reference(SponsorOrganization)
/*
    SECTION SLICES
*/
* section 1.. MS
* section obeys cmc-ectd-doc-2
* section.entry MS
* section ^slicing.discriminator.type = #pattern
* section ^slicing.discriminator.path = "code"
* section ^slicing.rules = #closed
* section ^slicing.description = "Slice based on the different sections that are needed in an ectd document. The code must correpond to the subject of the Stability Data profile: RoutineDrugProduct or Routine Api"
* section contains
    DrugProduct 0..1 MS and
    Api 0..1 MS
* section[DrugProduct] ^definition = "Product Stability Data to be included under the 3.2.P.8.3 eCTD heading."
* section[DrugProduct].code = pqcmc-comp-section-types#32P83 "Product Stability Data"
* section[DrugProduct].title 1..1 MS
* section[DrugProduct].entry 1..1 MS
* section[DrugProduct].entry only Reference(StabilityStudy)
* section[Api] ^definition = "Drug Substance Stability Data to be included under the 3.2.S.7.3 eCTD heading."
* section[Api].code = pqcmc-comp-section-types#32S73 "Substance Stability Data"
* section[Api].title 1..1 MS
* section[Api].entry 1..1 MS
* section[Api].entry only Reference(StabilityStudy)
// need check that subject type in instance matches the seciton selected.

Profile: EctdCompositionSP4454
Parent: Composition
Id: ectd-composition-sp4454
Title: "eCTD Batch Analyses Composition"
Description: "The fields needed to represent the Batch Analyses to be included under the 3.2.P.5.4 and 3.2.S.4.4 eCTD headings.  References Sponsor Organization and Batch Analysis"

* status = #final
* identifier 0..1 MS
* type = pqcmc-comp-section-types#SP4454 "Batch Analyses"
* author 1..1 MS
* author only Reference(SponsorOrganization)
/*
    SECTION SLICES
*/
// need check that subject only Reference(DrugProductInstance or DrugSubstanceInstance) matches section selected.
* section 1.. MS
* section obeys cmc-ectd-doc-2
* section.entry MS
* section ^slicing.discriminator.type = #pattern
* section ^slicing.discriminator.path = "code"
* section ^slicing.rules = #closed
* section ^slicing.description = "Slice based on the different sections that are needed in the ectd document. The code must correpond to the subject of the Batch Analyses profile."
* section contains
    DrugProduct 0..1 MS and
    Api 0..1 MS
* section[DrugProduct] ^definition = "Product Batch Analyses to be included under the 3.2.P.5.4 eCTD heading."
* section[DrugProduct].code = pqcmc-comp-section-types#32P54 "Product Batch Analyses"
* section[DrugProduct].title 1..1 MS
* section[DrugProduct].entry 1..1 MS
* section[DrugProduct].entry only Reference(BatchAnalysis)
* section[Api] ^definition = "Substance Batch Analyses to be included under the 3.2.S.4.4 eCTD heading."
* section[Api].code = pqcmc-comp-section-types#32S44 "Substance Batch Analyses"
* section[Api].title 1..1 MS
* section[Api].entry 1..1 MS
* section[Api].entry only Reference(BatchAnalysis)
// need check that subject only Reference(DrugProductInstance or DrugSubstanceInstance) matches section selected.

Profile: EctdComposition32P32
Parent: Composition
Id: ectd-composition-32p32
Title: "eCTD Batch Formula"
Description: "The fields needed to represent the Product Batch Formula to be included under the eCTD.  References Sponsor Organization and Batch Formula"

* status = #final
* identifier 0..1 MS
* type = pqcmc-comp-section-types#32P32 "Product Batch Formula"
* author 1..1 MS
* author only Reference(SponsorOrganization)
/*
    SECTION SLICES - not requried - only one option
*/
* section 1..1 MS
* section obeys cmc-ectd-doc-2
* section.entry MS
* section ^definition = "Product Batch Formula to be included under the 3.2.P.3.2 eCTD heading."
* section.code = pqcmc-comp-section-types#32P32 "Product Batch Formula"
* section.title 1..1 MS
* section.entry only Reference(BatchFormulaMedicinalProduct)

Profile: EctdComposition32P55
Parent: Composition
Id: ectd-composition-32p55
Title: "eCTD Product Characterization of Impurities Composition"
Description: "The fields needed to represent the Product Characterization of Impurities in a to be included under the eCTD.  References Sponsor Organization and Product Characterization of Impurities"

* status = #final
* identifier 0..1 MS
* type = pqcmc-comp-section-types#32P55 "Product Characterization of Impurities"
* author 1..1 MS
* author only Reference(SponsorOrganization)
/*
    SECTION SLICES - not requried - only one option
*/
* section 1..1 MS
* section obeys cmc-ectd-doc-2
* section.entry MS
* section ^definition = "Product Characterization of Impurities to be included under the 3.2.P.5.5 eCTD heading."
* section.code = pqcmc-comp-section-types#32P55 "Product Characterization of Impurities"
* section.title 1..1 MS
* section.entry only Reference(DrugProductwithImpurities)

Profile: EctdComposition32P70
Parent: Composition
Id: ectd-composition-32p70
Title: "eCTD Product Container Closure System Composition"
Description: "The fields needed to represent the Product Container Closure Systems to be included under the eCTD p.7.0"

* . obeys cmc-ectd-doc-3
* status = #final
* identifier 0..1 MS
* type = pqcmc-comp-section-types#32P70 "Product Container Closure System"
* author 1..1 MS
* author only Reference(SponsorOrganization)
* title 1..1 MS
/*
    SECTION SLICES - not requried - only one option
*/
* section 1..1 MS
* section obeys cmc-ectd-doc-2
* section.entry MS
* section ^definition = "Product Container Closure System to be included under the 3.2.P.7.0 eCTD heading."
* section.code = pqcmc-comp-section-types#32P70 "Product Container Closure System"
* section.title 1..1 MS
* section.entry 1..1 MS
* section.entry only Reference(DrugProductContainerClosure)

Profile: EctdComposition32P10
Parent: Composition
Id: ectd-composition-32P10
Title: "eCTD Product Description and Composition"
Description: "The fields needed to represent the Product Description, Container Closure and Composition of the Drug Product to be included under the 3.2.P.1.0 heading of the eCTD. References Sponsor Organization, Drug Product Description, and Product Container Closure System."

* . obeys cmc-ectd-doc-3
* status = #final
* identifier 0..1 MS
* type = pqcmc-comp-section-types#32P10 "Product Description and Composition of the Drug Product"
* author 1..1 MS
* author only Reference(SponsorOrganization)
* title 1..1 MS
* section obeys cmc-ectd-doc-2
* section 3..3 MS
* section.code 1..1 MS
* section.code from cmc-comp-section-types-vs (required)
* section.title 1..1 MS
* section ^slicing.discriminator.type = #value
* section ^slicing.discriminator.path = "code"
* section ^slicing.rules = #open
* section ^slicing.description = "Slice based on the ectd document sections."
* section contains ProductDescription 1..1 MS and ContainerClosure 1..1 MS and ProductComposition 1..1 MS
* section[ProductDescription] ^definition = "Drug product description to be included under the 3.2.P.1.0 eCTD heading."
* section[ProductDescription].code = pqcmc-comp-section-types#32P11 "Product Description"
* section[ProductDescription].entry 1..1 MS
* section[ProductDescription].entry only Reference(DrugProductDescription)
* section[ContainerClosure] ^definition = "Product Container Closure System to be included under the 3.2.P.1.0 eCTD heading."
* section[ContainerClosure].code = pqcmc-comp-section-types#32P11 "Product Description"
* section[ContainerClosure].entry 1..1 MS
* section[ContainerClosure].entry only Reference(DrugProductContainerClosure)
* section[ProductComposition] ^definition = "Drug product components to be included under the 3.2.P.1.0 eCTD heading."
* section[ProductComposition].code = pqcmc-comp-section-types#32P12 "Product Composition"
* section[ProductComposition].entry 1..* MS
* section[ProductComposition].entry only Reference(FinishedProduct)

Profile: EctdComposition32S60
Parent: Composition
Id: ectd-composition-32s60
Title: "eCTD Substance Container Closure System Composition"
Description: "The fields needed to represent the Substance Container Closure Systems to be included under the eCTD 3.2.S.6.0 eCTD heading. References Sponsor Organization and Substance Container Closure"

* . obeys cmc-ectd-doc-3
* status = #final
* identifier 0..1 MS
* type = pqcmc-comp-section-types#32S60 "Substance Container Closure System"
* author 1..1 MS
* author only Reference(SponsorOrganization)
* title 1..1 MS
/*
    SECTION SLICES - not requried - only one option
*/
* section 1..1 MS
* section obeys cmc-ectd-doc-2
* section.entry MS
* section ^definition = "Substance Container Closure System to be included under the 3.2.S.6.0 eCTD heading."
* section.code = pqcmc-comp-section-types#32S60 "Substance Container Closure System"
* section.title 1..1 MS
* section.entry 1..1 MS
* section.entry only Reference(SubstanceContainerClosure)

Profile: EctdComposition32S10
Parent: Composition
Id: ectd-composition-32s10
Title: "eCTD Substance General Information"
Description: "The fields needed to represent the Substance Nomenclature and Structure to be included under the 3.2.S.1.0 heading of the eCTD. References Sponsor Organization."

* . obeys cmc-ectd-doc-3
* status = #final
* identifier 0..1 MS
* type = pqcmc-comp-section-types#32S10 "Substance General Information"
* author 1..1 MS
* author only Reference(SponsorOrganization)
* title 1..1 MS
/*
    SECTION SLICES
*/
* section 2..2 MS
* section obeys cmc-ectd-doc-2
* section.entry MS
* section ^slicing.discriminator.type = #profile
* section ^slicing.discriminator.path = "resource"
* section ^slicing.rules = #open
* section ^slicing.description = "Slice based on the different sections that are needed in this document."
* section contains SubstanceNomenclature 1..1 MS and SubstanceStructure 1..1 MS
* section[SubstanceNomenclature] ^definition = "Substance Nomenclature to be included under the 3.2.S.1.0 eCTD heading."
* section[SubstanceNomenclature].code = pqcmc-comp-section-types#32S11 "Substance Nomenclature"
* section[SubstanceNomenclature].title 1..1 MS
* section[SubstanceNomenclature].title obeys cmc-ectd-doc-2
* section[SubstanceNomenclature].entry 1..1 MS
* section[SubstanceNomenclature].entry only Reference(DrugSubstanceNomenclature)
* section[SubstanceStructure] ^definition = "Substance raw materials to be included under the 3.2.S.1.0 eCTD heading."
* section[SubstanceStructure].code = pqcmc-comp-section-types#32S12 "Substance Structure"
* section[SubstanceStructure].title 1..1 MS
* section[SubstanceStructure].title obeys cmc-ectd-doc-2
* section[SubstanceStructure].entry 1..1 MS
* section[SubstanceStructure].entry only Reference(DrugSubstanceMolecularStructure)

Profile: EctdComposition32S23
Parent: Composition
Id: ectd-composition-32s23
Title: "eCTD Substance Control of Materials Composition"
Description: "The fields needed to represent the Substance Control of Materials in a to be included under the eCTD. References Sponsor Organization and Drug Substance Materials."
 
* status = #final
* identifier 0..1 MS
* type = pqcmc-comp-section-types#32S23 "Substance Control of Materials"
* author 1..1 MS
* author only Reference(SponsorOrganization)
/*
    SECTION SLICES - not requried - only one option
*/
* section 1..* MS
* section obeys cmc-ectd-doc-2
* section.entry MS
* section ^definition = "Substance Control of Materials to be included under the 3.2.S.2.3 eCTD heading."
* section.code = pqcmc-comp-section-types#32S23 "Substance Control of Materials"
* section.title 1..1 MS
* section.entry 1..* MS
* section.entry only Reference(ExcipientRaw)

Profile: EctdComposition32S30
Parent: Composition
Id: ectd-composition-32s30
Title: "eCTD Substance Characterization"
Description: "The fields needed to represent the Substance Structure and Impurities to be included under the 3.2.S.3.0 heading of the eCTD. References Sponsor Organization, Drug Substance Structure, and Drug Substance Impurities"
* . obeys cmc-ectd-doc-2
* status = #final
* identifier 0..1 MS
* type = pqcmc-comp-section-types#32S30 "Substance Characterization"
* author 1..1 MS
* author only Reference(SponsorOrganization)
* title 1..1 MS

/*
    SECTION SLICES
*/
* section 1..* MS
* section.entry MS
* section obeys cmc-ectd-doc-3
* section ^slicing.discriminator.type = #value
* section ^slicing.discriminator.path = "code"
* section ^slicing.rules = #open
* section ^slicing.description = "Slice based on the different sections that are needed in an ectd document."
* section contains Structure 1..1 MS and Impurities 0..* MS
* section[Structure] ^definition = "Substance Characterization to be included under the 3.2.S.3.0 eCTD heading."
* section[Structure].code = pqcmc-comp-section-types#32S31 "Substance Elucidation of Structure and other Characteristics"
* section[Structure].title 1..1 MS
* section[Structure].entry 1..1 MS
* section[Structure].entry only Reference(DrugSubstance)

Profile: EctdCompositionSP7181
Parent: Composition
Id: ectd-composition-sp7181
Title: "eCTD Stability Summary and Conclusion Composition"
Description: "The fields needed to represent the Stability Summary and Conclusion to be included in the 3.2.P.8.3 and 3.2.S.7.3 eCTD headings. References Sponsor Organization and Stability Study."

* status = #final
* identifier 0..1 MS
/* do or on type code*/
* type = pqcmc-comp-section-types#SP7181 "Stability Summary and Conclusion"
* author 1..1 MS
* author only Reference(SponsorOrganization)
/*
    SECTION SLICES
*/
* section 1.. MS
* section obeys cmc-ectd-doc-2
* section.entry MS
* section ^slicing.discriminator.type = #pattern
* section ^slicing.discriminator.path = "code"
* section ^slicing.rules = #closed
* section ^slicing.description = "Slice based on the different sections that are needed in an ectd document. The code must correpond to the subject of the Stability Summary and Conclusion profile."
* section contains
    DrugProduct 0..1 MS and
    Api 0..1 MS
* section[DrugProduct] ^definition = "Product Stability Summary and Conclusion to be included under the 3.2.P.8.3 eCTD heading."
* section[DrugProduct].code = pqcmc-comp-section-types#32P83 "Product Stability Data"
* section[DrugProduct].title 1..1 MS
* section[DrugProduct].entry 2..2 MS
* section[DrugProduct].entry only Reference(StabilitySummary or RoutineDrugProduct)
* section[Api] ^definition = "Substance Stability Summary and Conclusion to be included under the 3.2.S.7.3 eCTD heading."
* section[Api].code = pqcmc-comp-section-types#32S73 "Substance Stability Data"
* section[Api].title 1..1 MS
* section[Api].entry 2..2 MS
* section[Api].entry only Reference(StabilitySummary or RoutineSubstanceDefinition)