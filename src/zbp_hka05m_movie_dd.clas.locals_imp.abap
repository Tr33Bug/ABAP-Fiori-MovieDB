CLASS lhc_Movie DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS validateAgeRating FOR VALIDATE ON SAVE
      IMPORTING keys FOR Movie~validateAgeRating.

    METHODS validateMetaScore FOR VALIDATE ON SAVE
      IMPORTING keys FOR Movie~validateMetaScore.

    METHODS validatePlaytime FOR VALIDATE ON SAVE
      IMPORTING keys FOR Movie~validatePlaytime.

    METHODS validateRelease FOR VALIDATE ON SAVE
      IMPORTING keys FOR Movie~validateRelease.

    METHODS validateTrailerUrl FOR VALIDATE ON SAVE
      IMPORTING keys FOR Movie~validateTrailerUrl.

    METHODS validateUrl FOR VALIDATE ON SAVE
      IMPORTING keys FOR Movie~validateUrl.
ENDCLASS.

CLASS lhc_Movie IMPLEMENTATION.

  METHOD validateAgeRating.
    READ ENTITIES OF yhka05m_movie_dd IN LOCAL MODE
         ENTITY Movie
              FIELDS ( MovieAgeRating ) WITH CORRESPONDING #( keys )
              RESULT DATA(movies).

    LOOP AT movies INTO DATA(movie).
      APPEND VALUE #(  %tky        = movie-%tky
                       %state_area = 'VALIDATE_AgeRating' )
       TO reported-movie.
      IF movie-MovieAgeRating < 0 OR movie-MovieAgeRating > 100.
        APPEND VALUE #( %tky = movie-%tky ) TO failed-movie.
        APPEND VALUE #( %tky        = movie-%tky
                %state_area = 'VALIDATE_AgeRating'
                %msg        = NEW yhka05m_movie_messages(
                                 severity  = if_abap_behv_message=>severity-error
                                 textid    = yhka05m_movie_messages=>ageRating_error
                                  ageRating = movie-MovieAgeRating )
                                  )
  TO reported-movie.
      ENDIF.
    ENDLOOP.
  ENDMETHOD.

  METHOD validateMetaScore.
    READ ENTITIES OF yhka05m_movie_dd IN LOCAL MODE
         ENTITY Movie
              FIELDS ( MovieMetaScore ) WITH CORRESPONDING #( keys )
              RESULT DATA(movies).

    LOOP AT movies INTO DATA(movie).
      APPEND VALUE #(  %tky        = movie-%tky
                       %state_area = 'VALIDATE_Meta' )
       TO reported-movie.
      IF movie-MovieMetaScore < 0 OR movie-MovieMetaScore > 5.
        APPEND VALUE #( %tky = movie-%tky ) TO failed-movie.
        APPEND VALUE #( %tky        = movie-%tky
                %state_area = 'VALIDATE_Meta'
                %msg        = NEW yhka05m_movie_messages(
                                 severity  = if_abap_behv_message=>severity-error
                                 textid    = yhka05m_movie_messages=>metascore_error )
                            )
  TO reported-movie.
      ENDIF.
    ENDLOOP.
  ENDMETHOD.

  METHOD validatePlaytime.
    READ ENTITIES OF yhka05m_movie_dd IN LOCAL MODE
         ENTITY Movie
              FIELDS ( MoviePlaytime ) WITH CORRESPONDING #( keys )
              RESULT DATA(movies).

    LOOP AT movies INTO DATA(movie).
      APPEND VALUE #(  %tky        = movie-%tky
                       %state_area = 'VALIDATE_Time' )
       TO reported-movie.
      IF movie-MoviePlaytime < 0 OR movie-MoviePlaytime > 51420.
        APPEND VALUE #( %tky = movie-%tky ) TO failed-movie.
        APPEND VALUE #( %tky        = movie-%tky
                %state_area = 'VALIDATE_Time'
                %msg        = NEW yhka05m_movie_messages(
                                 severity  = if_abap_behv_message=>severity-error
                                 textid    = yhka05m_movie_messages=>playtime_error )
                            )
  TO reported-movie.
      ENDIF.
    ENDLOOP.
  ENDMETHOD.

  METHOD validateRelease.
    READ ENTITIES OF yhka05m_movie_dd IN LOCAL MODE
         ENTITY Movie
              FIELDS ( MovieRelease ) WITH CORRESPONDING #( keys )
              RESULT DATA(movies).

    LOOP AT movies INTO DATA(movie).
      APPEND VALUE #(  %tky        = movie-%tky
                       %state_area = 'VALIDATE_Year' )
       TO reported-movie.
      IF movie-MovieRelease < 1888 OR movie-MovieRelease > 2022.
        APPEND VALUE #( %tky = movie-%tky ) TO failed-movie.
        APPEND VALUE #( %tky        = movie-%tky
                %state_area = 'VALIDATE_Year'
                %msg        = NEW yhka05m_movie_messages(
                                 severity  = if_abap_behv_message=>severity-error
                                 textid    = yhka05m_movie_messages=>releaseYear_error )
                            )
  TO reported-movie.
      ENDIF.
    ENDLOOP.
  ENDMETHOD.

  METHOD validateTrailerUrl.
    READ ENTITIES OF yhka05m_movie_dd IN LOCAL MODE
         ENTITY Movie
              FIELDS ( MovieRelease ) WITH CORRESPONDING #( keys )
              RESULT DATA(movies).

    LOOP AT movies INTO DATA(movie).
      APPEND VALUE #(  %tky        = movie-%tky
                       %state_area = 'VALIDATE_TUrl' )
       TO reported-movie.
      IF NOT movie-MovieTrailerLink CS 'https://www.youtube.com/embed/'.
        APPEND VALUE #( %tky = movie-%tky ) TO failed-movie.
        APPEND VALUE #( %tky        = movie-%tky
                %state_area = 'VALIDATE_TUrl'
                %msg        = NEW yhka05m_movie_messages(
                                 severity  = if_abap_behv_message=>severity-error
                                 textid    = yhka05m_movie_messages=>tarilerUrl_error )
                            )
  TO reported-movie.
      ENDIF.
    ENDLOOP.
  ENDMETHOD.

  METHOD validateUrl.
    READ ENTITIES OF yhka05m_movie_dd IN LOCAL MODE
         ENTITY Movie
              FIELDS ( MovieRelease ) WITH CORRESPONDING #( keys )
              RESULT DATA(movies).

    LOOP AT movies INTO DATA(movie).
      APPEND VALUE #(  %tky        = movie-%tky
                       %state_area = 'VALIDATE_CUrl' )
       TO reported-movie.
      IF NOT movie-MovieCover CS 'https://m.media-amazon.com/images/M/'.
        APPEND VALUE #( %tky = movie-%tky ) TO failed-movie.
        APPEND VALUE #( %tky        = movie-%tky
                %state_area = 'VALIDATE_CUrl'
                %msg        = NEW yhka05m_movie_messages(
                                 severity  = if_abap_behv_message=>severity-error
                                 textid    = yhka05m_movie_messages=>coverUrl_error )
                            )
  TO reported-movie.
      ENDIF.
    ENDLOOP.
  ENDMETHOD.

ENDCLASS.
