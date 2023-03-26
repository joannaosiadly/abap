
FORM big_number_in_words
  USING iv_numb TYPE zosy_big_number
  CHANGING cv_number_in_word TYPE zosy_number2.

  DATA lt_words TYPE STANDARD TABLE OF zosy_number2.
  DATA lv_result TYPE zosy_number2.



  IF iv_numb+0(3) <> 0.


    PERFORM inwords
      USING iv_numb+0(3)
      CHANGING lv_result.

    APPEND lv_result TO lt_words.
    APPEND 'miliardów' TO lt_words  .

  ENDIF.


  IF iv_numb+3(3) <> 0.

    PERFORM inwords
      USING iv_numb+3(3)
      CHANGING lv_result.

    APPEND lv_result TO lt_words.
    APPEND 'milionów' TO lt_words.

  ENDIF.

  IF iv_numb+6(3) <> 0.

    PERFORM inwords
      USING iv_numb+6(3)
      CHANGING lv_result.

    APPEND lv_result TO lt_words.
    APPEND 'tysięcy' TO lt_words.


  ENDIF.

  IF iv_numb+9(3) <> 0.

    PERFORM inwords
      USING iv_numb+9(3)
      CHANGING lv_result.
    APPEND lv_result TO lt_words.

  ENDIF.

  CONCATENATE LINES OF lt_words INTO cv_number_in_word SEPARATED BY space.

ENDFORM.



FORM inwords
  USING iv_number TYPE t_numc3
  CHANGING cv_result TYPE zosy_number2.

  DATA lv_numberinwords TYPE c LENGTH 100.
  DATA lt_numberinwords TYPE STANDARD TABLE OF zosy_number2.

  CASE iv_number+0(1).
    WHEN 1.
      lv_numberinwords = 'sto'.
      APPEND lv_numberinwords TO lt_numberinwords.
    WHEN 2.
      lv_numberinwords = 'dwieście'.
      APPEND lv_numberinwords TO lt_numberinwords.
    WHEN 3.
      lv_numberinwords = 'trzysta'.
      APPEND lv_numberinwords TO lt_numberinwords.
    WHEN 4.
      lv_numberinwords = 'czterysta'.
      APPEND lv_numberinwords TO lt_numberinwords.
    WHEN 5.
      lv_numberinwords = 'pięćset'.
      APPEND lv_numberinwords TO lt_numberinwords.
    WHEN 6.
      lv_numberinwords = 'sześćset'.
      APPEND lv_numberinwords TO lt_numberinwords.
    WHEN 7.
      lv_numberinwords = 'siedemset'.
      APPEND lv_numberinwords TO lt_numberinwords.
    WHEN 8.
      lv_numberinwords = 'osiemset'.
      APPEND lv_numberinwords TO lt_numberinwords.
    WHEN 9.
      lv_numberinwords = 'dziewięcset'.
      APPEND lv_numberinwords TO lt_numberinwords.

  ENDCASE.

  IF iv_number+1(2) < 10.

    CASE iv_number+2(1).
      WHEN 1.
        lv_numberinwords = 'jeden'.
        APPEND lv_numberinwords TO lt_numberinwords.
      WHEN 2.
        lv_numberinwords = 'dwa'.
        APPEND lv_numberinwords TO lt_numberinwords.
      WHEN 3.
        lv_numberinwords = 'trzy'.
        APPEND lv_numberinwords TO lt_numberinwords.
      WHEN 4.
        lv_numberinwords = 'cztery'.
        APPEND lv_numberinwords TO lt_numberinwords.
      WHEN 5.
        lv_numberinwords = 'pięć'.
        APPEND lv_numberinwords TO lt_numberinwords.
      WHEN 6.
        lv_numberinwords = 'sześć'.
        APPEND lv_numberinwords TO lt_numberinwords.
      WHEN 7.
        lv_numberinwords = 'siedem'.
        APPEND lv_numberinwords TO lt_numberinwords.
      WHEN 8.
        lv_numberinwords = 'osiem'.
        APPEND lv_numberinwords TO lt_numberinwords.
      WHEN 9.
        lv_numberinwords = 'dziewięć'.
        APPEND lv_numberinwords TO lt_numberinwords.

    ENDCASE.

  ENDIF.

  IF  10 <= iv_number+1(2) AND iv_number+1(2) <= 19.

    CASE iv_number+1(2).
      WHEN 10.
        lv_numberinwords = 'dziesięć'.
        APPEND lv_numberinwords TO lt_numberinwords.
      WHEN 11.
        lv_numberinwords = 'jedenaście'.
        APPEND lv_numberinwords TO lt_numberinwords.
      WHEN 12.
        lv_numberinwords = 'dwanaście'.
        APPEND lv_numberinwords TO lt_numberinwords.
      WHEN 13.
        lv_numberinwords = 'trzynaście'.
        APPEND lv_numberinwords TO lt_numberinwords.
      WHEN 14.
        lv_numberinwords = 'czternaście'.
        APPEND lv_numberinwords TO lt_numberinwords.
      WHEN 15.
        lv_numberinwords = 'piętnaście'.
        APPEND lv_numberinwords TO lt_numberinwords.
      WHEN 16.
        lv_numberinwords = 'szesnaście'.
        APPEND lv_numberinwords TO lt_numberinwords.
      WHEN 17.
        lv_numberinwords = 'siedemnaście'.
        APPEND lv_numberinwords TO lt_numberinwords.
      WHEN 18.
        lv_numberinwords = 'osiemnaście'.
        APPEND lv_numberinwords TO lt_numberinwords.
      WHEN 19.
        lv_numberinwords = 'dziewiętnaście'.
        APPEND lv_numberinwords TO lt_numberinwords.
    ENDCASE.

  ENDIF.

  IF  iv_number+1(2) >= 20.

    CASE iv_number+1(1).
      WHEN 2.
        lv_numberinwords = 'dwadzieścia'.
        APPEND lv_numberinwords TO lt_numberinwords.
      WHEN 3.
        lv_numberinwords = 'trzydzieści'.
        APPEND lv_numberinwords TO lt_numberinwords.
      WHEN 4.
        lv_numberinwords = 'czterdzieści'.
        APPEND lv_numberinwords TO lt_numberinwords.
      WHEN 5.
        lv_numberinwords = 'pięćdziesiąt'.
        APPEND lv_numberinwords TO lt_numberinwords.
      WHEN 6.
        lv_numberinwords = 'sześćdziesiąt'.
        APPEND lv_numberinwords TO lt_numberinwords.
      WHEN 7.
        lv_numberinwords = 'siedemdziesiąt'.
        APPEND lv_numberinwords TO lt_numberinwords.
      WHEN 8.
        lv_numberinwords = 'osiemdziesiąt'.
        APPEND lv_numberinwords TO lt_numberinwords.
      WHEN 9.
        lv_numberinwords = 'dziewięćdziesiąt'.
        APPEND lv_numberinwords TO lt_numberinwords.

    ENDCASE.

    CASE iv_number+2(1).
      WHEN 1.
        lv_numberinwords = 'jeden'.
        APPEND lv_numberinwords TO lt_numberinwords.
      WHEN 2.
        lv_numberinwords = 'dwa'.
        APPEND lv_numberinwords TO lt_numberinwords.
      WHEN 3.
        lv_numberinwords = 'trzy'.
        APPEND lv_numberinwords TO lt_numberinwords.
      WHEN 4.
        lv_numberinwords = 'cztery'.
        APPEND lv_numberinwords TO lt_numberinwords.
      WHEN 5.
        lv_numberinwords = 'pięć'.
        APPEND lv_numberinwords TO lt_numberinwords.
      WHEN 6.
        lv_numberinwords = 'sześć'.
        APPEND lv_numberinwords TO lt_numberinwords.
      WHEN 7.
        lv_numberinwords = 'siedem'.
        APPEND lv_numberinwords TO lt_numberinwords.
      WHEN 8.
        lv_numberinwords = 'osiem'.
        APPEND lv_numberinwords TO lt_numberinwords.
      WHEN 9.
        lv_numberinwords = 'dziewięć'.
        APPEND lv_numberinwords TO lt_numberinwords.

    ENDCASE.
  ENDIF.


  CONCATENATE LINES OF lt_numberinwords INTO cv_result SEPARATED BY space.


ENDFORM.
