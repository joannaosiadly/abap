*&---------------------------------------------------------------------*
*& Report  ZOSY_SCREEN_TABLES
*&
*&---------------------------------------------------------------------*
*&
*&
*&---------------------------------------------------------------------*
REPORT zosy_screen_tables.

DATA gv_okcode TYPE sy-ucomm.
TABLES zosy_str_screen_person.

INCLUDE zosy_screen_tables_o01.
INCLUDE zosy_screen_tables_i01.
INCLUDE zosy_screen_tables_f01.

START-OF-SELECTION.


zosy_str_screen_person-firstname = 'Jan'.
zosy_str_screen_person-surname = 'Kowalski'.

CALL SCREEN '0100'.

  WRITE 'PROGRAM END'.
