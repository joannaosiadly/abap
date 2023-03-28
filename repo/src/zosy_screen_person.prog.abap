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
DATA gt_screen_person TYPE zosy_tab_screen_person.
DATA gv_current_index TYPE i.
DATA gv_length TYPE i.



INCLUDE zosy_screen_person_0o01.
INCLUDE zosy_screen_person_i01.
INCLUDE zosy_screen_person_f01.

START-OF-SELECTION.



  gs_screen_person-firstname = 'Jan'.
  gs_screen_person-surname = 'Kowalski'.
  gs_screen_person-street = 'Arbuzowa'.
  gs_screen_person-number_buld = 30.
  gs_screen_person-city = 'Wrocław'.
  gs_screen_person-sex = 'M'.
  gs_screen_person-age = 5.
  gs_screen_person-eye_color = 'blue'.
  APPEND gs_screen_person TO gt_screen_person.


  CLEAR gs_screen_person.
  gs_screen_person-firstname = 'Ola'.
  gs_screen_person-surname = 'Marak'.
  gs_screen_person-street = 'Kwiatowa'.
  gs_screen_person-number_buld = 20.
  gs_screen_person-city = 'Opole'.
  gs_screen_person-sex = 'F'.
  gs_screen_person-age = 30.
  gs_screen_person-eye_color = 'blue'.
  APPEND gs_screen_person TO gt_screen_person.


  CLEAR gs_screen_person.
  gs_screen_person-firstname = 'Janina'.
  gs_screen_person-surname = 'Tytusowa'.
  gs_screen_person-street = 'Kolorowa'.
  gs_screen_person-number_buld = 1.
  gs_screen_person-city = 'zakopane'.
  gs_screen_person-sex = 'F'.
  gs_screen_person-age = 50.
  gs_screen_person-eye_color = 'multi'.
  APPEND gs_screen_person TO gt_screen_person.


  CLEAR gs_screen_person.
  gs_screen_person-firstname = 'Olek'.
  gs_screen_person-surname = 'Chmurka'.
  gs_screen_person-street = 'Prusa'.
  gs_screen_person-number_buld = 100.
  gs_screen_person-city = 'Oslo'.
  gs_screen_person-sex = 'M'.
  gs_screen_person-age = 10.
  gs_screen_person-eye_color = 'brown'.
  APPEND gs_screen_person TO gt_screen_person.


  CLEAR gs_screen_person.
  gs_screen_person-firstname = 'Michał'.
  gs_screen_person-surname = 'Kunysz'.
  gs_screen_person-street = 'Morska'.
  gs_screen_person-number_buld = 5.
  gs_screen_person-city = 'Dziwnów'.
  gs_screen_person-sex = 'M'.
  gs_screen_person-age = 66.
  gs_screen_person-eye_color = 'green'.
  APPEND gs_screen_person TO gt_screen_person.

  CLEAR gs_screen_person.
  READ TABLE gt_screen_person INDEX 1 INTO gs_screen_person.

  gv_current_index = 1.
  gv_length = lines( gt_screen_person ).

  CALL SCREEN '0100'.

  WRITE 'PROGRAM END'.
