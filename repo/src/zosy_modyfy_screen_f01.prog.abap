*----------------------------------------------------------------------*
***INCLUDE ZOSY_MODYFY_SCREEN_F01.
*----------------------------------------------------------------------*
*&---------------------------------------------------------------------*
*&      Form  USER_COMMAND_0100
*&---------------------------------------------------------------------*
*       text
*----------------------------------------------------------------------*
*  -->  p1        text
*  <--  p2        text
*----------------------------------------------------------------------*
FORM user_command_0100 .

  DATA lv_okcode TYPE sy-ucomm.
  lv_okcode = gv_okcode.
  CLEAR gv_okcode.

  CASE lv_okcode.
    WHEN 'EXIT'.
      LEAVE TO SCREEN 0.

    WHEN 'HIDE'.
      PERFORM hide_clicked
      CHANGING gv_text_hidden.

    WHEN 'SHOW'.
      PERFORM show
      CHANGING gv_text_hidden.

    WHEN OTHERS.

  ENDCASE.

ENDFORM.
*&---------------------------------------------------------------------*
*&      Form  HIDE_ELEMENTS
*&---------------------------------------------------------------------*
*       text
*----------------------------------------------------------------------*
*  -->  p1        text
*  <--  p2        text
*----------------------------------------------------------------------*
FORM hide_clicked
  CHANGING cv_text_hidden TYPE c.

  cv_text_hidden = 'X'.


ENDFORM.


*&---------------------------------------------------------------------*
*&      Form  SHOW
*&---------------------------------------------------------------------*
*       text
*----------------------------------------------------------------------*
*  -->  p1        text
*  <--  p2        text
*----------------------------------------------------------------------*
FORM show

  CHANGING cv_text_hidden TYPE c.

  cv_text_hidden = ' '.



ENDFORM.

*&---------------------------------------------------------------------*
*&      Form  HIDE_FIELDS
*&---------------------------------------------------------------------*
*       text
*----------------------------------------------------------------------*
*      -->P_GV_TEXT_HIDDEN  text
*----------------------------------------------------------------------*
FORM hide_fields
    USING iv_text_hidden TYPE c.


  LOOP AT SCREEN.
    IF screen-name = 'GV_TEXT'.
      IF iv_text_hidden = 'X'.
        screen-active = '0'.
        MODIFY SCREEN.
      ENDIF.
    ENDIF.

    IF screen-name = 'BUTTON_HIDE'.
      IF iv_text_hidden = 'X'.
        screen-active = '0'.
        MODIFY SCREEN.
      ENDIF.
    ENDIF.

    IF screen-name = 'BUTTON_SHOW'.
      IF iv_text_hidden = ' '.
        screen-active = '0'.
        MODIFY SCREEN.
      ENDIF.
    ENDIF.

  ENDLOOP.
ENDFORM.
