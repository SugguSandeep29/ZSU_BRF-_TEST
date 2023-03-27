CLASS LCL_ZSU_ENH_IMPL_ENH DEFINITION DEFERRED.
CLASS ZSU_CL_ENH DEFINITION LOCAL FRIENDS LCL_ZSU_ENH_IMPL_ENH.
CLASS LCL_ZSU_ENH_IMPL_ENH DEFINITION.
PUBLIC SECTION.
CLASS-DATA OBJ TYPE REF TO LCL_ZSU_ENH_IMPL_ENH. "#EC NEEDED
DATA CORE_OBJECT TYPE REF TO ZSU_CL_ENH . "#EC NEEDED
 INTERFACES  IPR_ZSU_ENH_IMPL_ENH.
  METHODS:
   CONSTRUCTOR IMPORTING CORE_OBJECT
     TYPE REF TO ZSU_CL_ENH OPTIONAL.
ENDCLASS.
CLASS LCL_ZSU_ENH_IMPL_ENH IMPLEMENTATION.
METHOD CONSTRUCTOR.
  ME->CORE_OBJECT = CORE_OBJECT.
ENDMETHOD.

METHOD IPR_ZSU_ENH_IMPL_ENH~GET_ALL_DATA.
*"------------------------------------------------------------------------*
*" Declaration of PRE-method, do not insert any comments here please!
*"
*"methods .
*"------------------------------------------------------------------------*
*** Error occured when reading metadata for method:ZSU_CL_ENHGET_ALL_DATA
*** Situation might be repaired by activating the ENHO again with transaction SE20

SELECT * FROM MARA INTO @DATA(LT_DAT) UP TO 5 ROWS.

  ENDSELECT.

ENDMETHOD.
ENDCLASS.
