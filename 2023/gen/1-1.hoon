/*  txt  %txt  /input/txt
:-  %say  |=  *  :-  %noun
::
=<  (solve-txt txt)
|%
++  solve-txt
  |=  txt=wain
  ^-  @
  (roll (turn txt solve-line) add)
::
++  solve-line
  |=  line=cord
  ^-  @
  %+  add
    (mul 10 (rash line first-digit))
  (rash line last-digit)
::
++  first-digit
  ;~  pfix
    (star alf)
    ;~  sfix
      dit
      (star prn)
    ==
  ==
::
++  last-digit
  %+  knee  *@
  |.  ~+
  ;~  pose
    (full ;~(sfix dit (star alf)))
    ;~(pfix prn last-digit)
  ==
--
