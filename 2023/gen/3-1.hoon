/*  txt  %txt  /input/txt
:-  %say  |=  *  :-  %noun
::
=<
  =/  chars=(list hair)
    (rash (of-wain:format txt) char-positions)
  =/  nums=(list (trel @ hair hair))
    (rash (of-wain:format txt) nums-positions)
  =/  num-ranges=(list (pair @ (list hair)))
    (turn nums extend)
  =/  char-borders=(list (list hair))
    (turn chars expand)
  =/  char-bord-set=(set hair)  (silt ;;((list hair) (zing char-borders)))
  ::
  %+  roll  num-ranges
  |=  [[p=@ l=(list hair)] acc=@]
  ^-  @
  ?.  %+  lien  l
      ~(has in char-bord-set)
    acc
  (add acc p)
::
|%
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
++  expand
  |=  [p=@ q=@]
  ^-  (list hair)
  :~
    [(dec p) (dec q)]     [(dec p) q]  [(dec p) +(q)]
    [p (dec q)]           [p q]        [p +(q)]
    [+(p) (dec q)]        [+(p) q]     [+(p) +(q)]
  ==
::
++  newline  (just '\0a')
++  not-char
  ;~(pose dot dit newline)
::
++  char-positions
  %+  ifix  [(star not-char) (star not-char)]
  %+  more  (star not-char)
  (pos ;~(less dot dit prn))
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
