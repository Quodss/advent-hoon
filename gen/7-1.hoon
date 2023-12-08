/*  txt  %txt  /input/txt
:-  %say  |=  *  :-  %noun
::
=>  |%
    +$  hand  (list @)  ::  every hand will have exactly five cards,
                        ::  10, 11, 12, 13, 14 represent
                        ::  T,  J,  Q,  K,  A
    --
|^
=/  hands-bids=(list (pair hand @))
  %+  turn  txt
  |=  t=@t
  ^-  [hand @]
  (rash t rule-hand-bid)
::
=<  -
%+  roll  (sort hands-bids compare-hands)
|=  [[=hand bid=@] [sum=@ rank=_`@`1]]
^-  [@ @]
:-  (add sum (mul bid rank))
+(rank)
::
++  rule-hand-bid  ;~((glue ace) hand-rule dem)
++  hand-rule  (star card-rule)
++  card-rule  ;~(pose dit (cook to-num alf))
++  to-num
  |=  c=char
  ^-  @
  ?+  c  !!
    %'T'  10
    %'J'  11
    %'Q'  12
    %'K'  13
    %'A'  14
  ==
::
++  compare-hands
  |=  [[h1=hand @] [h2=hand @]]
  ^-  ?
  ?:  (lth (type-hand h1) (type-hand h2))  &
  ?.  =((type-hand h1) (type-hand h2))  |
  |-  ^-  ?
  ?>  ?=(^ h1)
  ?>  ?=(^ h2)
  ?:  (lth i.h1 i.h2)  &
  ?.  =(i.h1 i.h2)  |
  $(h1 t.h1, h2 t.h2)
::
++  type-hand
  |=  h=(pole @)
  ^-  @
  =.  h  (sort h lth)
  ::  five of a kind
  ::
  ?:  =(&1.h &5.h)  7
  ::  four of a kind
  ::
  ?:  |(=(&1.h &4.h) =(&2.h &5.h))  6
  ::  full house
  ::
  ?:  ?|  &(=(&1.h &2.h) =(&3.h &5.h))
          &(=(&1.h &3.h) =(&4.h &5.h))
      ==
    5
  ::  three of a kind
  ::
  ?:  ?|  =(&1.h &3.h)
          =(&2.h &4.h)
          =(&3.h &5.h)
      ==
    4
  ::  two pair
  ::
  ?:  ?|  &(=(&1.h &2.h) =(&3.h &4.h))
          &(=(&1.h &2.h) =(&4.h &5.h))
          &(=(&2.h &3.h) =(&4.h &5.h))
      ==
    3
  ::  one pair
  ::
  ?:  ?|  =(&1.h &2.h)
          =(&2.h &3.h)
          =(&3.h &4.h)
          =(&4.h &5.h)
      ==
    2
  ::  high card
  ::
  ?>  =(5 ~(wyt in (silt h)))
  1
::
--
