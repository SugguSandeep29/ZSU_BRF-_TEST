*&---------------------------------------------------------------------*
*& Report ZSU_PRG_ENH_SECTION
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZSU_PRG_ENH_SECTION.



WRITE: / 'explicit enhancement'.
WRITE :/ 'explicit enhancement point'.
WRITE :/ 'explicit enhancement section'.


ENHANCEMENT-SECTION ZSU_PRG_ENH_SECTION SPOTS ZSU_PRG_ENH_SPOT .
WRITE :/ 'explicit enhancement point static'.
WRITE :/ 'explicit enhancement point dynnamic'.
END-ENHANCEMENT-SECTION.


WRITE :/'explicit enhancement setion static'.
WRITE :/ 'explicit enhancement setion dynamic'.
