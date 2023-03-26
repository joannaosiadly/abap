*&---------------------------------------------------------------------*
*& Report  ZOSY_INCLUDE_TEST
*&
*&---------------------------------------------------------------------*
*&
*&
*&---------------------------------------------------------------------*
REPORT zosy_include_test.

DATA gv_big_number TYPE zosy_big_number.
TYPES t_numc3 TYPE n LENGTH 3.
DATA gv_numer_as_word TYPE zosy_number2.

gv_big_number = 34567.
*WRITE gv_big_number.
WRITE 'STAN KONTA WYNOSI:'.
WRITE /.


PERFORM big_number_in_words
USING gv_big_number
CHANGING gv_numer_as_word.
WRITE gv_numer_as_word.

INCLUDE zosy_big_number_form.
