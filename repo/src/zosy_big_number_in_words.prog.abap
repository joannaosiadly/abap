*&---------------------------------------------------------------------*
*& Report  ZOSY_BIG_NUMBER_IN_WORDS
*&
*&---------------------------------------------------------------------*
*&
*&
*&---------------------------------------------------------------------*
REPORT zosy_big_number_in_words.

PARAMETERS p_numb TYPE zosy_big_number.
TYPES t_numc3 TYPE n LENGTH 3.
*TYPES t_char255 TYPE c LENGTH 255.
*DATA gv_number TYPE n LENGTH 3.
DATA gv_numer_as_word TYPE zosy_number2.



PERFORM big_number_in_words
USING p_numb
CHANGING gv_numer_as_word.

WRITE gv_numer_as_word.

INCLUDE zosy_big_number_form.
