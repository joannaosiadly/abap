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
PARAMETERS p_street TYPE zosy_street.
PARAMETERS p_number TYPE zosy_number.
PARAMETERS p_num1 TYPE zosy_num1.
PARAMETERS p_pcode TYPE zosy_postcode.
PARAMETERS p_city TYPE zosy_city.
PARAMETERS p_prova TYPE zosy_province.
PARAMETERS p_count TYPE zosy_country.
PARAMETERS p_age TYPE zosy_age.

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

DATA gv_description TYPE zosy_description.

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
gv_first_name2 = 'Bardzodlugieimiedamskiepolskiekotwksiazkalego'.
gv_surname2 = 'Kolowrotek'.
gv_pesel2 = '90120778690'.
gv_street2 = 'Arbuzowa'.
gv_number2 = '18'.
gv_postcode2 = '54119'.
gv_city2 = 'Wroclaw'.
gv_province2 = 'lubuskie'.
gv_country2 = 'Niemcy'.
gv_age2 = '5'.
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

*gv_first_name1 = gv_first_name2.

* Now program will print person data

PERFORM summary
USING p_fname
      p_sname
      p_pesel
      p_street
      p_number
      p_pcode
      p_city
      p_prova
      p_count
      p_age.



perform summary
using gv_first_name1
      gv_surname1
      gv_pesel1
      gv_street1
      gv_number1
      gv_postcode1
      gv_city1
      gv_province1
      gv_country1
      gv_age1.

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
      gv_age2.

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
      gv_age3.


*CHANGING gv_description.


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
        iv_age TYPE zosy_age.



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
  WRITE /.
  WRITE /.


ENDFORM.





*WRITE 'hello world'.
*WRITE /.
*WRITE 'My name is...'.
*WRITE p_fname.
*WRITE /.
*WRITE 'My surname is...'.
*WRITE p_sname.
*WRITE /.
*WRITE 'My social security number is...'.
*WRITE p_pesel.
*WRITE /.
*WRITE 'I live on'.
*WRITE p_street.
*WRITE 'Street'.
*WRITE /.
*WRITE 'Bulding number'.
*WRITE p_number.
*WRITE '/'.
*WRITE p_num1.
*WRITE /.
*WRITE 'My postcode is...'.
*WRITE p_pcode.
*WRITE /.
*WRITE 'I live in...'.
*WRITE p_city.
*WRITE /.
*WRITE 'My province is...'.
*WRITE p_prova.
*WRITE /.
*WRITE 'My country is...'.
*WRITE p_count.
*WRITE /.
*WRITE 'Im'.
*WRITE p_age.
*WRITE 'years old'.
*WRITE /.
*WRITE /.
*WRITE /.


*WRITE 'My name is...'.
*WRITE gv_first_name1.
*WRITE /.
*WRITE 'My surname is...'.
*WRITE gv_surname1.
*WRITE /.
*WRITE 'My social security number is...'.
*WRITE gv_pesel1.
*WRITE /.
*WRITE 'I live on'.
*WRITE gv_street1.
*WRITE 'Street'.
*WRITE /.
*WRITE 'Bulding number'.
*WRITE gv_number1.
*WRITE /.
*WRITE 'My postcode is...'.
*WRITE gv_postcode1.
*WRITE /.
*WRITE 'I live in...'.
*WRITE gv_city1.
*WRITE /.
*WRITE 'My province is...'.
*WRITE gv_province1.
*WRITE /.
*WRITE 'My country is...'.
*WRITE gv_country1.
*WRITE /.
*WRITE 'I am'.
*WRITE gv_age1.
*WRITE 'years old'.
*WRITE /.
*WRITE /.
*WRITE /.
*WRITE 'My name is...'.
*WRITE gv_first_name2.
*WRITE /.
*WRITE 'My surname is...'.
*WRITE gv_surname2.
*WRITE /.
*WRITE 'My social security number is...'.
*WRITE gv_pesel2.
*WRITE /.
*WRITE 'I live on'.
*WRITE gv_street2.
*WRITE 'Street'.
*WRITE /.
*WRITE 'Bulding number'.
*WRITE gv_number2.
*WRITE /.
*WRITE 'My postcode is...'.
*WRITE gv_postcode2.
*WRITE /.
*WRITE 'I live in...'.
*WRITE gv_city1.
*WRITE /.
*WRITE 'My province is...'.
*WRITE gv_province2.
*WRITE /.
*WRITE 'My country is...'.
*WRITE gv_country2.
*WRITE /.
*WRITE 'I am'.
*WRITE gv_age2.
*WRITE 'years old'.
