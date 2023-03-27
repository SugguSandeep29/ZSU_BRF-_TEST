*&---------------------------------------------------------------------*
*& Report ZSU_PRG_DATA
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZSU_PRG_DATA.


PARAMETERS: p_matnr TYPE MATNR.

DATA lo_demo TYPE REF TO ZSU_BADI_DEF_DATA.

GET BADI lo_demo.

CALL BADI lo_demo->get_data
  EXPORTING
    iv_matnr =  p_matnr
    .

ENHANCEMENT-POINT ZSU_ENHP SPOTS ZSU_SPOT .
