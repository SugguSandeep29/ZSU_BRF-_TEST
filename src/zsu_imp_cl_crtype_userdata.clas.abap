class ZSU_IMP_CL_CRTYPE_USERDATA definition
  public
  final
  create public .

public section.

  interfaces IF_BADI_INTERFACE .
  interfaces IF_EX_USMD_CREQUEST_INTEGR .

  methods FILTER_BP_CREQ_TYPES
    importing
      !IV_MODEL type USMD_MODEL
      !IV_ENTITY type USMD_ENTITY
    changing
      !CT_CREQUEST_TYPE type USMD_TS_CREQUEST_TYPE .
protected section.
private section.
ENDCLASS.



CLASS ZSU_IMP_CL_CRTYPE_USERDATA IMPLEMENTATION.


  method FILTER_BP_CREQ_TYPES.
  endmethod.


  method IF_EX_USMD_CREQUEST_INTEGR~CHECK_CREQUEST_SUBMIT_FOR_NOTE.
  endmethod.


  METHOD if_ex_usmd_crequest_integr~filter_crequest_type.

    IF sy-uname = 'SANDEEPS'.

      SELECT usmd110c~usmd_creq_type FROM usmd110c
                                      INTO TABLE ct_crequest_type
                                      WHERE usmd110c~usmd_creq_type LIKE 'ZSU%'.
      CALL METHOD filter_bp_creq_types
        EXPORTING
          iv_model         = iv_model
          iv_entity        = iv_entity
        CHANGING
          ct_crequest_type = ct_crequest_type.
    ENDIF.



  ENDMETHOD.


  method IF_EX_USMD_CREQUEST_INTEGR~GET_CREQUEST_ATTRIBUTES.
  endmethod.


  method IF_EX_USMD_CREQUEST_INTEGR~GET_CREQUEST_FLD_PROP.
  endmethod.
ENDCLASS.
