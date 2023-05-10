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
                 zosy_str_screen_person_scr.


    WHEN 'NEXT'.

      PERFORM next
          USING    gt_screen_person
                   gv_length
          CHANGING gv_current_index
                   zosy_str_screen_person_scr.


    WHEN 'CLEAR'.

      PERFORM clear
      CHANGING zosy_str_screen_person_scr.

    WHEN 'SAVE'.

      PERFORM save
      CHANGING gt_screen_person
               zosy_str_screen_person_scr
               gv_add
               gv_current_index.


    WHEN 'ADD'.

      PERFORM add
      CHANGING zosy_str_screen_person_scr
               gv_add.

    WHEN 'DELETE'.

      PERFORM delete
      CHANGING gt_screen_person
               zosy_str_screen_person_scr
               gv_current_index.

    WHEN 'CANCEL'.

      PERFORM cancel
      USING    gt_screen_person
               gv_current_index
      CHANGING zosy_str_screen_person_scr
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
           cs_screen_data TYPE zosy_str_screen_person_scr.

  DATA ls_screen_data TYPE zosy_str_screen_person.


  IF cv_current_index > 1.
    cv_current_index = cv_current_index - 1.
    READ TABLE it_person INDEX cv_current_index INTO ls_screen_data.
    cs_screen_data-firstname = ls_screen_data-firstname.
    cs_screen_data-surname = ls_screen_data-surname.
    cs_screen_data-street = ls_screen_data-street.
    cs_screen_data-number_buld = ls_screen_data-number_buld.
    cs_screen_data-city = ls_screen_data-city.
    cs_screen_data-sex = ls_screen_data-sex.
    cs_screen_data-age = ls_screen_data-age.
    cs_screen_data-eye_color = ls_screen_data-eye_color.
    cs_screen_data-income = ls_screen_data-income.

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
           cs_screen_data TYPE zosy_str_screen_person_scr.
  DATA ls_screen_data TYPE zosy_str_screen_person.

  IF 0 < cv_current_index AND cv_current_index < iv_length.
    cv_current_index = cv_current_index + 1.
    READ TABLE it_person INDEX cv_current_index INTO ls_screen_data.
    cs_screen_data-firstname = ls_screen_data-firstname.
    cs_screen_data-surname = ls_screen_data-surname.
    cs_screen_data-street = ls_screen_data-street.
    cs_screen_data-number_buld = ls_screen_data-number_buld.
    cs_screen_data-city = ls_screen_data-city.
    cs_screen_data-sex = ls_screen_data-sex.
    cs_screen_data-age = ls_screen_data-age.
    cs_screen_data-eye_color = ls_screen_data-eye_color.
    cs_screen_data-income = ls_screen_data-income.

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
  CHANGING  cs_screen_data TYPE zosy_str_screen_person_scr.


  CLEAR cs_screen_data.
* czy nie wysarczy samo clear cs_screen_data?
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
           cs_screen_data TYPE zosy_str_screen_person_scr
           cv_add TYPE c
           cv_current_index TYPE i.
  DATA ls_screen_data TYPE zosy_str_screen_person.

  ls_screen_data-firstname = cs_screen_data-firstname.
  ls_screen_data-surname = cs_screen_data-surname.
  ls_screen_data-street = cs_screen_data-street.
  ls_screen_data-number_buld = cs_screen_data-number_buld.
  ls_screen_data-city = cs_screen_data-city.
  ls_screen_data-sex = cs_screen_data-sex.
  ls_screen_data-age = cs_screen_data-age.
  ls_screen_data-eye_color = cs_screen_data-eye_color.
  ls_screen_data-income = cs_screen_data-income.

  IF cv_add = 'X'.


    APPEND ls_screen_data TO ct_person.
    cv_current_index = lines( ct_person ).
    cv_add = ' '.

  ELSE.
    MODIFY ct_person INDEX cv_current_index FROM ls_screen_data.



  ENDIF.

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
  CHANGING cs_screen_data TYPE zosy_str_screen_person_scr
           cv_add TYPE c.

  CLEAR cs_screen_data.
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
           cs_screen_data TYPE zosy_str_screen_person_scr
           cv_current_index TYPE i.
  DATA ls_screen_data TYPE zosy_str_screen_person.

  CLEAR cs_screen_data.
  DELETE ct_person INDEX cv_current_index.



  IF lines( ct_person ) = 0.
    LEAVE TO SCREEN 0.

  ELSE.

    IF cv_current_index > lines( ct_person ).
      "last line deleted
      cv_current_index = cv_current_index - 1.
    ENDIF.

    READ TABLE ct_person INDEX cv_current_index INTO ls_screen_data.
    cs_screen_data-firstname = ls_screen_data-firstname.
    cs_screen_data-surname = ls_screen_data-surname.
    cs_screen_data-street = ls_screen_data-street.
    cs_screen_data-number_buld = ls_screen_data-number_buld.
    cs_screen_data-city = ls_screen_data-city.
    cs_screen_data-sex = ls_screen_data-sex.
    cs_screen_data-age = ls_screen_data-age.
    cs_screen_data-eye_color = ls_screen_data-eye_color.
    cs_screen_data-income = ls_screen_data-income.


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
  CHANGING cs_screen_data TYPE zosy_str_screen_person_scr
           cv_add TYPE c.
  DATA ls_screen_data TYPE zosy_str_screen_person.


  IF cv_add = 'X'.

    READ TABLE it_person INDEX iv_current_index INTO ls_screen_data.
    cs_screen_data-firstname = ls_screen_data-firstname.
    cs_screen_data-surname = ls_screen_data-surname.
    cs_screen_data-street = ls_screen_data-street.
    cs_screen_data-number_buld = ls_screen_data-number_buld.
    cs_screen_data-city = ls_screen_data-city.
    cs_screen_data-sex = ls_screen_data-sex.
    cs_screen_data-age = ls_screen_data-age.
    cs_screen_data-eye_color = ls_screen_data-eye_color.
    cs_screen_data-income = ls_screen_data-income.
cv_add = ' '.
  ENDIF.


ENDFORM.
*&---------------------------------------------------------------------*
*&      Form  HIDE_FIELDS
*&---------------------------------------------------------------------*
*       text
*----------------------------------------------------------------------*
*  -->  p1        text
*  <--  p2        text
*----------------------------------------------------------------------*
FORM hide_fields
    USING
          iv_add TYPE c
          it_person TYPE zosy_tab_screen_person
  CHANGING cv_current_index TYPE i.

  LOOP AT SCREEN.



    IF screen-name = 'BUTTON_NEXT'.
      IF cv_current_index = lines( it_person ) OR iv_add = 'X'.
        screen-active = '0'.
        MODIFY SCREEN.
      ENDIF.
    ENDIF.

*    IF screen-name = 'BUTTON_NEXT'.
*      IF iv_add = ' '.
*        screen-active = '0'.
*        MODIFY SCREEN.
*      ENDIF.
*    ENDIF.
*
*    IF screen-name = 'BUTTON_PREV'.
*      IF iv_add = ' '.
*        screen-active = '0'.
*        MODIFY SCREEN.
*      ENDIF.
*    ENDIF.


    IF screen-name = 'BUTTON_ADD'.
      IF iv_add = 'X'.
        screen-active = '0'.
        MODIFY SCREEN.
      ENDIF.
    ENDIF.

    IF screen-name = 'BUTTON_DELETE'.
      IF iv_add = 'X'.
        screen-active = '0'.
        MODIFY SCREEN.
      ENDIF.
    ENDIF.



    IF screen-name = 'BUTTON_CANCEL'.
      IF iv_add = ' '.
        screen-active = '0'.
        MODIFY SCREEN.
      ENDIF.
    ENDIF.

    IF screen-name = 'BUTTON_PREV'.
      IF cv_current_index = 1 OR iv_add = 'X'.
        screen-active = '0'.
        MODIFY SCREEN.
      ENDIF.
    ENDIF.


  ENDLOOP.
ENDFORM.
*&---------------------------------------------------------------------*
*&      Form  FIELD_CANCEL
*&---------------------------------------------------------------------*
*       text
*----------------------------------------------------------------------*
*  -->  p1        text
*  <--  p2        text
*----------------------------------------------------------------------*
*&---------------------------------------------------------------------*
*&      Form  PREPARE_TABLE_OF_PERSON
*&---------------------------------------------------------------------*
*       text
*----------------------------------------------------------------------*
*  -->  p1        text
*  <--  p2        text
*----------------------------------------------------------------------*
FORM prepare_table_of_person
CHANGING ct_screen_person TYPE zosy_tab_screen_person.

  DATA ls_screen_person TYPE zosy_str_screen_person.

  ls_screen_person-firstname = 'Jan'.
  ls_screen_person-surname = 'Kowalski'.
  ls_screen_person-street = 'Arbuzowa'.
  ls_screen_person-number_buld = 30.
  ls_screen_person-city = 'Wrocław'.
  ls_screen_person-sex = 'M'.
  ls_screen_person-age = 5.
  ls_screen_person-eye_color = 'blue'.
  ls_screen_person-income = '8500'.
  APPEND ls_screen_person TO gt_screen_person.


  CLEAR ls_screen_person.
  ls_screen_person-firstname = 'Ola'.
  ls_screen_person-surname = 'Marak'.
  ls_screen_person-street = 'Kwiatowa'.
  ls_screen_person-number_buld = 20.
  ls_screen_person-city = 'Opole'.
  ls_screen_person-sex = 'F'.
  ls_screen_person-age = 30.
  ls_screen_person-eye_color = 'blue'.
  ls_screen_person-income = '5000'.
  APPEND ls_screen_person TO gt_screen_person.


  CLEAR ls_screen_person.
  ls_screen_person-firstname = 'Janina'.
  ls_screen_person-surname = 'Tytusowa'.
  ls_screen_person-street = 'Kolorowa'.
  ls_screen_person-number_buld = 1.
  ls_screen_person-city = 'zakopane'.
  ls_screen_person-sex = 'F'.
  ls_screen_person-age = 50.
  ls_screen_person-eye_color = 'multi'.
  ls_screen_person-income = '15000'.
  APPEND ls_screen_person TO gt_screen_person.


  CLEAR ls_screen_person.
  ls_screen_person-firstname = 'Olek'.
  ls_screen_person-surname = 'Chmurka'.
  ls_screen_person-street = 'Prusa'.
  ls_screen_person-number_buld = 100.
  ls_screen_person-city = 'Oslo'.
  ls_screen_person-sex = 'M'.
  ls_screen_person-age = 10.
  ls_screen_person-eye_color = 'brown'.
  ls_screen_person-income = '7490'.
  APPEND ls_screen_person TO gt_screen_person.


  CLEAR ls_screen_person.
  ls_screen_person-firstname = 'Michał'.
  ls_screen_person-surname = 'Kunysz'.
  ls_screen_person-street = 'Morska'.
  ls_screen_person-number_buld = 5.
  ls_screen_person-city = 'Dziwnów'.
  ls_screen_person-sex = 'M'.
  ls_screen_person-age = 66.
  ls_screen_person-eye_color = 'green'.
  ls_screen_person-income = '1234'.
  APPEND ls_screen_person TO gt_screen_person.

  CLEAR ls_screen_person.

ENDFORM.
*&---------------------------------------------------------------------*
*&      Form  PREPARE_SCREEN_STR
*&---------------------------------------------------------------------*
*       text
*----------------------------------------------------------------------*
*  -->  p1        text
*  <--  p2        text
*----------------------------------------------------------------------*
*FORM prepare_screen_str
*     USING it_screen_person TYPE zosy_tab_screen_person
*     CHANGING cs_screen_data TYPE zosy_str_screen_person_scr.
**  DATA ls_screen_person TYPE zosy_str_screen_person.
*
*  cs_screen_data-firstname = gs_screen_person-firstname.
*  cs_screen_data-surname = gs_screen_person-surname.
*  cs_screen_data-street = gs_screen_person-street.
*  cs_screen_data-number_buld = gs_screen_person-number_buld.
*  cs_screen_data-city = gs_screen_person-city.
*  cs_screen_data-sex = gs_screen_person-sex.
*  cs_screen_data-age = gs_screen_person-age.
*  cs_screen_data-eye_color = gs_screen_person-eye_color.
*  cs_screen_data-income =  gs_screen_person-income.
*
*
*ENDFORM.
