*&---------------------------------------------------------------------*
*& Report  ZOSY_BUBBLE_SORT
*&
*&---------------------------------------------------------------------*
*&
*&
*&---------------------------------------------------------------------*
REPORT zosy_bubble_sort.

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
DATA gv_age TYPE zosy_age.
DATA gv_length TYPE i.
DATA gv_age1 TYPE zosy_age.
DATA gv_age2 TYPE zosy_age.
DATA gv_i TYPE i.
DATA gv_j TYPE i.

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

gv_length = lines( gt_age ).


gv_i = 1.
gv_j = 1.

WHILE gv_j < gv_length.

  gv_i = 1.

  WHILE gv_i < gv_length.

    READ TABLE gt_age INDEX gv_i INTO gv_age1.
    READ TABLE gt_age INDEX gv_i + 1 INTO gv_age2.

    IF gv_age2 < gv_age1.

      MODIFY gt_age INDEX gv_i + 1 FROM gv_age1.
      MODIFY gt_age INDEX gv_i FROM gv_age2.

    ELSE.

    ENDIF.

    gv_i = gv_i + 1.

  ENDWHILE.
  gv_j = gv_j + 1.

ENDWHILE.



LOOP AT gt_age INTO gv_age.
  WRITE gv_age.
ENDLOOP.
