*&---------------------------------------------------------------------*
*& Report  ZOSY_MODYFY_SCREEN
*&
*&---------------------------------------------------------------------*
*&
*&
*&---------------------------------------------------------------------*
REPORT zosy_modyfy_screen.

DATA gv_okcode TYPE sy-ucomm.
DATA gv_text_hidden TYPE c.


START-OF-SELECTION.


  CALL SCREEN '0100'.

  WRITE 'PROGRAM END'.

  INCLUDE zosy_modyfy_screen_i01.

  INCLUDE zosy_modyfy_screen_f01.

  INCLUDE zosy_modyfy_screen_o01.
