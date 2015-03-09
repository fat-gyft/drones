-- Copyright (c) 2015 FAT-GYFT, MIT License

reset
open Model.use

-- RCAP : Integer (Product capacity of a receptacle)
-- DCAP : Integer (Product capacity of a drone)
-- DNB  : Integer (Drone number)
-- RNB  : Integer (Receptacle number)
-- MAXB : Integer (Max battery for a drone)
-- SIZE : Integer (Side of the square grid)
-- PTIC : Integer (Number of ticks before a product is consumed)

!create w:World
!set w.RCAP := 9
!set w.DCAP := 3
!set w.DNB  := 3
!set w.RNB  := 2
!set w.MAXB := 3
!set w.SIDE := 3
!set w.PTIC := 5

gen start -b -d Generator.assl genWorld(w)
gen result
gen result accept
