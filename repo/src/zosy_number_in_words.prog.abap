*&---------------------------------------------------------------------*
*& Report  ZOSY_NUMBER_IN_WORDS
*&
*&---------------------------------------------------------------------*
*&
*&
*&---------------------------------------------------------------------*
REPORT zosy_number_in_words.

TYPES t_numc3 TYPE n LENGTH 3.
TYPES t_char100 TYPE c LENGTH 100.
TYPES tt_numberinwords TYPE STANDARD TABLE OF zosy_number2.
DATA gv_number TYPE n LENGTH 3.
DATA gt_numberinwords TYPE STANDARD TABLE OF zosy_number2.
DATA gv_numberinwords TYPE c LENGTH 100.
DATA gv_result TYPE c LENGTH 100.

gv_number = 11.

PERFORM inwords
USING gv_number
      gv_numberinwords
      gt_numberinwords
CHANGING gv_result.



FORM inwords
  USING iv_number TYPE t_numc3
        iv_numberinwords TYPE t_char100
        it_numberinwords TYPE tt_numberinwords
  changing cv_result.

  IF iv_number+0(1) = 0.
  ELSE.
    IF iv_number+0(1) = 1.
      WRITE 'sto'.
      iv_numberinwords = 'sto'.
      APPEND iv_numberinwords TO it_numberinwords.
    ELSE.
      IF iv_number+0(1) = 2.
        WRITE 'dwieście'.
        iv_numberinwords = 'dwieście'.
        APPEND iv_numberinwords TO it_numberinwords.
      ELSE.
        IF iv_number+0(1) = 3.
          WRITE'trzysta'.
          iv_numberinwords = 'trzysta'.
          APPEND iv_numberinwords TO it_numberinwords.
        ELSE.
          IF iv_number+0(1) = 4.
            WRITE'czterysta'.
            iv_numberinwords = 'czterysta'.
            APPEND iv_numberinwords TO it_numberinwords.
          ELSE.
            IF iv_number+0(1) = 5.
              WRITE'pięćset'.
              iv_numberinwords = 'pięćset'.
              APPEND iv_numberinwords TO it_numberinwords.
            ELSE.
              IF iv_number+0(1) = 6.
                WRITE'sześćset'.
                iv_numberinwords = 'sześćset'.
                APPEND iv_numberinwords TO it_numberinwords.
              ELSE.
                IF iv_number+0(1) = 7.
                  WRITE'siedemset'.
                  iv_numberinwords = 'siedemset'.
                  APPEND iv_numberinwords TO it_numberinwords.
                ELSE.
                  IF iv_number+0(1) = 8.
                    WRITE'osiemset'.
                    iv_numberinwords = 'osiemset'.
                    APPEND iv_numberinwords TO it_numberinwords.
                  ELSE.
                    IF iv_number+0(1) = 9.
                      WRITE'dziewięćset'.
                      iv_numberinwords = 'dziewięcset'.
                      APPEND iv_numberinwords TO it_numberinwords.
                    ENDIF.
                  ENDIF.
                ENDIF.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.


    ENDIF.


  ENDIF.



  IF iv_number+1(2) < 10.

    IF iv_number+2(1) = 1.
      WRITE 'jeden'.
      iv_numberinwords = 'jeden'.
      APPEND iv_numberinwords TO it_numberinwords.
    ELSE.
      IF iv_number+2(1) = 2.
        WRITE 'dwa'.
        iv_numberinwords = 'dwa'.
        APPEND iv_numberinwords TO it_numberinwords.
      ELSE.
        IF iv_number+2(1) = 3.
          WRITE 'trzy'.
          iv_numberinwords = 'trzy'.
          APPEND iv_numberinwords TO it_numberinwords.
        ELSE.
          IF iv_number+2(1) = 4.
            WRITE 'cztery'.
            iv_numberinwords = 'cztery'.
            APPEND iv_numberinwords TO it_numberinwords.
          ELSE.
            IF iv_number+2(1) = 5.
              WRITE 'pięć'.
              iv_numberinwords = 'pięć'.
              APPEND iv_numberinwords TO it_numberinwords.
            ELSE.
              IF iv_number+2(1) = 6.
                WRITE 'sześć'.
                iv_numberinwords = 'sześć'.
                APPEND iv_numberinwords TO it_numberinwords.
              ELSE.
                IF iv_number+2(1) = 7.
                  WRITE 'siedem'.
                  iv_numberinwords = 'siedem'.
                  APPEND iv_numberinwords TO it_numberinwords.
                ELSE.
                  IF iv_number+2(1) = 8.
                    WRITE 'osiem'.
                    iv_numberinwords = 'osiem'.
                    APPEND iv_numberinwords TO it_numberinwords.
                  ELSE.
                    IF iv_number+2(1) = 9.
                      WRITE 'dziewięć'.
                      iv_numberinwords = 'dziewięć'.
                      APPEND iv_numberinwords TO it_numberinwords.
                    ENDIF.
                  ENDIF.
                ENDIF.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDIF.

else.
    IF  10 <= iv_number+1(2) AND iv_number+1(2) < 19.

      IF iv_number+1(2) = 10.
        WRITE 'dziesięć'.
        iv_numberinwords = 'dziesięć'.
        APPEND iv_numberinwords TO it_numberinwords.
      ELSE.
        IF iv_number+1(2) = 11.
          WRITE 'jedenaście'.
          iv_numberinwords = 'jedenaście'.
          APPEND iv_numberinwords TO it_numberinwords.
        ELSE.
          IF iv_number+1(2) = 12.
            WRITE 'dwanaście'.
            iv_numberinwords = 'dwanaście'.
            APPEND iv_numberinwords TO it_numberinwords.
          ELSE.
            IF iv_number+1(2) = 13.
              WRITE 'trzynaście'.
              iv_numberinwords = 'trzynaście'.
              APPEND iv_numberinwords TO it_numberinwords.
            ELSE.
              IF iv_number+1(2) = 14.
                WRITE 'czternaście'.
                iv_numberinwords = 'czternaście'.
                APPEND iv_numberinwords TO it_numberinwords.
              ELSE.
                IF iv_number+1(2) = 15.
                  WRITE 'piętnaście'.
                  iv_numberinwords = 'piętnaście'.
                  APPEND iv_numberinwords TO it_numberinwords.
                ELSE.
                  IF iv_number+1(2) = 16.
                    WRITE 'szesnaście'.
                    iv_numberinwords = 'szesnaście'.
                    APPEND iv_numberinwords TO it_numberinwords.
                  ELSE.
                    IF iv_number+1(2) = 17.
                      WRITE 'siedemnaście'.
                      iv_numberinwords = 'siedemnaście'.
                      APPEND iv_numberinwords TO it_numberinwords.
                    ELSE.
                      IF iv_number+1(2) = 18.
                        WRITE 'osiemnaście'.
                        iv_numberinwords = 'osiemnaście'.
                        APPEND iv_numberinwords TO it_numberinwords.
                      ELSE.
                        IF iv_number+1(2) = 19.
                          WRITE 'dziewiętnaście'.
                          iv_numberinwords = 'dziewiętnaście'.
                          APPEND iv_numberinwords TO it_numberinwords.
                        ENDIF.
                      ENDIF.
                    ENDIF.
                  ENDIF.
                ENDIF.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.



    IF  iv_number+1(2) >= 20.
      IF iv_number+1(1) = 2.
        WRITE 'dwadzieścia'.
        iv_numberinwords = 'dwadzieścia'.
        APPEND iv_numberinwords TO it_numberinwords.
      ELSE.
        IF iv_number+1(1) = 3.
          WRITE 'trzydzieści'.
          iv_numberinwords = 'trzydzieści'.
          APPEND iv_numberinwords TO it_numberinwords.
        ELSE.
          IF iv_number+1(1) = 4.
            WRITE 'czterdzieści'.
            iv_numberinwords = 'czterdzieści'.
            APPEND iv_numberinwords TO it_numberinwords.
          ELSE.
            IF iv_number+1(1) = 5.
              WRITE 'pięćdziesiąt'.
              iv_numberinwords = 'pięćdziesiąt'.
              APPEND iv_numberinwords TO it_numberinwords.
            ELSE.
              IF iv_number+1(1) = 6.
                WRITE 'sześćdziesiąt'.
                iv_numberinwords = 'sześćdziesiąt'.
                APPEND iv_numberinwords TO it_numberinwords.
              ELSE.
                IF iv_number+1(1) = 7.
                  WRITE 'siedemdziesiąt'.
                  iv_numberinwords = 'siedemdziesiąt'.
                  APPEND iv_numberinwords TO it_numberinwords.
                ELSE.
                  IF iv_number+1(1) = 8.
                    WRITE 'osiemdziesiąt'.
                    iv_numberinwords = 'osiemdziesiąt'.
                    APPEND iv_numberinwords TO it_numberinwords.
                  ELSE.
                    IF iv_number+1(1) = 9.
                      WRITE 'dziewięćdziesiąt'.
                      iv_numberinwords = 'dziewięćdziesiąt'.
                      APPEND iv_numberinwords TO it_numberinwords.
                    ELSE.
                    ENDIF.
                  ENDIF.
                ENDIF.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDIF.



  IF iv_number+2(1) = 1.
    WRITE 'jeden'.
    iv_numberinwords = 'jeden'.
    APPEND iv_numberinwords TO it_numberinwords.
  ELSE.
    IF iv_number+2(1) = 2.
      WRITE 'dwa'.
      iv_numberinwords = 'dwa'.
      APPEND iv_numberinwords TO it_numberinwords.
    ELSE.
      IF iv_number+2(1) = 3.
        WRITE 'trzy'.
        iv_numberinwords = 'trzy'.
        APPEND iv_numberinwords TO it_numberinwords.
      ELSE.
        IF iv_number+2(1) = 4.
          WRITE 'cztery'.
          iv_numberinwords = 'cztery'.
          APPEND iv_numberinwords TO it_numberinwords.
        ELSE.
          IF iv_number+2(1) = 5.
            WRITE 'pięć'.
            iv_numberinwords = 'pięć'.
            APPEND iv_numberinwords TO it_numberinwords.
          ELSE.
            IF iv_number+2(1) = 6.
              WRITE 'sześć'.
              iv_numberinwords = 'sześć'.
              APPEND iv_numberinwords TO it_numberinwords.
            ELSE.
              IF iv_number+2(1) = 7.
                WRITE 'siedem'.
                iv_numberinwords = 'siedem'.
                APPEND iv_numberinwords TO it_numberinwords.
              ELSE.
                IF iv_number+2(1) = 8.
                  WRITE 'osiem'.
                  iv_numberinwords = 'osiem'.
                  APPEND iv_numberinwords TO it_numberinwords.
                ELSE.
                  IF iv_number+2(1) = 9.
                    WRITE 'dziewięć'.
                    iv_numberinwords = 'dziewięć'.
                    APPEND iv_numberinwords TO it_numberinwords.
                  ENDIF.
                ENDIF.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDIF.
  ENDIF.
  ENDIF.

  WRITE /.
  WRITE /.
  WRITE /.

  CONCATENATE LINES OF it_numberinwords INTO cv_result.
  WRITE cv_result.




ENDFORM.
