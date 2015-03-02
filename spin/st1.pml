#define mutex (critical <= 1)
bit t = 0;
byte critical = 0;

proctype P0()
{
  do :: 1 -> 
    if :: (t==0) -> skip fi;
    assert(t==0);
    critical++;
    printf("CA0");
    critical--;
    t = 1;
    printf("NCAO");
  od;
}

proctype P1()
{
  do :: 1 -> 
    if :: (t==1) -> skip fi;
    assert(t==1);
    critical++;
    printf("CA1");
    critical--;
    t = 0;
    printf("NCA1");
  od;
}

init
{
  assert(t==0 || t==1);
  atomic
  {
    run P0();
    run P1()
  }
}
