CLASS zcl_s4d100_flg_char DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_s4d100_flg_char IMPLEMENTATION.
METHOD if_oo_adt_classrun~main.
*CONSTANTS: c_num0 TYPE i VALUE 3.
*DATA : lv_full_name  type string VALUE 'Fernanda Larios',
*       lv_first_name TYPE string,
*       lv_last_name TYPE string,
*       lv_num1 TYPE i,
*       lv_num2 TYPE i.

*       SPLIT lv_full_name AT ' ' INTO lv_first_name lv_last_name.
*        lv_num2 = c_num0.
*        do 9 TIMES.
*        lv_num1 = lv_num1 + 1.
*            out->write( lv_num1 ).
*        ENDDO.
*       out->write( |User { lv_first_name }| ).
DATA: lv_mths TYPE i VALUE 0, "No. of months remaining in year
      lv_hols TYPE i VALUE 20, "No. of days untaken vacation
      lv_avg_hols TYPE i.

IF lv_mths NE 0.
      lv_avg_hols = lv_hols / lv_mths.
      out->write( |Average vacation days per month { lv_avg_hols }| ).
ELSE.
      out->write( |Please ask to roll over remaining vacation| ).
ENDIF.
ENDMETHOD.
ENDCLASS.
