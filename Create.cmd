-- Copyright (c) 2015 FAT-GYFT, MIT License

reset
open Model.use

-- TICN : Integer (Number of tics to generate)
-- RCAP : Integer (Product capacity of a receptacle)
-- DCAP : Integer (Product capacity of a drone)
-- DNB  : Integer (Drone number)
-- RNB  : Integer (Receptacle number)
-- MAXB : Integer (Max battery for a drone)
-- SIZE : Integer (Side of the square grid)
-- PTIC : Integer (Number of ticks before a product is consumed)

!create u:Universe
!set u.TICN := 5
!set u.RCAP := 9
!set u.DCAP := 3
!set u.DNB  := 3
!set u.RNB  := 4
!set u.MAXB := 3
!set u.SIDE := 3
!set u.PTIC := 5

gen start Generator.assl genWorlds(u)
gen result
gen result accept
