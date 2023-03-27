class ZSU_CL_ENH definition
  public
  final
  create public .

public section.

  methods GET_ALL_DATA
    exporting
      !ET_MARA type ZSU_TT_MARA .
protected section.
private section.
ENDCLASS.



CLASS ZSU_CL_ENH IMPLEMENTATION.


  method GET_ALL_DATA.



    SELECT * FROM MARA INTO TABLE ET_MARA UP TO 10 ROWS.



  endmethod.
ENDCLASS.
