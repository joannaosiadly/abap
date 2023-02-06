*&---------------------------------------------------------------------*
*& Report  ZOSY_STRING_OPERATION
*&
*&---------------------------------------------------------------------*
*&
*&
*&---------------------------------------------------------------------*
REPORT zosy_string_operation.

PARAMETERS p_sur1 TYPE zosy_surname.

DATA gv_string TYPE c LENGTH 10.
DATA gv_i TYPE i.
DATA gv_j TYPE i.
DATA gv_str_len TYPE i.

gv_string = 'velvet'.

WRITE p_sur1+2(5).
WRITE /.
WRITE gv_string.
WRITE /.

gv_i = 2.
gv_j = 4.

WRITE p_sur1+gv_i(gv_j).
WRITE /.

gv_str_len = strlen( p_sur1 ).

WRITE gv_str_len.
WRITE /.

gv_i = 0.

WHILE gv_i < gv_str_len.
  WRITE p_sur1+gv_i(1).
  WRITE /.
  gv_i = gv_i + 1.


ENDWHILE.
