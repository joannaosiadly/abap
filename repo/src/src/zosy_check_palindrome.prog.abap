*&---------------------------------------------------------------------*
*& Report  ZOSY_CHECK_PALINDROME
*&
*&---------------------------------------------------------------------*
*&
*&
*&---------------------------------------------------------------------*
REPORT zosy_check_palindrome.

PARAMETERS p_word TYPE zosy_palindrome.


DATA gv_i TYPE i.
DATA gv_j TYPE i.
DATA gv_str_len TYPE i.
DATA gv_is_palindrome TYPE c LENGTH 1.


gv_i = 0.
gv_str_len = strlen( p_word ).
gv_is_palindrome = 'Y'.

WHILE gv_i < gv_str_len DIV 2.

  gv_j = gv_str_len - gv_i - 1.


  IF p_word+gv_i(1) <> p_word+gv_j(1).
    gv_is_palindrome = 'N'.
  ENDIF.

  gv_i = gv_i + 1.


ENDWHILE.

IF gv_is_palindrome = 'Y'.
  WRITE 'word is a palindrome'.

ELSE.
  WRITE 'word isn''t a palindrome'.

ENDIF.

*DELETE gt_string INDEX 10.
