/*  txt  %txt  /input/txt
:-  %say  |=  *  :-  %noun
::
=>  |%
    +$  color  ?(%red %green %blue)
    +$  game  [id=@ m=(list (list (pair color @ud)))]
    --
=<
  =/  games=(list game)
    (turn txt |=(c=cord (rash c game-rule)))
  (roll (turn games get-power) add)
::
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
++  get-power
  |=  g=game
  =|  [blues=@ reds=@ greens=@]
  |-  ^-  @
  =*  outer-loop  $
  ?~  m.g  :(mul blues reds greens)
  |-  ^-  @
  =*  inner-loop  $
  ?~  i.m.g  outer-loop(m.g t.m.g)
  ?-  p.i.i.m.g
    %red    inner-loop(reds (max reds q.i.i.m.g), i.m.g t.i.m.g)
    %blue   inner-loop(blues (max blues q.i.i.m.g), i.m.g t.i.m.g)
    %green  inner-loop(greens (max greens q.i.i.m.g), i.m.g t.i.m.g)
  ==
--
