*&---------------------------------------------------------------------*
*& Report ZSO_PRG_ENH_OOABAP_EKKO
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zsu_prg_enh_oo_enh.

DATA : lo_data TYPE REF TO zsu_cl_enh_ooabap,
       lt_data TYPE  zsu_tt_customer.


CREATE OBJECT lo_data.



CALL METHOD lo_data->get_data
  IMPORTING
    et_kna1 = lt_data.



cl_demo_output=>display( lt_data ).
