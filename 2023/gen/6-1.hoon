/*  txt  %txt  /input/txt
:-  %say  |=  *  :-  %noun
::
|^
=/  [time=(list @) dist=(list @)]
  [(rash -.txt time-rule) (rash +<.txt dist-rule)]
%-  roll  :_  mul
%+  turn  (fuse time dist)
measure-race
::
++  measure-race
  |=  [t=@ d=@]
  =+  z=0
  =+  c=0
  =+  flag=.n
  |-  ^-  @
  ?:  &((gte (add (pow z 2) d) (mul t z)) !flag)
    $(z +(z))
  ?:  (lth (add (pow z 2) d) (mul t z))
    $(z +(z), c +(c), flag .y)
  c
::
++  time-rule
  ;~  pfix
    (jest 'Time:')
    (star ace)
    (more (star ace) dem)
  ==
::
++  dist-rule
  ;~  pfix
    (jest 'Distance:')
    (star ace)
    (more (star ace) dem)
  ==
::
++  fuse                                                ::  from ~paldev
  |*  [a=(list) b=(list)]
  ^-  (list [_?>(?=(^ a) i.a) _?>(?=(^ b) i.b)])
  ?~  a  ~
  ?~  b  ~
  :-  [i.a i.b]
  $(a t.a, b t.b)
--
