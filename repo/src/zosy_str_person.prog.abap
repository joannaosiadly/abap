*&---------------------------------------------------------------------*
*& Report  ZOSY_STR_PERSON
*&
*&---------------------------------------------------------------------*
*&
*&
*&---------------------------------------------------------------------*
REPORT zosy_str_person.


DATA gs_person TYPE zosy_str_person.

DATA gt_person TYPE zosy_tab_person.
DATA gv_i TYPE i.



gs_person-firstname = 'Jan'.
gs_person-surname = 'Kowalski'.
gs_person-street = 'Arbuzowa'.
gs_person-city = 'Wrocław'.
gs_person-sex = 'M'.
gs_person-age = 5.
APPEND gs_person TO gt_person.


CLEAR gs_person.
gs_person-firstname = 'Ola'.
gs_person-surname = 'Marak'.
gs_person-street = 'Kwiatowa'.
gs_person-city = 'Opole'.
gs_person-sex = 'F'.
gs_person-age = 30.
APPEND gs_person TO gt_person.


CLEAR gs_person.
gs_person-firstname = 'Janina'.
gs_person-surname = 'Tytusowa'.
gs_person-street = 'Kolorowa'.
gs_person-city = 'zakopane'.
gs_person-sex = 'F'.
gs_person-age = 50.
APPEND gs_person TO gt_person.


CLEAR gs_person.
gs_person-firstname = 'Olek'.
gs_person-surname = 'Chmurka'.
gs_person-street = 'Prusa'.
gs_person-city = 'Oslo'.
gs_person-sex = 'M'.
gs_person-age = 10.
APPEND gs_person TO gt_person.


CLEAR gs_person.
gs_person-firstname = 'Michał'.
gs_person-surname = 'Kunysz'.
gs_person-street = 'Morska'.
gs_person-city = 'Dziwnów'.
gs_person-sex = 'M'.
gs_person-age = 66.
APPEND gs_person TO gt_person.



PERFORM person
USING gt_person.

WRITE /.
WRITE /.
WRITE /.



*FORM person
* USING it_person TYPE zosy_str_person.
*
*  WRITE is_person-firstname.
*  WRITE /.
*  WRITE is_person-surname.
*  WRITE /.
*  WRITE is_person-street.
*  WRITE /.
*  WRITE is_person-city.
*  WRITE /.
*  WRITE is_person-sex.
*  WRITE /.
*  WRITE is_person-age.
*
*
*ENDFORM.

FORM person

  USING it_person TYPE zosy_tab_person.
  DATA ls_person TYPE zosy_str_person.


  LOOP AT it_person INTO ls_person.

    WRITE ls_person-firstname.
    WRITE /.
    WRITE ls_person-surname.
    WRITE /.
    WRITE ls_person-street.
    WRITE /.
    WRITE ls_person-city.
    WRITE /.
    WRITE ls_person-sex.
    WRITE /.
    WRITE ls_person-age.
    WRITE /.
    WRITE /.
    WRITE /.

  ENDLOOP.

ENDFORM.
