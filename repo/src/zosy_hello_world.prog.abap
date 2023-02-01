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
*gv_first_name1 = gv_first_name2.

* Now program will print person data

WRITE 'hello world'.
WRITE /.
WRITE 'My name is...'.
WRITE p_fname.
WRITE /.
WRITE 'My surname is...'.
WRITE p_sname.
WRITE /.
WRITE 'My social security number is...'.
WRITE p_pesel.
WRITE /.
WRITE 'I live on'.
WRITE p_street.
WRITE 'Street'.
WRITE /.
WRITE 'Bulding number'.
WRITE p_number.
WRITE '/'.
WRITE p_num1.
WRITE /.
WRITE 'My postcode is...'.
WRITE p_pcode.
WRITE /.

WRITE 'I live in...'.
WRITE p_city.
WRITE /.
WRITE 'My province is...'.
WRITE p_prova.
WRITE /.
WRITE 'My country is...'.
WRITE p_count.
WRITE /.
WRITE 'Im'.
WRITE p_age.
WRITE 'years old'.
WRITE /.
WRITE /.
WRITE /.
WRITE 'My name is...'.
WRITE gv_first_name1.
WRITE /.
WRITE 'My surname is...'.
WRITE gv_surname1.
WRITE /.
WRITE 'My social security number is...'.
WRITE gv_pesel1.
WRITE /.
WRITE 'I live on'.
WRITE gv_street1.
WRITE 'Street'.
WRITE /.
WRITE 'Bulding number'.
WRITE gv_number1.
WRITE /.
WRITE 'My postcode is...'.
WRITE gv_postcode1.
WRITE /.
WRITE 'I live in...'.
WRITE gv_city1.
WRITE /.
WRITE 'My province is...'.
WRITE gv_province1.
WRITE /.
WRITE 'My country is...'.
WRITE gv_country1.
WRITE /.
WRITE 'I am'.
WRITE gv_age1.
WRITE 'years old'.
WRITE /.
WRITE /.
WRITE /.
WRITE 'My name is...'.
WRITE gv_first_name2.
WRITE /.
WRITE 'My surname is...'.
WRITE gv_surname2.
WRITE /.
WRITE 'My social security number is...'.
WRITE gv_pesel2.
WRITE /.
WRITE 'I live on'.
WRITE gv_street2.
WRITE 'Street'.
WRITE /.
WRITE 'Bulding number'.
WRITE gv_number2.
WRITE /.
WRITE 'My postcode is...'.
WRITE gv_postcode2.
WRITE /.
WRITE 'I live in...'.
WRITE gv_city1.
WRITE /.
WRITE 'My province is...'.
WRITE gv_province2.
WRITE /.
WRITE 'My country is...'.
WRITE gv_country2.
WRITE /.
WRITE 'I am'.
WRITE gv_age2.
WRITE 'years old'.
