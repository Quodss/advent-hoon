/*  txt  %txt  /input/txt
:-  %say  |=  *  :-  %noun
::
=>  |%
    +$  card  (pair (list @) (list @))
    --
=<
  =/  cards=(list card)
    %+  turn  txt
    |=  c=cord
    ^-  card
    (rash c card-rule)
  %+  roll
    (turn cards measure)
  add
::
|%
++  card-rule
  %+  cook  card
  ;~  pfix
    ;~(plug (jest 'Card') (star ace) dem col (star ace))
    ;~  (glue ;~(plug (star ace) bar (star ace)))
      (more (star ace) dem)
      (more (star ace) dem)
    ==
  ==
::
++  measure
  |=  c=card
  ^-  @
  =;  n=@
    ?:  =(0 n)  0
    (bex (dec n))
  %~  wyt  in
  (~(int in (silt p.c)) (silt q.c))
::
--
