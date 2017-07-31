#!/usr/bin/env bats

@test "Default" {
 run bash digit.sh resources/digitfile.txt

 [ "$status" -eq 0 ]
 [ "$output" = "10 zeroes, 13 ones, 4 twoes, 7 threes, 3 fours, 3 fives, 0 sixs, 0 sevens, 0 eights, 1 nines" ]


@test "Too many arguments" {
 run bash digit.sh resources/digitfile.txt digit.txt

 [ "$status" -eq 1 ]
 [ "$output" = "Too many(few) arguments" ]
}

@test "Too few arguments" {
 run bash digit.sh 
 
 [ "$status" -eq 1 ]
 [ "$output" = "Too many(few) arguments" ]
}

@test "File doesn't exist" {
 run bash digit.sh resources/digitfile
 
 [ "$status" -eq 1 ]
 [ "$output" = "Error.." ]
}

