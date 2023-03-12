*&---------------------------------------------------------------------*
*& Report  ZOSY_THRESHOLD
*&
*&---------------------------------------------------------------------*
*&
*&
*&---------------------------------------------------------------------*
REPORT zosy_threshold_two_table.

TYPES tt_age TYPE STANDARD TABLE OF zosy_age.

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
PARAMETERS p_thres TYPE zosy_threshold.

DATA gt_ages TYPE tt_age.
DATA gt_lower_than TYPE tt_age.
DATA gt_greater_than TYPE tt_age.
DATA gv_age TYPE zosy_age.


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


LOOP AT gt_ages INTO gv_age.

  IF gv_age < p_thres.

    APPEND gv_age TO gt_lower_than.

  ELSE.

    APPEND gv_age TO gt_greater_than.

  ENDIF.


ENDLOOP.

WRITE 'All ages:'.

PERFORM table
USING gt_ages.

WRITE /.
WRITE /.
WRITE /.
*
*LOOP AT gt_lower_than INTO gv_age.
*
*  WRITE gv_age.
*
*ENDLOOP.
*
*WRITE /.
*WRITE /.
*WRITE /.
*
*LOOP AT gt_greater_than INTO gv_age.
*
*  WRITE gv_age.
*
*ENDLOOP.

WRITE 'Values ​​below the threshold:'.

PERFORM table
USING gt_lower_than.

WRITE /.
WRITE /.
WRITE /.
WRITE 'Values ​​above the threshold:'.

PERFORM table
USING gt_greater_than.

FORM table
*  USING it_lower_than type STANDARD TABLE zosy_age
  USING it_ages TYPE tt_age.
  DATA lv_age TYPE zosy_age.

  LOOP AT it_ages INTO lv_age.

    WRITE lv_age.

  ENDLOOP.

ENDFORM.
