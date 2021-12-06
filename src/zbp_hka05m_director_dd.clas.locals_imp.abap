CLASS lhc_Director DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS validateAge FOR VALIDATE ON SAVE
      IMPORTING keys FOR Director~validateAge.

ENDCLASS.

CLASS lhc_Director IMPLEMENTATION.

  METHOD validateAge.

    READ ENTITIES OF YHKA05M_Director_DD IN LOCAL MODE
         ENTITY Director
              FIELDS ( DirectorAge ) WITH CORRESPONDING #( keys )
              RESULT DATA(directors).

    LOOP AT directors INTO DATA(director).
      APPEND VALUE #(  %tky        = director-%tky
                       %state_area = 'VALIDATE_AgeDir' )
       TO reported-director.



      IF director-DirectorAge < 1841 OR director-DirectorAge > 2021.
        APPEND VALUE #( %tky = director-%tky ) TO failed-director.
        APPEND VALUE #( %tky        = director-%tky
                %state_area = 'VALIDATE_AgeDir'
                %msg        = NEW yhka05m_movie_messages(
                                 severity  = if_abap_behv_message=>severity-error
                                 textid    = yhka05m_movie_messages=>directorAge_error )
       ) TO reported-director.
      ENDIF.








    ENDLOOP.
  ENDMETHOD.

ENDCLASS.
