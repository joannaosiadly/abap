*----------------------------------------------------------------------*
***INCLUDE ZOSY_SCREEN_PERSON_F01.
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
    WHEN 'PREV'.

      PERFORM previous
        USING    gt_screen_person
        CHANGING gv_current_index
                 gs_screen_person.

    WHEN 'NEXT'.


      IF gv_current_index < gv_length.
        gv_current_index = gv_current_index + 1.
        READ TABLE gt_screen_person INDEX gv_current_index INTO gs_screen_person.

      ELSE.
        LEAVE TO SCREEN 0.

      ENDIF.

    WHEN OTHERS.
  ENDCASE.

ENDFORM.
*&---------------------------------------------------------------------*
*&      Form  PREVIOUS
*&---------------------------------------------------------------------*
*       text
*----------------------------------------------------------------------*
*  -->  p1        text
*  <--  p2        text
*----------------------------------------------------------------------*
FORM previous
  USING    it_person TYPE zosy_tab_screen_person
  CHANGING cv_current_index TYPE i
           cs_screen_person TYPE zosy_str_screen_person.


  IF cv_current_index > 1.
    cv_current_index = cv_current_index - 1.
    READ TABLE it_person INDEX cv_current_index INTO cs_screen_person.
  ENDIF.
ENDFORM.
