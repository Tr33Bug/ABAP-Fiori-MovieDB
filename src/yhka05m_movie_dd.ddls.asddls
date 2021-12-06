@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Movie'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #M,
    dataClass: #MIXED
}
@Metadata.allowExtensions: true
@Search.searchable: true

define root view entity YHKA05M_Movie_DD as select from yhka05m_movie
  association [0..1] to YHKA05M_Movierow_DD as _Movierow on $projection.MovierowUuid = _Movierow.MovierowUuid
  association [0..1] to YHKA05M_Director_DD as _Director  on $projection.DirectorUuid = _Director.DirectorUuid
{
    key movie_uuid as MovieUuid,
    
    @ObjectModel.text.association: '_Movierow'
    @ObjectModel.text.element: ['MovieRowTitle']
    movierow_uuid as MovierowUuid,
    @Semantics.uuid: true
    @ObjectModel.text.element: ['DirectorName']
    director_uuid as DirectorUuid,
    
    @Search.defaultSearchElement: true
    @Search.fuzzinessThreshold: 0.7
    movie_title as MovieTitle,
    
    movie_description as MovieDescription,
 
    movie_trailer_link as MovieTrailerLink,
    movie_cover as MovieCover,

    @Search.defaultSearchElement: true
    @Semantics.durationInMinutes: true
    movie_playtime as MoviePlaytime,
    
    @Search.defaultSearchElement: true
    @Semantics.calendar.year: true
    movie_release as MovieRelease,
    
    @Search.defaultSearchElement: true
       
    movie_meta_score as MovieMetaScore,
    
    movie_age_rating as MovieAgeRating,
    @UI.hidden: true
    last_changed_at as LastChangedAt,

    _Movierow,
    @Search.defaultSearchElement: true
    @Search.fuzzinessThreshold: 0.7    
    _Movierow.MovierowTitle as MovieRowTitle,
    @Search.defaultSearchElement: true
    @Search.fuzzinessThreshold: 0.7    
    _Director.DirectorName as DirectorName,
    _Director
}
