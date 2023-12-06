/*  txt  %txt  /input/txt
:-  %say  |=  *  :-  %noun
::
=<
=+
  ^-  $:
        seeds=(list @)
        seed-soil=(list (trel @ @ @))  ::  dest start, source start, length
        soil-fert=(list (trel @ @ @))
        fert-watr=(list (trel @ @ @))
        watr-lyte=(list (trel @ @ @))
        lyte-temp=(list (trel @ @ @))
        temp-humi=(list (trel @ @ @))
        humi-loco=(list (trel @ @ @))
      ==
  (rash (of-wain:format txt) get-input)
%-  min-list
%+  turn  seeds
|=  seed=@
^-  @
%+  project  humi-loco
%+  project  temp-humi
%+  project  lyte-temp
%+  project  watr-lyte
%+  project  fert-watr
%+  project  soil-fert
%+  project  seed-soil
seed
::
|%
++  project
  |=  [m=(list (trel @ @ @)) i=@]
  ^-  @
  ?~  m  i
  =+  j=(get-from-range i i.m)
  ?~  j  $(m t.m)
  u.j
::
++  get-from-range
  |=  [i=@ r=(trel @ @ @)]
  ^-  (unit @)
  ?.  &((gte i q.r) (lth i (add q.r r.r)))
    ~
  `(add p.r (sub i q.r))
::
++  newline  (just '\0a')
++  line  ;~(plug (star prn) newline)
++  get-input
  ;~  (glue ;~(plug line line line))
    get-seeds
    get-map
    get-map
    get-map
    get-map
    get-map
    get-map
    get-map
  ==
::
++  get-seeds
  ;~(pfix (jest 'seeds: ') (more ace dem))
::
++  get-map
  (more newline ;~((glue ace) dem dem dem))
::
++  min-list
  |=  a=(list @)
  ^-  @
  ?~  a  !!
  (roll t.a |:([i=i.a acc=i.a] (min i acc)))
::
--
