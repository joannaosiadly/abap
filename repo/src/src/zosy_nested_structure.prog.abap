*&---------------------------------------------------------------------*
*& Report  ZOSY_NESTED_STRUCTURE
*&
*&---------------------------------------------------------------------*
*&
*&
*&---------------------------------------------------------------------*
REPORT zosy_nested_structure.

DATA gs_person TYPE zosy_str_person.
DATA gt_person TYPE zosy_tab_person.
DATA gt_book TYPE zosy_tab_book.
DATA gs_book TYPE zosy_str_book.
DATA gs_car TYPE zosy_str_car.


gs_person-firstname = 'Jan'.
gs_person-surname = 'Kowalski'.
gs_person-street = 'Arbuzowa'.
gs_person-city = 'Wrocław'.
gs_person-sex = 'M'.
gs_person-age = 5.
gs_person-car-brand = 'Fiat'.
gs_person-car-car_type = 'sedan'.
gs_person-car-color = 'red'.
gs_person-car-transmission = 'manual'.
gs_book-title = 'Pucio'.
gs_book-author = 'Kowalski'.
gs_book-bookgenre = 'crime'.
gs_book-publicationdate = '2010'.
gs_book-numberofpages = 30.

APPEND gs_book TO gs_person-book.

CLEAR gs_book.
gs_book-title = 'potop'.
gs_book-author = 'Mickiewicz'.
gs_book-bookgenre = 'novel'.
gs_book-numberofpages = 500.
gs_book-publicationdate = '1886'.

APPEND gs_book TO gs_person-book.

CLEAR gs_book.
gs_book-title = 'Kicia Kocia'.
gs_book-author = 'Głowińska'.
gs_book-bookgenre = 'story'.
gs_book-numberofpages = 10.
gs_book-publicationdate = '2020'.

APPEND gs_book TO gs_person-book.
APPEND gs_person TO gt_person.


CLEAR gs_person.
gs_person-firstname = 'Ola'.
gs_person-surname = 'Marak'.
gs_person-street = 'Kwiatowa'.
gs_person-city = 'Opole'.
gs_person-sex = 'F'.
gs_person-age = 30.
gs_car-brand = 'Volvo'.
gs_car-car_type = 'SUV'.
gs_car-color = 'black'.
gs_car-transmission = 'manual'.
gs_person-car = gs_car.

CLEAR gs_book.
gs_book-title = 'Atomowe nawyki'.
gs_book-author = 'Clear'.
gs_book-bookgenre = 'science'.
gs_book-numberofpages = 285.
gs_book-publicationdate = '2019'.

APPEND gs_book TO gt_book.

CLEAR gs_book.
gs_book-title = 'Zanim wystygnie'.
gs_book-author = 'Toshikazu'.
gs_book-bookgenre = 'novel'.
gs_book-numberofpages = 240.
gs_book-publicationdate = '2022'.

APPEND gs_book TO gt_book.
gs_person-book = gt_book.

APPEND gs_person TO gt_person.

CLEAR gs_person.
CLEAR gs_car.
gs_person-firstname = 'Janina'.
gs_person-surname = 'Tytusowa'.
gs_person-street = 'Kolorowa'.
gs_person-city = 'zakopane'.
gs_person-sex = 'F'.
gs_person-age = 50.
gs_car-brand = 'Skoda'.
gs_car-car_type = 'Kombi'.
gs_car-color = 'white'.
gs_car-transmission = 'automatic'.
gs_person-car = gs_car.

CLEAR gs_book.
gs_book-title = 'Potęga'.
gs_book-author = 'Murphy'.
gs_book-bookgenre = 'science'.
gs_book-numberofpages = 120.
gs_book-publicationdate = '2000'.

APPEND gs_book TO gs_person-book.
APPEND gs_person TO gt_person.

CLEAR gs_person.
CLEAR gs_car.
gs_person-firstname = 'Olek'.
gs_person-surname = 'Chmurka'.
gs_person-street = 'Prusa'.
gs_person-city = 'Oslo'.
gs_person-sex = 'M'.
gs_person-age = 10.
gs_car-brand = 'Mazdda'.
gs_car-car_type = 'Coupe'.
gs_car-color = 'green'.
gs_car-transmission = 'automatic'.
gs_person-car = gs_car.

CLEAR gs_book.
CLEAR gt_book.
gs_book-title = 'Koszty ukrytego stresu'.
gs_book-author = 'Cieślak'.
gs_book-bookgenre = 'science'.
gs_book-numberofpages = 60.
gs_book-publicationdate = '2023'.

APPEND gs_book TO gt_book.

CLEAR gs_book.
gs_book-title = 'For sure not You'.
gs_book-author = 'Ancerowicz'.
gs_book-bookgenre = 'novel'.
gs_book-numberofpages = 117.
gs_book-publicationdate = '1998'.

APPEND gs_book TO gt_book.

CLEAR gs_book.
gs_book-title = 'Sztuka keto'.
gs_book-author = 'Bułka'.
gs_book-bookgenre = 'health'.
gs_book-numberofpages = 300.
gs_book-publicationdate = '2022'.

APPEND gs_book TO gt_book.
gs_person-book = gt_book.

APPEND gs_person TO gt_person.


PERFORM person
USING gt_person.


WRITE /.
WRITE /.
WRITE /.


FORM person

  USING it_person TYPE zosy_tab_person.
  DATA ls_person TYPE zosy_str_person.
  DATA ls_book TYPE zosy_str_book.


  LOOP AT it_person INTO ls_person.

    WRITE ls_person-firstname.
    WRITE /.
    WRITE ls_person-surname.
    WRITE /.
    WRITE ls_person-city.
    WRITE /.
    WRITE ls_person-street.
    WRITE /.
    WRITE ls_person-sex.
    WRITE /.
    WRITE ls_person-car.
    WRITE /.
    WRITE ls_person-car-brand.
    WRITE /.
    WRITE ls_person-car-car_type.
    WRITE /.
    WRITE ls_person-car-color.
    WRITE /.
    WRITE ls_person-car-transmission.
    WRITE /.
    LOOP AT ls_person-book INTO ls_book.

      WRITE ls_book-title.
      WRITE /.
      WRITE ls_book-author.
      WRITE /.
      WRITE ls_book-bookgenre.
      WRITE /.
      WRITE ls_book-numberofpages.
      WRITE /.
      WRITE ls_book-publicationdate.
      WRITE /.
      WRITE /.
      WRITE /.
    ENDLOOP.

    WRITE /.
    WRITE /.

  ENDLOOP.

ENDFORM.
