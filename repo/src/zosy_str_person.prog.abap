*&---------------------------------------------------------------------*
*& Report  ZOSY_STR_PERSON
*&
*&---------------------------------------------------------------------*
*&
*&
*&---------------------------------------------------------------------*
REPORT zosy_str_person.

DATA gs_person1 TYPE zosy_str_person.
DATA gs_person2 TYPE zosy_str_person.
DATA gs_person3 TYPE zosy_str_person.
DATA gv_surname TYPE zosy_surname.


gs_person1-firstname = 'Jan'.
gs_person1-surname = 'Kowalski'.
gs_person1-street = 'Arbuzowa'.
gs_person1-city = 'Wrocław'.
gs_person1-sex = 'M'.
gs_person1-age = 5.
*gv_surname = 'kot'.

*CLEAR gv_surname.

gs_person2-firstname = 'Ola'.
gs_person2-surname = 'Marak'.
gs_person2-street = 'Kwiatowa'.
gs_person2-city = 'Opole'.
gs_person2-sex = 'F'.
gs_person2-age = 30.
*gs_person2 = gs_person1.

*CLEAR gs_person1.
*CLEAR gs_person2-surname.

gs_person3-firstname = 'Janina'.
gs_person3-surname = 'Tytusowa'.
gs_person3-street = 'Kolorowa'.
gs_person3-city = 'zakopane'.
gs_person3-sex = 'F'.
gs_person3-age = 50.

PERFORM person
USING gs_person1.

WRITE /.
WRITE /.
WRITE /.

PERFORM person
USING gs_person2.

WRITE /.
WRITE /.
WRITE /.

PERFORM person
USING gs_person3.

WRITE /.
WRITE /.
WRITE /.

FORM person
 USING is_person TYPE zosy_str_person.

  WRITE is_person-firstname.
  WRITE /.
  WRITE is_person-surname.
  WRITE /.
  WRITE is_person-street.
  WRITE /.
  WRITE is_person-city.
  WRITE /.
  WRITE is_person-sex.
  WRITE /.
  WRITE is_person-age.


ENDFORM.
