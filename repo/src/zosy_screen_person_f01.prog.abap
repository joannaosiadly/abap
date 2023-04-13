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

      PERFORM next
          USING    gt_screen_person
                   gv_length
          CHANGING gv_current_index
                   gs_screen_person.

    WHEN 'CLEAR'.

      PERFORM clear
      CHANGING gs_screen_person.

    WHEN 'SAVE'.

      PERFORM save
      CHANGING gt_screen_person
               gs_screen_person
               gv_add
               gv_current_index.


    WHEN 'ADD'.

      PERFORM add
      CHANGING gs_screen_person
               gv_add.

    WHEN 'DELETE'.

      PERFORM delete
      CHANGING gt_screen_person
               gs_screen_person
               gv_current_index.

    WHEN 'CANCEL'.

      PERFORM cancel
      USING    gt_screen_person
               gv_current_index
      CHANGING gs_screen_person
               gv_add.

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
*&---------------------------------------------------------------------*
*&      Form  NEXT
*&---------------------------------------------------------------------*
*       text
*----------------------------------------------------------------------*
*      -->P_GT_SCREEN_PERSON  text
*      <--P_GV_CURENT_INDEX  text
*      <--P_GV_SCREEN_PERSON  text
*----------------------------------------------------------------------*
FORM next
  USING    it_person TYPE zosy_tab_screen_person
           iv_length TYPE i
  CHANGING cv_current_index TYPE i
           cs_screen_person TYPE zosy_str_screen_person.

  IF 0 < cv_current_index AND cv_current_index < iv_length.
    cv_current_index = cv_current_index + 1.
    READ TABLE it_person INDEX cv_current_index INTO cs_screen_person.

  ENDIF.

ENDFORM.
*&---------------------------------------------------------------------*
*&      Form  CLEAR
*&---------------------------------------------------------------------*
*       text
*----------------------------------------------------------------------*
*  -->  p1        text
*  <--  p2        text
*----------------------------------------------------------------------*
FORM clear
  CHANGING cs_screen_person TYPE zosy_str_screen_person.

  CLEAR cs_screen_person.

ENDFORM.
*&---------------------------------------------------------------------*
*&      Form  SAVE
*&---------------------------------------------------------------------*
*       text
*----------------------------------------------------------------------*
*      <--P_GS_SCREEN_PERSON  text
*----------------------------------------------------------------------*
FORM save

  CHANGING ct_person TYPE zosy_tab_screen_person
           cs_screen_person TYPE zosy_str_screen_person
           cv_add TYPE c
           cv_current_index TYPE i.


  IF cv_add = 'X'.
    APPEND cs_screen_person TO ct_person.
    cv_current_index = lines( ct_person ).

  ELSE.
    MODIFY ct_person INDEX cv_current_index FROM cs_screen_person.

  ENDIF.

  CLEAR cv_add.

ENDFORM.
*&---------------------------------------------------------------------*
*&      Form  ADD
*&---------------------------------------------------------------------*
*       text
*----------------------------------------------------------------------*
*  -->  p1        text
*  <--  p2        text=
*----------------------------------------------------------------------*
FORM add
  CHANGING cs_screen_person TYPE zosy_str_screen_person
           cv_add TYPE c.

  CLEAR cs_screen_person.
  cv_add = 'X'.

ENDFORM.
*&---------------------------------------------------------------------*
*&      Form  DELETE
*&---------------------------------------------------------------------*
*       text
*----------------------------------------------------------------------*
*      -->P_WHEN  text
*      -->P_OTHERS  text
*----------------------------------------------------------------------*
FORM delete
  CHANGING ct_person TYPE zosy_tab_screen_person
           cs_screen_person TYPE zosy_str_screen_person
           cv_current_index TYPE i.


  CLEAR cs_screen_person.
  DELETE ct_person INDEX cv_current_index.



  IF lines( ct_person ) = 0.
    LEAVE TO SCREEN 0.

  ELSE.

    IF cv_current_index > lines( ct_person ).
      "last line deleted
      cv_current_index = cv_current_index - 1.
    ENDIF.

    READ TABLE ct_person INDEX cv_current_index INTO cs_screen_person.
  ENDIF.

ENDFORM.
*&---------------------------------------------------------------------*
*&      Form  CANCEL
*&---------------------------------------------------------------------*
*       text
*----------------------------------------------------------------------*
*  -->  p1        text
*  <--  p2        text
*----------------------------------------------------------------------*
FORM cancel
  USING    it_person TYPE zosy_tab_screen_person
           iv_current_index TYPE i
  CHANGING cs_screen_person TYPE zosy_str_screen_person
           cv_add TYPE c.

  IF cv_add = 'X'.

    READ TABLE it_person INDEX iv_current_index INTO cs_screen_person.
    CLEAR cv_add.
  ENDIF.

ENDFORM.
