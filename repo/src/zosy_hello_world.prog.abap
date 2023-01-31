*&---------------------------------------------------------------------*
*& Report  ZOSY_HELLO_WORLD
*&
*&---------------------------------------------------------------------*
*&
*&
*&---------------------------------------------------------------------*
REPORT zosy_hello_world.
PARAMETERS p_fname TYPE zosy_first_name.
PARAMETERS p_sname TYPE zosy_surname.
PARAMETERS p_pesel TYPE zosy_pesel.

DATA gv_first_name1 TYPE zosy_first_name.
DATA gv_surname1 TYPE zosy_surname.
DATA gv_pesel1 TYPE zosy_pesel.
DATA gv_first_name2 TYPE zosy_first_name.
DATA gv_surname2 TYPE zosy_surname.
DATA gv_pesel2 TYPE zosy_pesel.

gv_first_name1 = 'Jola'.
gv_surname1 = 'Kota'.
gv_pesel1 = '90120783720'.
gv_first_name2 = 'Bardzodlugieimiedamskiepolskiekotwksiazkalego'.
gv_surname2 = 'Kolowrotek'.
gv_pesel2 = '90120778690'.

*gv_first_name1 = gv_first_name2.

* Now program will print person data

WRITE 'hello world'.
WRITE /.
WRITE 'my name is...'.
WRITE p_fname.
WRITE /.
WRITE 'my surname is...'.
WRITE p_sname.
WRITE /.
WRITE 'my social security number is...'.
WRITE p_pesel.
WRITE /.
WRITE /.
WRITE /.
WRITE 'my name is...'.
WRITE gv_first_name1.
WRITE /.
WRITE 'my surname is...'.
WRITE gv_surname1.
WRITE /.
WRITE 'my social security number is...'.
WRITE gv_pesel1.
WRITE /.
WRITE /.
WRITE /.
WRITE 'my name is...'.
WRITE gv_first_name2.
WRITE /.
WRITE 'my surname is...'.
WRITE gv_surname2.
WRITE /.
WRITE 'my social security number is...'.
WRITE gv_pesel2.
