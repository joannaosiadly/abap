*&---------------------------------------------------------------------*
*& Report  ZOSY_SCREEN
*&
*&---------------------------------------------------------------------*
*&
*&
*&---------------------------------------------------------------------*
REPORT zosy_screen.
DATA gv_text TYPE c LENGTH 100.
INCLUDE zosy_screen_user_command_01i01.
INCLUDE zosy_screen_status_0100o01.

START-OF-SELECTION. "this is begining of the program

  DATA gv_okcode TYPE sy-ucomm.

  WRITE 'start'.

  CALL SCREEN '0100'.

  WRITE 'end'.

FORM user_command_0100.
  DATA lv_okcode TYPE sy-ucomm.
  lv_okcode = gv_okcode.
  CLEAR gv_okcode.

  CASE lv_okcode.
    WHEN 'EXIT'.
      LEAVE TO SCREEN 0.
    WHEN 'CLICK'.
      gv_text = 'button clicked'. .
    WHEN OTHERS.
  ENDCASE.
ENDFORM.
