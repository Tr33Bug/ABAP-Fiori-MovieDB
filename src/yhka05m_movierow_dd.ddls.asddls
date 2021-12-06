@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Data Definition Movierow'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
@Metadata.allowExtensions: true
@Search.searchable: true


define root view entity YHKA05M_Movierow_DD as select from yhka05m_movierow 
    association [0..*] to YHKA05M_Movie_DD as _RelMovies on $projection.MovierowUuid = _RelMovies.MovierowUuid
    
{
    key movierow_uuid as MovierowUuid,
    @Search.defaultSearchElement: true
    @Search.fuzzinessThreshold: 0.7
    movierow_title as MovierowTitle,
    movierow_description as MovierowDescription,
    --@ObjectModel.createEnabled: true
    --@ObjectModel.sapObjectNodeTypeReference: 'Property'
    _RelMovies
}
