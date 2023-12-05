/*  txt  %txt  /input/txt
:-  %say  |=  *  :-  %noun
::
=>  |%
    +$  card  (pair (list @) (list @))
    --
=<
=/  m=(map @ @)
  ;;  (map @ @)
  .*  .  !=
  %-  my
  (fuse (gulf 0 (dec (lent txt))) (reap (lent txt) 1))
=/  cards=(list card)
  %+  turn  txt
  |=  c=cord
  ^-  card
  (rash c card-rule)
=.  m
  =+  id=0
  |-  ^-  (map @ @)
  =*  outer-loop  $
  ?:  =(id (lent txt))  m
  =/  n-cards=@  (~(got by m) id)
  =/  wins=@  (n-wins (snag id cards))
  |-  ^-  (map @ @)
  ?:  =(wins 0)  outer-loop(id +(id))
  $(wins (dec wins), m (~(jab by m) (add wins id) |=(i=@ (add i n-cards))))
%-  ~(rep by m)
|=  [[key=@ num=@] acc=@]
(add num acc)
::
|%
++  fuse                                                ::  from ~paldev
  |*  [a=(list) b=(list)]
  ^-  (list [_?>(?=(^ a) i.a) _?>(?=(^ b) i.b)])
  ?~  a  ~
  ?~  b  ~
  :-  [i.a i.b]
  $(a t.a, b t.b)
::
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
++  n-wins
  |=  c=card
  ^-  @
  %~  wyt  in
  (~(int in (silt p.c)) (silt q.c))
--
