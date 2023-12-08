/*  txt  %txt  /input/txt
:-  %say  |=  *  :-  %noun
::
=>  |%
    +$  range  (list (pair @ @))  ::  list of ranges, start and length
    --
|^
=+
  ^-  $:
        seeds=(list (pair @ @))        ::  seed start and length
        seed-soil=(list (trel @ @ @))  ::  dest start, source start, length
        soil-fert=(list (trel @ @ @))
        fert-watr=(list (trel @ @ @))
        watr-lyte=(list (trel @ @ @))
        lyte-temp=(list (trel @ @ @))
        temp-humi=(list (trel @ @ @))
        humi-loco=(list (trel @ @ @))
      ==
  (rash (of-wain:format txt) get-input)
=<  -<
%-  sort-ranges
%+  project-range  humi-loco
%+  project-range  temp-humi
%+  project-range  lyte-temp
%+  project-range  watr-lyte
%+  project-range  fert-watr
%+  project-range  soil-fert
%+  project-range  seed-soil
seeds
::
++  project-range
  |=  [m=(list (trel @ @ @)) r=range]
  ^-  range
  %-  zing
  %+  turn  r
  |=  s=(pair @ @)
  ^-  range
  (project-slice m s)
::
++  project-slice
  |=  [m=(list (trel @ @ @)) s=(pair @ @)]
  =|  out=range
  |-  ^-  range
  ::  assume that the map ranges (pieces) do not intersect
  ::
  ?~  m  [s out]
  =/  [left=(unit (pair @ @)) mid=(unit (pair @ @)) right=(unit (pair @ @))]
    (project-slice-piece i.m s)
  ;:  weld
    out
    `range`(drop mid)
    `range`?~(left ~ $(s u.left, m t.m))
    `range`?~(right ~ $(s u.right, m t.m))
  ==
::
++  project-slice-piece
  |=  [[dest=@ sors=@ leng=@] [from=@ size=@]]
  ^-  [(unit [@ @]) (unit [@ @]) (unit [@ @])]
  ?:  =(size 0)  [~ ~ ~]
  =/  sors-end=@  (dec (add sors leng))
  =/  from-end=@  (dec (add from size))
  :+
      ::  left
      ::
      ?:  (gte from sors)  ~
      `[from (succ (sub (min sors from-end) from))]
    ::  mid
    ::
    ?:  |((lth from-end sors) (gth from sors-end))  ~
    :-  ~
    =+
      ^=  [f diff]
      ?:  (gth dest sors)
        [add (sub dest sors)]
      [sub (sub sors dest)]
    :-  (f (max from sors) diff)
    (succ (sub (min sors-end from-end) (max from sors)))
  ::  right
  ::
  ?:  (lte from-end sors-end)  ~
  :-  ~
  :-  (max from +(sors-end))
  (succ (sub from-end (max from +(sors-end))))
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
++  sort-ranges
  |=  =range
  ^+  range
  %+  sort  range
  |=  [a=(pair @ @) b=(pair @ @)]
  (lth p.a p.b)
::
++  get-seeds
  ;~(pfix (jest 'seeds: ') (more ace ;~((glue ace) dem dem)))
::
++  get-map
  %+  cook  sort-map
  (more newline ;~((glue ace) dem dem dem))
::
++  sort-map
  |=  m=(list (trel @ @ @))
  ^-  (list (trel @ @ @))
  %+  sort  m
  |=  [a=(trel @ @ @) b=(trel @ @ @)]
  ^-  ?
  (lth q.a q.b)
::
--
