class ZSU_CL_ENH_OOABAP definition
  public
  final
  create public .

public section.

  methods GET_DATA
    exporting
      !ET_KNA1 type ZSU_TT_CUSTOMER .
protected section.
private section.
ENDCLASS.



CLASS ZSU_CL_ENH_OOABAP IMPLEMENTATION.


  method GET_DATA.

    SELECT KUNNR
           LAND1
           FROM KNA1
           INTO TABLE ET_KNA1.

  endmethod.
ENDCLASS.
