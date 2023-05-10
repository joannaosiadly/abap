*&---------------------------------------------------------------------*
*& Report  ZOSY_SCREEN_PERSON
*&
*&---------------------------------------------------------------------*
*&
*&
*&---------------------------------------------------------------------*
REPORT zosy_screen_person.

DATA gv_okcode TYPE sy-ucomm.
DATA gs_screen_person TYPE zosy_str_screen_person.
DATA gs_person_temp TYPE zosy_str_screen_person.
DATA gt_screen_person TYPE zosy_tab_screen_person.
DATA gv_current_index TYPE i.
DATA gv_length TYPE i.
DATA gv_add TYPE c.
DATA gv_button_hidden TYPE c.
TABLES zosy_str_screen_person_scr.
DATA gv_numb TYPE zosy_big_number.
DATA gv_numer_as_word TYPE zosy_number2.
TYPES t_numc3 TYPE n LENGTH 3.



INCLUDE zosy_screen_person_0o01.
INCLUDE zosy_screen_person_i01.
INCLUDE zosy_screen_person_f01.
INCLUDE zosy_big_number_form.


START-OF-SELECTION.


  PERFORM prepare_table_of_person
          CHANGING gt_screen_person.

  READ TABLE gt_screen_person INDEX 1 INTO gs_screen_person.
*  gv_numb = gs_screen_person-income.



*PERFORM big_number_in_words
*USING gv_numb
*CHANGING gv_numer_as_word.

*  PERFORM prepare_screen_str
*        USING gs_screen_person
*        CHANGING zosy_str_screen_person_scr.


  gv_current_index = 1.
  gv_length = lines( gt_screen_person ).

  zosy_str_screen_person_scr-firstname = gs_screen_person-firstname.
  zosy_str_screen_person_scr-surname = gs_screen_person-surname.
  zosy_str_screen_person_scr-street = gs_screen_person-street.
  zosy_str_screen_person_scr-number_buld = gs_screen_person-number_buld.
  zosy_str_screen_person_scr-city = gs_screen_person-city.
  zosy_str_screen_person_scr-sex = gs_screen_person-sex.
  zosy_str_screen_person_scr-age = gs_screen_person-age.
  zosy_str_screen_person_scr-eye_color = gs_screen_person-eye_color.
  zosy_str_screen_person_scr-income =  gs_screen_person-income.
  zosy_str_screen_person_scr-income_in_words = gv_numer_as_word.




  CALL SCREEN '0100'.

  WRITE 'PROGRAM END'.
