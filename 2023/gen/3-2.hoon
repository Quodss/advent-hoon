/*  txt  %txt  /input/txt
:-  %say  |=  *  :-  %noun
::
=<
  =/  tars=(list hair)
    (rash (of-wain:format txt) tar-positions)
  =/  nums=(list (trel @ hair hair))
    (rash (of-wain:format txt) nums-positions)
  =/  num-ranges=(list (pair @ (list hair)))
    (turn nums extend)
  %+  roll  tars
  |=  [h=hair acc=@]
  ^-  @
  =/  [counter=@ nums=(list @)]  (count (expand h) num-ranges) 
  ?.  =(2 counter)
    acc
  (add acc (mul -.nums +<.nums))
::
|%
++  count
  |=  [hs=(list hair) ns=(list (pair @ (list hair)))]
  =+  counter=0
  =|  out=(list @)
  |-  ^-  [@ (list @)]
  ?~  ns  [counter out]
  =/  f=?
    %+  lien  hs
    |=  h=hair
    (~(has in (silt q.i.ns)) h)
  ?.  f
    $(ns t.ns)
  $(ns t.ns, counter +(counter), out [p.i.ns out])
::
++  expand
  |=  [p=@ q=@]
  ^-  (list hair)
  :~
    [(dec p) (dec q)]     [(dec p) q]  [(dec p) +(q)]
    [p (dec q)]           [p q]        [p +(q)]
    [+(p) (dec q)]        [+(p) q]     [+(p) +(q)]
  ==
::
++  extend
  |=  [p=@ q=hair r=hair]
  ^-  (pair @ (list hair))
  :-  p
  =/  columns=(list @)  (gulf q.q q.r)
  (fuse (reap (lent columns) p.q) columns)
::
++  fuse                                                ::  from ~paldev
  |*  [a=(list) b=(list)]
  ^-  (list [_?>(?=(^ a) i.a) _?>(?=(^ b) i.b)])
  ?~  a  ~
  ?~  b  ~
  :-  [i.a i.b]
  $(a t.a, b t.b)
::
++  newline  (just '\0a')
++  not-tar
  ;~(less tar next)
::
++  tar-positions
  %+  ifix  [(star not-tar) (star not-tar)]
  %+  more  (star not-tar)
  (pos tar)
::
++  pos
  |*  sab=rule
  |=  tub=nail
  ^-  (like hair)
  =+  vex=(sab tub)
  ?~  q.vex  vex
  [p.vex [~ [p.tub q.u.q.vex]]]
::
++  nums-positions
  %+  ifix  [(star not-dit) (star not-dit)]
  %+  more  (star not-dit)
  scope
::
++  scope
  |=  tub=nail
  ^-  (like (trel @ hair hair))
  =+  vex=(dem tub)
  ?~  q.vex  vex
  [p.vex [~ [[p.u.q.vex p.tub [p.p.vex (dec q.p.vex)]] q.u.q.vex]]]
::
++  not-dit
  ;~(less dit next)
--
