#define stops (stopped == 3)
#define oneelect (y0 + y1 + y2 == 1)
byte stopped = 0;

bit g0 = 1;
bit g1 = 1;
bit g2 = 1;

bit y0 = 0;
bit y1 = 0;
bit y2 = 0;

byte a = 200;

proctype P0()
{
  g0 = 1;
  a = 0;
  g0 = 0;

  if :: (g0==0) -> skip fi;
  if :: (g1==0) -> skip fi;
  if :: (g2==0) -> skip fi;

  y0 = 0==a;
  assert(y0 == (0==a));
  stopped++;
}

proctype P1()
{
  g1 = 1;
  a = 1;
  g1 = 0;

  if :: (g0==0) -> skip fi;
  if :: (g1==0) -> skip fi;
  if :: (g2==0) -> skip fi;

  y1 = 1==a;
  assert(y1 == (1==a));
  stopped++;
}

proctype P2()
{
  g2 = 1;
  a = 2;
  g2 = 0;

  if :: (g0==0) -> skip fi;
  if :: (g1==0) -> skip fi;
  if :: (g2==0) -> skip fi;

  y2 = 2==a;
  assert(y2 == (2==a));
  stopped++;
}

init
{
  assert(g0==0 || g0==1);
  assert(g1==0 || g1==1);
  assert(g2==0 || g2==1);

  assert(y0==0 || y0==1);
  assert(y1==0 || y1==1);
  assert(y2==0 || y2==1);
  atomic
  {
    run P0();
    run P1();
	run P2();
  }
}
