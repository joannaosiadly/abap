*&---------------------------------------------------------------------*
*& Report  ZOSY_SCREEN
*&
*&---------------------------------------------------------------------*
*&
*&
*&---------------------------------------------------------------------*
REPORT zosy_screen.
DATA gv_text TYPE c LENGTH 23.
DATA gv_text_exchange TYPE c LENGTH 100.
DATA gv_okcode TYPE sy-ucomm.
INCLUDE zosy_screen_user_command_01i01.
INCLUDE zosy_screen_status_0100o01.

START-OF-SELECTION. "this is begining of the program



  WRITE 'start'.

  gv_text = 'jajo'.

  CALL SCREEN '0100'.

  WRITE 'end'.

FORM user_command_0100.
  DATA lv_okcode TYPE sy-ucomm.
  DATA lv_temp TYPE c LENGTH 100.
  lv_okcode = gv_okcode.
  CLEAR gv_okcode.

  CASE lv_okcode.
    WHEN 'EXIT'.
      LEAVE TO SCREEN 0.
    WHEN 'CLICK'.
      gv_text = 'button clicked'.
      gv_text_exchange = 'YES'.
    WHEN 'SWAP'.
      lv_temp = gv_text_exchange.
      CLEAR gv_text_exchange.
      gv_text_exchange = gv_text.
      CLEAR gv_text.
      gv_text = lv_temp.
    WHEN OTHERS.
  ENDCASE.
ENDFORM.
