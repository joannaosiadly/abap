*&---------------------------------------------------------------------*
*& Report  ZOSY_MARRIGE
*&
*&---------------------------------------------------------------------*
*&
*&
*&---------------------------------------------------------------------*
REPORT zosy_marrige.

DATA gv_surname1 TYPE zosy_surname.
DATA gv_surname2 TYPE zosy_surname.
DATA gv_surname3 TYPE zosy_surname.
DATA gv_surname4 TYPE zosy_surname.
DATA gv_surname5 TYPE zosy_surname.
DATA gv_surname6 TYPE zosy_surname.
DATA gv_sex1 TYPE zosy_sex.
DATA gv_sex2 TYPE zosy_sex.
DATA gv_sex3 TYPE zosy_sex.
DATA gv_sex4 TYPE zosy_sex.
DATA gv_sex5 TYPE zosy_sex.
DATA gv_sex6 TYPE zosy_sex.
DATA gv_marr1 TYPE zosy_marrige.
DATA gv_marr2 TYPE zosy_marrige.
DATA gv_marr3 TYPE zosy_marrige.

gv_surname1 = 'Kołowrotek'.
gv_surname2 = 'Kantek'.
gv_surname3 = 'Kasprzak'.
gv_surname4 = 'Korytko'.
gv_surname5 = 'Żewłakow'.
gv_surname6 = 'Palutkiewicz'.

gv_sex1 = 'M'.
gv_sex2 = 'M'.
gv_sex3 = 'F'.
gv_sex4 = 'M'.
gv_sex5 = 'F'.
gv_sex6 = 'F'.

PERFORM marrige
USING
      gv_sex1
      gv_sex2

CHANGING
      gv_surname1
      gv_surname2.


WRITE /.
WRITE /.
WRITE /.
WRITE /.

PERFORM marrige
USING
      gv_sex3
      gv_sex4

CHANGING gv_surname3
      gv_surname4.


WRITE /.
WRITE /.
WRITE /.
WRITE /.

PERFORM marrige
USING
      gv_sex5
      gv_sex6

CHANGING
      gv_surname5
      gv_surname6.

WRITE /.
WRITE /.
WRITE /.
WRITE /.




FORM marrige
  USING iv_sexa TYPE zosy_sex
        iv_sexb TYPE zosy_sex

  CHANGING cv_sura TYPE zosy_surname
           cv_surb TYPE zosy_surname.

  IF iv_sexa = iv_sexb.


  ELSE.
    IF iv_sexa = 'M' AND iv_sexb = 'F'.
      cv_surb = cv_sura.
    ELSE.

    ENDIF.

  ENDIF.

ENDFORM.
