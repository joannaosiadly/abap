*&---------------------------------------------------------------------*
*& Report  ZOSY_TABLE_WHILE
*&
*&---------------------------------------------------------------------*
*&
*&
*&---------------------------------------------------------------------*
REPORT zosy_table_while.

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
DATA gv_length TYPE i.
DATA gv_i TYPE i.
DATA gv_j TYPE i.
DATA gv_age TYPE zosy_age.






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

gv_i = 0.
*gv_j = 1.

* possible options
*WHILE gv_i <= gv_length.
*WHILE gv_i < gv_length + 1
*WHILE gv_i - 1 < gv_length + 1

gv_i = 1.
WHILE gv_i <= gv_length .

  READ TABLE gt_age INDEX gv_i INTO gv_age.
  WRITE gv_age.
  WRITE /.
  gv_i = gv_i + 1.

ENDWHILE.

WRITE /.
WRITE /.
WRITE /.

gv_i = gv_length.
WHILE  gv_i > 0.

  READ TABLE gt_age INDEX gv_i INTO gv_age.
  WRITE gv_age.
  WRITE /.
  gv_i = gv_i - 1.


ENDWHILE.
