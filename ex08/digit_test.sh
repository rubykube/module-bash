#!/usr/bin/env bats

@test "Default" {
 run bash digit.sh resources/digitfile.txt

 [ "$status" -eq 0 ]
 [ "$output" = "11 zeroes, 10 ones, 9 twoes, 8 threes, 7 fours, 6 fives, 5 sixs, 3 sevens, 2 eights, 1 nines" ]
}

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

