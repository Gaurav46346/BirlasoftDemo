CLASS zcl_agency_999 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_agency_999 IMPLEMENTATION.

   method if_oo_adt_classrun~main.

       DATA: update_tab TYPE TABLE FOR UPDATE /DMO/R_AgencyTP.

       update_tab = value #( ( AgencyID = '070010' Name = 'Changed' ) ) .

       modify entities of /DMO/R_AgencyTP
       ENTITY  /DMO/Agency
       UPDATE FIELDS ( Name )
       WITH update_tab.

       COMMIT ENTITIES.

   ENDMETHOD.

ENDCLASS.
