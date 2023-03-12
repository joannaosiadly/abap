*&---------------------------------------------------------------------*
*& Report  ZOSY_SELECTION_SORT
*&
*&---------------------------------------------------------------------*
*&
*&
*&---------------------------------------------------------------------*
REPORT zosy_selection_sort.

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

DATA gt_age TYPE STANDARD TABLE OF zosy_age.
DATA gt_age_sorted TYPE STANDARD TABLE OF zosy_age.
DATA gv_age TYPE zosy_age.
DATA gv_length TYPE i.
DATA gv_curr_length TYPE i.
DATA gv_age1 TYPE zosy_age.
DATA gv_age2 TYPE zosy_age.
DATA gv_min TYPE zosy_age.
DATA gv_i TYPE i.
DATA gv_j TYPE i.
DATA gv_min_index TYPE i.

IF p_age1 IS NOT INITIAL.
  APPEND p_age1 TO gt_age.
ENDIF.

IF p_age2 IS NOT INITIAL.
  APPEND p_age2 TO gt_age.
ENDIF.

IF p_age3 IS NOT INITIAL.
  APPEND p_age3 TO gt_age.
ENDIF.

IF p_age4 IS NOT INITIAL.
  APPEND p_age4 TO gt_age.
ENDIF.

IF p_age5 IS NOT INITIAL.
  APPEND p_age5 TO gt_age.
ENDIF.

IF p_age6 IS NOT INITIAL.
  APPEND p_age6 TO gt_age.
ENDIF.

IF p_age7 IS NOT INITIAL.
  APPEND p_age7 TO gt_age.
ENDIF.

IF p_age8 IS NOT INITIAL.
  APPEND p_age8 TO gt_age.
ENDIF.

IF p_age9 IS NOT INITIAL.
  APPEND p_age9 TO gt_age.
ENDIF.

IF p_age10 IS NOT INITIAL.
  APPEND p_age10 TO gt_age.
ENDIF.

IF p_age11 IS NOT INITIAL.
  APPEND p_age11 TO gt_age.
ENDIF.

IF p_age12 IS NOT INITIAL.
  APPEND p_age12 TO gt_age.
ENDIF.


gv_i = 1.

gv_length = lines( gt_age ).


WHILE gv_i <= gv_length.
  READ TABLE gt_age INDEX 1 INTO gv_min.
  gv_j = 1.

  gv_curr_length = lines( gt_age ).

  WHILE gv_j <= gv_curr_length.


    READ TABLE gt_age INDEX gv_j INTO gv_age.

    IF gv_age <= gv_min.
      gv_min = gv_age.
      gv_min_index = gv_j.

    ENDIF.


    gv_j = gv_j + 1.

  ENDWHILE.

  APPEND gv_min TO gt_age_sorted.
  DELETE gt_age INDEX gv_min_index.


  gv_i = gv_i + 1.

ENDWHILE.

*WRITE gv_min.
*
LOOP AT gt_age_sorted INTO gv_age.
  WRITE gv_age.
ENDLOOP.
