/*  txt  %txt  /input/txt
:-  %say  |=  *  :-  %noun
::
|^
=/  [moves=tape m=(map tape [tape tape])]
  (rash (of-wain:format txt) get-input)
::
=/  m-path=(map tape tape)  (resolve moves m)
=+  counter=0
=+  loc="AAA"
|-  ^-  @
?:  =(loc "ZZZ")  (mul counter (lent moves))
$(counter +(counter), loc (~(got by m-path) loc))
::
++  resolve
  |=  [moves=tape m=(map tape [tape tape])]
  =|  out=(map tape tape)
  =/  keys=(list tape)  ~(tap in ~(key by m))
  |-  ^-  (map tape tape)
  =*  key-loop  $
  ?~  keys  out
  =+  destination=i.keys
  =+  moves-copy=moves
  |-  ^-  (map tape tape)
  =*  move-loop  $
  ?~  moves-copy
    key-loop(keys t.keys, out (~(put by out) [i.keys destination]))
  %=  move-loop
    moves-copy  t.moves-copy
      destination
    ?+  i.moves-copy  !!
      %'L'  -:(~(got by m) destination)
      %'R'  +:(~(got by m) destination)
    ==
  ==
++  get-input
  ;~  plug
    (star prn)
    ;~  pfix
      ;~(plug line line)
      %+  cook  malt
      (more newline node)
    ==
  ==
::
++  line  ;~(pfix (star prn) newline)
++  newline  (just '\0a')
++  node
  ;~  sfix
    ;~  (glue (star ;~(less alf prn)))
      (star alf)
      (star alf)
      (star alf)
    ==
    par
  ==
--
