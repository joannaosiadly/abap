*&---------------------------------------------------------------------*
*& Report  ZOSY_HELLO_WORLD
*&
*&---------------------------------------------------------------------*
*&
*&
*&---------------------------------------------------------------------*
REPORT zosy_hello_world.
PARAMETERS p_fname TYPE zosy_first_name.
WRITE 'hello world'.
WRITE /.
WRITE 'my name is...'.
WRITE p_fname.
