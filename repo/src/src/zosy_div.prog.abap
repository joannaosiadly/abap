*&---------------------------------------------------------------------*
*& Report  ZOSY_DIV
*&
*&---------------------------------------------------------------------*
*&
*&
*&---------------------------------------------------------------------*
REPORT zosy_div.

DATA gv_number TYPE i.
DATA gv_result TYPE i.

gv_number = 7.
gv_result = gv_number DIV 2.
WRITE gv_result.
WRITE /.

gv_number = 6.
gv_result = gv_number DIV 2.
WRITE gv_result.
