CLASS yhka05m_movie_messages DEFINITION
  PUBLIC
  INHERITING FROM cx_static_check
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_t100_message .
    INTERFACES if_t100_dyn_msg .
    INTERFACES if_abap_behv_message.
    CONSTANTS:
      BEGIN OF default_error,
        msgid TYPE symsgid VALUE 'YHKA05M_MESSAGES',
        msgno TYPE symsgno VALUE '001',
        attr1 TYPE scx_attrname VALUE ' Unknown Error! ',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF default_error .
    CONSTANTS:
      BEGIN OF ageRating_error,
        msgid TYPE symsgid VALUE 'YHKA05M_MESSAGES',
        msgno TYPE symsgno VALUE '002',
        attr1 TYPE scx_attrname VALUE ' The age should be between 0 and 99! ',
        attr2 TYPE scx_attrname VALUE ' Please check it again :) ',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF ageRating_error .
     CONSTANTS:
      BEGIN OF metascore_error,
        msgid TYPE symsgid VALUE 'YHKA05M_MESSAGES',
        msgno TYPE symsgno VALUE '003',
        attr1 TYPE scx_attrname VALUE ' IMDb Metascore Rating error! ',
        attr2 TYPE scx_attrname VALUE ' Expected value between 0 and 5 ',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF metascore_error .
     CONSTANTS:
      BEGIN OF playtime_error,
        msgid TYPE symsgid VALUE 'YHKA05M_MESSAGES',
        msgno TYPE symsgno VALUE '004',
        attr1 TYPE scx_attrname VALUE ' Movie Playtime error! ',
        attr2 TYPE scx_attrname VALUE ' Expected value between 0 and 51420 ',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF playtime_error .
     CONSTANTS:
      BEGIN OF releaseYear_error,
        msgid TYPE symsgid VALUE 'YHKA05M_MESSAGES',
        msgno TYPE symsgno VALUE '005',
        attr1 TYPE scx_attrname VALUE ' Release Year error! ',
        attr2 TYPE scx_attrname VALUE ' Expected value between 1888 and 2022 ',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF releaseYear_error .
     CONSTANTS:
      BEGIN OF tarilerUrl_error,
        msgid TYPE symsgid VALUE 'YHKA05M_MESSAGES',
        msgno TYPE symsgno VALUE '006',
        attr1 TYPE scx_attrname VALUE ' Movie trailer Url error! ',
        attr2 TYPE scx_attrname VALUE ' Expected youtube-embed-Link',
        attr3 TYPE scx_attrname VALUE ' Like: https://www.youtube.com/embed/dQw4w9WgXcQ ',
        attr4 TYPE scx_attrname VALUE '',
      END OF tarilerUrl_error .
     CONSTANTS:
      BEGIN OF coverUrl_error,
        msgid TYPE symsgid VALUE 'YHKA05M_MESSAGES',
        msgno TYPE symsgno VALUE '007',
        attr1 TYPE scx_attrname VALUE ' Movie cover Url error! ',
        attr2 TYPE scx_attrname VALUE ' Expected IMDb-Media-Link',
        attr3 TYPE scx_attrname VALUE ' Like: https://m.media-amazon.com/images/M/... ',
        attr4 TYPE scx_attrname VALUE '',
      END OF coverUrl_error .
     CONSTANTS:
      BEGIN OF directorAge_error,
        msgid TYPE symsgid VALUE 'YHKA05M_MESSAGES',
        msgno TYPE symsgno VALUE '008',
        attr1 TYPE scx_attrname VALUE ' Director year of birth error! ',
        attr2 TYPE scx_attrname VALUE ' Expected value between 1841 and 2022 ',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF directorAge_error .


    METHODS constructor
      IMPORTING
        severity TYPE if_abap_behv_message=>t_severity DEFAULT if_abap_behv_message=>severity-error
        textid   LIKE if_t100_message=>t100key OPTIONAL
        ageRating   TYPE int4 OPTIONAL.

    DATA ageRating TYPE int4 READ-ONLY.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS yhka05m_movie_messages IMPLEMENTATION.

METHOD constructor ##ADT_SUPPRESS_GENERATION.
    CALL METHOD super->constructor
      EXPORTING
        previous = previous.
    CLEAR me->textid.
    IF textid IS INITIAL.
      if_t100_message~t100key = if_t100_message=>default_textid.
    ELSE.
      if_t100_message~t100key = textid.
    ENDIF.

    me->if_abap_behv_message~m_severity = severity.
    me->ageRating = ageRating.
  ENDMETHOD.

ENDCLASS.
