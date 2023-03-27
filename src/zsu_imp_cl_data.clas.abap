class ZSU_IMP_CL_DATA definition
  public
  final
  create public .

public section.

  interfaces IF_BADI_INTERFACE .
  interfaces ZSU_IF_DATA .
protected section.
private section.
ENDCLASS.



CLASS ZSU_IMP_CL_DATA IMPLEMENTATION.


  method ZSU_IF_DATA~GET_DATA.

     TYPES: BEGIN OF TY_mara,
       MATNR TYPE MATNR,
       ERNAM TYPE ERNAM,
       MTART TYPE MTART,
      END OF TY_mara.

    data: lt_data type STANDARD TABLE OF TY_mara.

    select  MATNR
            ERNAM
            MTART
            from mara
            into table lt_data
            where MATNR = iv_matnr.


   CL_DEMO_OUTPUT=>display( LT_DATA ).




  endmethod.
ENDCLASS.
