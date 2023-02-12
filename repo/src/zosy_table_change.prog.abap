*&---------------------------------------------------------------------*
*& Report  ZOSY_TABLE_WHILE
*&
*&---------------------------------------------------------------------*
*&
*&
*&---------------------------------------------------------------------*
REPORT zosy_table_change.

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
PARAMETERS p_age11 TYPE zosy_age.
PARAMETERS p_age12 TYPE zosy_age.
PARAMETERS p_age13 TYPE zosy_age.

DATA gt_age TYPE STANDARD TABLE OF zosy_age.
DATA gv_age TYPE zosy_age.
DATA gv_length TYPE i.
DATA gv_age_temp TYPE zosy_age.

APPEND p_age1 TO gt_age.
APPEND p_age2 TO gt_age.
APPEND p_age3 TO gt_age.
APPEND p_age4 TO gt_age.
APPEND p_age5 TO gt_age.
APPEND p_age6 TO gt_age.
APPEND p_age7 TO gt_age.
APPEND p_age8 TO gt_age.
APPEND p_age9 TO gt_age.
APPEND p_age10 TO gt_age.
APPEND p_age11 TO gt_age.
APPEND p_age12 TO gt_age.
APPEND p_age13 TO gt_age.


READ TABLE gt_age INDEX 1 INTO gv_age.
gv_length = lines( gt_age ).
READ TABLE gt_age INDEX gv_length INTO gv_age_temp.
MODIFY gt_age INDEX gv_length FROM gv_age.

MODIFY gt_age INDEX 1 FROM gv_age_temp.

LOOP AT gt_age INTO gv_age.
  WRITE gv_age.
ENDLOOP.
