*&---------------------------------------------------------------------*
*& Report  ZOSY_MIN_VARIANT
*&
*&---------------------------------------------------------------------*
*&
*&
*&---------------------------------------------------------------------*
REPORT zosy_min_variant.


PARAMETERS p_var TYPE zosy_minimum_variant VALUE CHECK OBLIGATORY.
PARAMETERS p_age1 TYPE zosy_age.
PARAMETERS p_age2 TYPE zosy_age.
PARAMETERS p_age3 TYPE zosy_age.
PARAMETERS p_age4 TYPE zosy_age.
PARAMETERS p_age5 TYPE zosy_age.
PARAMETERS p_age6 TYPE zosy_age.
PARAMETERS p_age7 TYPE zosy_age.
PARAMETERS p_age8 TYPE zosy_age.
PARAMETERS p_age9 TYPE zosy_age.
PARAMETERS p_age10 TYPE zosy_age.

DATA gt_ages TYPE STANDARD TABLE OF zosy_age.
DATA gv_age TYPE zosy_age.
DATA gv_min TYPE zosy_age.

APPEND p_age1 TO gt_ages.
APPEND p_age2 TO gt_ages.
APPEND p_age3 TO gt_ages.
APPEND p_age4 TO gt_ages.
APPEND p_age5 TO gt_ages.
APPEND p_age6 TO gt_ages.
APPEND p_age7 TO gt_ages.
APPEND p_age8 TO gt_ages.
APPEND p_age9 TO gt_ages.
APPEND p_age10 TO gt_ages.

IF p_var = 'S'.
  READ TABLE gt_ages INDEX 1 INTO gv_min.

  LOOP AT gt_ages INTO gv_age.
    IF gv_age < gv_min.
      gv_min = gv_age.
    ENDIF.
  ENDLOOP.

ELSE.
  READ TABLE gt_ages INDEX 1 INTO gv_min.
  LOOP AT gt_ages INTO gv_age.
    PERFORM compare_age
       USING gv_age
       CHANGING gv_min.
  ENDLOOP.
ENDIF.

WRITE /.

WRITE gv_min.




FORM compare_age
  USING iv_age1 TYPE zosy_age
  CHANGING cv_min TYPE zosy_age.

  IF iv_age1 < cv_min.
    cv_min = iv_age1.
  ENDIF.

ENDFORM.
