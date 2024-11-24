/*  txt  %txt  /input/txt
:-  %say  |=  *  :-  %noun
::
|^
=/  [time=@ dist=@]
  [(rash -.txt time-rule) (rash +<.txt dist-rule)]
(measure-race time dist)
::
++  measure-race
  |=  [t=@ d=@]
  ^-  @
  =+  (sqt (sub (pow t 2) (mul 4 d)))
  =/  sqt-d-int=@
    ?:  =(q 0)
      (dec p)
    p
  =/  x1=@  (div +((sub t sqt-d-int)) 2)
  =/  x2=@  (div (add t sqt-d-int) 2)
  +((sub x2 x1))
::
++  time-rule
  %+  cook  stitch
  ;~  pfix
    (jest 'Time:')
    (star ace)
    (more (star ace) dem)
  ==
::
++  dist-rule
  %+  cook  stitch
  ;~  pfix
    (jest 'Distance:')
    (star ace)
    (more (star ace) dem)
  ==
::
++  stitch
  |=  a=(list @)
  ^-  @
  ?~  a  0
  =+  b=$(a t.a)
  (add (mul i.a (pow 10 (xed b))) b)
::
++  xed
  |=  a=@
  ^-  @
  ?:  =(a 0)  0
  +($(a (div a 10)))
::
++  fuse                                                ::  from ~paldev
  |*  [a=(list) b=(list)]
  ^-  (list [_?>(?=(^ a) i.a) _?>(?=(^ b) i.b)])
  ?~  a  ~
  ?~  b  ~
  :-  [i.a i.b]
  $(a t.a, b t.b)
--
