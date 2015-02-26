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

!create c:Const
!set c.RCAP := 9
!set c.DCAP := 3
!set c.DNB  := 2
!set c.RNB  := 5
!set c.MAXB := 3
!set c.SIDE := 3
!set c.PTIC := 5

gen start Generator.assl genWorld(c)
gen result
gen result accept
