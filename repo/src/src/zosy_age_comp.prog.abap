*&---------------------------------------------------------------------*
*& Report  ZOSY_AGE_COMP
*&
*&---------------------------------------------------------------------*
*&
*&
*&---------------------------------------------------------------------*
REPORT zosy_age_comp.

DATA gv_age1 TYPE zosy_age.
DATA gv_age2 TYPE zosy_age.
DATA gv_age3 TYPE zosy_age.
DATA gv_age4 TYPE zosy_age.
DATA gv_age5 TYPE zosy_age.
DATA gv_age6 TYPE zosy_age.
DATA gv_comp1 TYPE zosy_comparsion_result.
DATA gv_comp2 TYPE zosy_comparsion_result.
DATA gv_comp3 TYPE zosy_comparsion_result.

gv_age1 = 20.
gv_age2 = 30.
gv_age3 = 40.
gv_age4 = 33.
gv_age5 = 15.
gv_age6 = 55.

PERFORM compare_age
USING gv_age1
      gv_age2
CHANGING gv_comp1.

PERFORM compare_age
USING gv_age3
      gv_age4
CHANGING gv_comp2.

PERFORM compare_age
USING gv_age5
      gv_age6
CHANGING gv_comp3.



WRITE gv_age1.
WRITE /.
WRITE gv_comp1.
WRITE /.
WRITE gv_age2.
WRITE /.
WRITE /.
WRITE /.
WRITE gv_age3.
WRITE /.
WRITE gv_comp2.
WRITE /.
WRITE gv_age4.
WRITE /.
WRITE /.
WRITE /.
WRITE gv_age5.
WRITE /.
WRITE gv_comp3.
WRITE /.
WRITE gv_age6.

FORM compare_age
  USING iv_age1 TYPE zosy_age
        iv_age2 TYPE zosy_age
  CHANGING cv_diff TYPE zosy_comparsion_result.

  IF iv_age1 < iv_age2.
    cv_diff = 'LT'.
  ELSE.
    IF iv_age1 > iv_age2.
      cv_diff = 'GT'.
    ELSE.
      cv_diff = 'EQ'.
    ENDIF.
  ENDIF.

ENDFORM.
