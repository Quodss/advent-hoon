/*  txt  %txt  /input/txt
:-  %say  |=  *  :-  %noun
::
=>  |%
    +$  color  ?(%red %green %blue)
    +$  game  [id=@ m=(list (map color @ud))]
    --
=<
  =/  games=(list game)
    %+  turn  txt
    |=  c=cord
    =/  a=[p=@ q=(list (list [color @ud]))]  (rash c game-rule)
    ;;  game
    .*  .  !=  ::  ++my fails without unsafe eval for some reason
    :-  p.a
    (turn q.a my)
  %+  roll  games
  |=  [g=game acc=@]
  ?.  (valid-game g)
    acc
  (add acc id.g)
|%
++  game-rule
  ;~  pfix
    (jest 'Game ')
    ;~  plug
      dem
      ;~  pfix
        col
        (star ace)
        (more ;~(plug mic ace) round)
      ==
    ==
  ==
::
++  round
  (more ;~(plug com ace) cubes)
++  cubes
  %+  cook  ,[color @ud]
  ;~  pose
    (stag %red ;~(sfix dem (jest ' red')))
    (stag %blue ;~(sfix dem (jest ' blue')))
    (stag %green ;~(sfix dem (jest ' green')))
  ==
::
++  valid-game
  |=  g=game
  ^-  ?
  ?~  m.g  %.y
  ?&  (lte-soft (~(get by i.m.g) %red) 12)
      (lte-soft (~(get by i.m.g) %green) 13)
      (lte-soft (~(get by i.m.g) %blue) 14)
      $(m.g t.m.g)
  ==
::
++  lte-soft
  |=  [a=(unit @) b=@]
  ^-  ?
  ?~  a  %.y
  (lte u.a b)
::
--
