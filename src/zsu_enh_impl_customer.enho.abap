CLASS LCL_ZSU_ENH_IMPL_CUSTOMER DEFINITION DEFERRED.
CLASS ZSU_CL_ENH_OOABAP DEFINITION LOCAL FRIENDS LCL_ZSU_ENH_IMPL_CUSTOMER.
CLASS LCL_ZSU_ENH_IMPL_CUSTOMER DEFINITION.
PUBLIC SECTION.
CLASS-DATA OBJ TYPE REF TO LCL_ZSU_ENH_IMPL_CUSTOMER. "#EC NEEDED
DATA CORE_OBJECT TYPE REF TO ZSU_CL_ENH_OOABAP . "#EC NEEDED
 INTERFACES: IPR_ZSU_ENH_IMPL_CUSTOMER, IPO_ZSU_ENH_IMPL_CUSTOMER.
  METHODS:
   CONSTRUCTOR IMPORTING CORE_OBJECT
     TYPE REF TO ZSU_CL_ENH_OOABAP OPTIONAL.
ENDCLASS.
CLASS LCL_ZSU_ENH_IMPL_CUSTOMER IMPLEMENTATION.
METHOD CONSTRUCTOR.
  ME->CORE_OBJECT = CORE_OBJECT.
ENDMETHOD.

METHOD IPR_ZSU_ENH_IMPL_CUSTOMER~GET_DATA.
*"------------------------------------------------------------------------*
*" Declaration of PRE-method, do not insert any comments here please!
*"
*"methods .
*"------------------------------------------------------------------------*
*** Error occured when reading metadata for method:ZSU_CL_ENH_OOABAPGET_DATA
*** Situation might be repaired by activating the ENHO again with transaction SE20

  DATA: LT_DATA TYPE ZSU_TT_CUSTOMER.

  SELECT KUNNR
         LAND1
    FROM KNA1
    INTO TABLE LT_DATA UP TO 10 ROWS.

    cl_demo_output=>display( LT_DATA ).

ENDMETHOD.
METHOD IPO_ZSU_ENH_IMPL_CUSTOMER~GET_DATA.
*"------------------------------------------------------------------------*
*" Declaration of POST-method, do not insert any comments here please!
*"
*"methods .
*"------------------------------------------------------------------------*
*** Error occured when reading metadata for method:ZSU_CL_ENH_OOABAPGET_DATA
*** Situation might be repaired by activating the ENHO again with transaction SE20

  WRITE: 'Post Exit Method'.

ENDMETHOD.
ENDCLASS.
