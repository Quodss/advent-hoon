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
  (scan (flop (trip line)) first-tigid)
::
++  first-digit
  %+  knee  *@
  |.  ~+
  ;~  pose
    ;~(sfix digit (star prn))
    ;~(pfix prn first-digit)
  ==
::
++  first-tigid
  %+  knee  *@
  |.  ~+
  ;~  pose
    ;~(sfix tigid (star prn))
    ;~(pfix prn first-tigid)
  ==
::
++  digit
  ;~  pose
    dit
    (cold 1 (jest 'one'))
    (cold 2 (jest 'two'))
    (cold 3 (jest 'three'))
    (cold 4 (jest 'four'))
    (cold 5 (jest 'five'))
    (cold 6 (jest 'six'))
    (cold 7 (jest 'seven'))
    (cold 8 (jest 'eight'))
    (cold 9 (jest 'nine'))
  ==
::
++  tigid
  ;~  pose
    dit
    (cold 1 (jest 'eno'))
    (cold 2 (jest 'owt'))
    (cold 3 (jest 'eerht'))
    (cold 4 (jest 'ruof'))
    (cold 5 (jest 'evif'))
    (cold 6 (jest 'xis'))
    (cold 7 (jest 'neves'))
    (cold 8 (jest 'thgie'))
    (cold 9 (jest 'enin'))
  ==
--
