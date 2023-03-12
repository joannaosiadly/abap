*&---------------------------------------------------------------------*
*& Report  ZOSY_MARRIGE
*&
*&---------------------------------------------------------------------*
*&
*&
*&---------------------------------------------------------------------*
REPORT zosy_marrige.

DATA gv_first_name1 TYPE zosy_first_name.
DATA gv_surname1 TYPE zosy_surname.
DATA gv_pesel1 TYPE zosy_pesel.
DATA gv_street1 TYPE zosy_street.
DATA gv_number1 TYPE zosy_number.
DATA gv_postcode1 TYPE zosy_postcode.
DATA gv_city1 TYPE zosy_city.
DATA gv_province1 TYPE zosy_province.
DATA gv_country1 TYPE zosy_country.
DATA gv_age1 TYPE zosy_age.
DATA gv_sex1 TYPE zosy_sex.
DATA gv_first_name2 TYPE zosy_first_name.
DATA gv_surname2 TYPE zosy_surname.
DATA gv_pesel2 TYPE zosy_pesel.
DATA gv_street2 TYPE zosy_street.
DATA gv_number2 TYPE zosy_number.
DATA gv_postcode2 TYPE zosy_postcode.
DATA gv_city2 TYPE zosy_city.
DATA gv_province2 TYPE zosy_province.
DATA gv_country2 TYPE zosy_country.
DATA gv_age2 TYPE zosy_age.
DATA gv_sex2 TYPE zosy_sex.
DATA gv_first_name3 TYPE zosy_first_name.
DATA gv_surname3 TYPE zosy_surname.
DATA gv_pesel3 TYPE zosy_pesel.
DATA gv_street3 TYPE zosy_street.
DATA gv_number3 TYPE zosy_number.
DATA gv_postcode3 TYPE zosy_postcode.
DATA gv_city3 TYPE zosy_city.
DATA gv_province3 TYPE zosy_province.
DATA gv_country3 TYPE zosy_country.
DATA gv_age3 TYPE zosy_age.
DATA gv_sex3 TYPE zosy_sex.
DATA gv_first_name4 TYPE zosy_first_name.
DATA gv_surname4 TYPE zosy_surname.
DATA gv_pesel4 TYPE zosy_pesel.
DATA gv_street4 TYPE zosy_street.
DATA gv_number4 TYPE zosy_number.
DATA gv_postcode4 TYPE zosy_postcode.
DATA gv_city4 TYPE zosy_city.
DATA gv_province4 TYPE zosy_province.
DATA gv_country4 TYPE zosy_country.
DATA gv_age4 TYPE zosy_age.
DATA gv_sex4 TYPE zosy_sex.
DATA gv_first_name5 TYPE zosy_first_name.
DATA gv_surname5 TYPE zosy_surname.
DATA gv_pesel5 TYPE zosy_pesel.
DATA gv_street5 TYPE zosy_street.
DATA gv_number5 TYPE zosy_number.
DATA gv_postcode5 TYPE zosy_postcode.
DATA gv_city5 TYPE zosy_city.
DATA gv_province5 TYPE zosy_province.
DATA gv_country5 TYPE zosy_country.
DATA gv_age5 TYPE zosy_age.
DATA gv_sex5 TYPE zosy_sex.
DATA gv_first_name6 TYPE zosy_first_name.
DATA gv_surname6 TYPE zosy_surname.
DATA gv_pesel6 TYPE zosy_pesel.
DATA gv_street6 TYPE zosy_street.
DATA gv_number6 TYPE zosy_number.
DATA gv_postcode6 TYPE zosy_postcode.
DATA gv_city6 TYPE zosy_city.
DATA gv_province6 TYPE zosy_province.
DATA gv_country6 TYPE zosy_country.
DATA gv_age6 TYPE zosy_age.
DATA gv_sex6 TYPE zosy_sex.

gv_first_name1 = 'Jola'.
gv_surname1 = 'Kota'.
gv_pesel1 = '90120783720'.
gv_street1 = 'Karmelkowa'.
gv_number1 = '30'.
gv_postcode1 = '54119'.
gv_city1 = 'Warszawa'.
gv_province1 = 'wielkopolskie'.
gv_country1 = 'Polska'.
gv_age1 = '30'.
gv_sex1 = 'F'.
gv_first_name2 = 'Marian'.
gv_surname2 = 'Kolowrotek'.
gv_pesel2 = '90120778690'.
gv_street2 = 'Arbuzowa'.
gv_number2 = '18'.
gv_postcode2 = '54119'.
gv_city2 = 'Wroclaw'.
gv_province2 = 'lubuskie'.
gv_country2 = 'Niemcy'.
gv_age2 = '5'.
gv_sex2 = 'M'.
gv_first_name3 = 'Marek'.
gv_surname3 = 'Wacek'.
gv_pesel3 = '771209203974'.
gv_street3 = 'Skargi'.
gv_number3 = '99'.
gv_postcode3 = '55123'.
gv_city3 = 'Sopot'.
gv_province3 = 'zachodnie'.
gv_country3 = 'Polska'.
gv_age3 = '24'.
gv_sex3 = 'M'.
gv_first_name4 = 'Marco'.
gv_surname4 = 'Wiatrak'.
gv_pesel4 = '90092309987'.
gv_street4 = 'Bzowa'.
gv_number4 = '31'.
gv_postcode4 = '54123'.
gv_city4 = 'Warszawa'.
gv_province4 = 'małopolskie'.
gv_country4 = 'Polska'.
gv_age4 = '30'.
gv_sex4 = 'M'.
gv_first_name5 = 'Konrad'.
gv_surname5 = 'Gaawron'.
gv_pesel5 = '901207783292'.
gv_street5 = 'Wichury'.
gv_number5 = '15'.
gv_postcode5 = '67115'.
gv_city5 = 'Bytom'.
gv_province5 = 'lubuskie'.
gv_country5 = 'Niemcy'.
gv_age5 = '20'.
gv_sex5 = 'M'.
gv_first_name6 = 'Janina'.
gv_surname6 = 'Zbychu'.
gv_pesel6 = '7712092032'.
gv_street6 = 'KOlejowa'.
gv_number6 = '20'.
gv_postcode6 = '20452'.
gv_city6 = 'Gdynia'.
gv_province6 = 'pomorskie'.
gv_country6 = 'Polska'.
gv_age6 = '24'.
gv_sex6 = 'F'.

PERFORM summary
USING gv_first_name1
      gv_surname1
      gv_pesel1
      gv_street1
      gv_number1
      gv_postcode1
      gv_city1
      gv_province1
      gv_country1
      gv_age1
      gv_sex1.

PERFORM summary
USING gv_first_name2
      gv_surname2
      gv_pesel2
      gv_street2
      gv_number2
      gv_postcode2
      gv_city2
      gv_province2
      gv_country2
      gv_age2
      gv_sex2.

PERFORM summary
USING gv_first_name3
      gv_surname3
      gv_pesel3
      gv_street3
      gv_number3
      gv_postcode3
      gv_city3
      gv_province3
      gv_country3
      gv_age3
      gv_sex3.

PERFORM summary
USING gv_first_name4
      gv_surname4
      gv_pesel4
      gv_street4
      gv_number4
      gv_postcode4
      gv_city4
      gv_province4
      gv_country4
      gv_age4
      gv_sex4.

PERFORM summary
USING gv_first_name5
      gv_surname5
      gv_pesel5
      gv_street5
      gv_number5
      gv_postcode5
      gv_city5
      gv_province5
      gv_country5
      gv_age5
      gv_sex5.

PERFORM summary
USING gv_first_name6
      gv_surname6
      gv_pesel6
      gv_street6
      gv_number6
      gv_postcode6
      gv_city6
      gv_province6
      gv_country6
      gv_age6
      gv_sex6.

WRITE /.
WRITE /.
WRITE /.

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

PERFORM marrige
USING
      gv_sex3
      gv_sex4

CHANGING gv_surname3
      gv_surname4.

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


PERFORM summary
USING gv_first_name1
      gv_surname1
      gv_pesel1
      gv_street1
      gv_number1
      gv_postcode1
      gv_city1
      gv_province1
      gv_country1
      gv_age1
      gv_sex1.

PERFORM summary
USING gv_first_name2
      gv_surname2
      gv_pesel2
      gv_street2
      gv_number2
      gv_postcode2
      gv_city2
      gv_province2
      gv_country2
      gv_age2
      gv_sex2.

PERFORM summary
USING gv_first_name3
      gv_surname3
      gv_pesel3
      gv_street3
      gv_number3
      gv_postcode3
      gv_city3
      gv_province3
      gv_country3
      gv_age3
      gv_sex3.

PERFORM summary
USING gv_first_name4
      gv_surname4
      gv_pesel4
      gv_street4
      gv_number4
      gv_postcode4
      gv_city4
      gv_province4
      gv_country4
      gv_age4
      gv_sex4.

PERFORM summary
USING gv_first_name5
      gv_surname5
      gv_pesel5
      gv_street5
      gv_number5
      gv_postcode5
      gv_city5
      gv_province5
      gv_country5
      gv_age5
      gv_sex5.

PERFORM summary
USING gv_first_name6
      gv_surname6
      gv_pesel6
      gv_street6
      gv_number6
      gv_postcode6
      gv_city6
      gv_province6
      gv_country6
      gv_age6
      gv_sex6.

FORM summary
  USING iv_first_name TYPE zosy_first_name
        iv_surname TYPE zosy_surname
        iv_pesel TYPE zosy_pesel
        iv_street TYPE zosy_street
        iv_number TYPE zosy_number
        iv_postcode TYPE zosy_postcode
        iv_city TYPE zosy_city
        iv_province TYPE zosy_province
        iv_country TYPE zosy_country
        iv_age TYPE zosy_age
        iv_sex TYPE zosy_sex.



  WRITE 'My name is...'.
  WRITE iv_first_name.
  WRITE /.
  WRITE 'My surname is...'.
  WRITE iv_surname.
  WRITE /.
  WRITE 'My social security number is...'.
  WRITE iv_pesel.
  WRITE /.
  WRITE 'I live on'.
  WRITE iv_street.
  WRITE 'Street'.
  WRITE /.
  WRITE 'Bulding number'.
  WRITE iv_number.
  WRITE /.
  WRITE 'My postcode is...'.
  WRITE iv_postcode.
  WRITE /.
  WRITE 'I live in...'.
  WRITE iv_city.
  WRITE /.
  WRITE 'My province is...'.
  WRITE iv_province.
  WRITE /.
  WRITE 'My country is...'.
  WRITE iv_country.
  WRITE /.
  WRITE 'I am'.
  WRITE iv_age.
  WRITE 'years old'.
  WRITE /.
  WRITE 'Im...'.
  WRITE iv_sex.
  WRITE /.
  WRITE /.
  WRITE /.


ENDFORM.


FORM marrige
  USING iv_sexa TYPE zosy_sex
        iv_sexb TYPE zosy_sex

  CHANGING cv_sura TYPE zosy_surname
           cv_surb TYPE zosy_surname.

*  IF iv_sexa = iv_sexb.
*
*  ELSE.
*    IF iv_sexa = 'M' AND iv_sexb = 'F'.
*      cv_surb = cv_sura.
*    ELSE.
*      cv_sura = cv_surb.
*    ENDIF.
*
*  ENDIF.


  IF iv_sexa <> iv_sexb.

    IF iv_sexa = 'M' AND iv_sexb = 'F'.
      cv_surb = cv_sura.
    ELSE.
      cv_sura = cv_surb.
    ENDIF.

  ENDIF.


ENDFORM.
