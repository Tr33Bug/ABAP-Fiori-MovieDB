@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Data Definition Director'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
@Metadata.allowExtensions: true
@Search.searchable: true
define root view entity YHKA05M_Director_DD as select from yhka05m_director {
    key director_uuid as DirectorUuid,
    @Search.defaultSearchElement: true
    @Search.fuzzinessThreshold: 0.7
    director_name as DirectorName,
    @Semantics.fiscal.year: true
    @Search.defaultSearchElement: true
    director_age as DirectorAge
}
