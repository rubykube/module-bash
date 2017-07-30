#!/usr/bin/env bats

@test "Sum without input" {
  run bash ex05.sh -s

  [ "$status" -eq 0 ]
  [ "$output" = "0" ]
}

@test "Sum of one positive number" {
  run bash ex05.sh -s 9

  [ "$status" -eq 0 ]
  [ "$output" = "9" ]
}

@test "90+89=179" {
  run bash ex05.sh -s 90 89

  [ "$status" -eq 0 ]
  [ "$output" = "179" ]
}

@test "Sum of one negative number" {
  run bash ex05.sh -s -123

  [ "$status" -eq 0 ]
  [ "$output" = "-123" ]
}

@test "-18-90=-108" {
  run bash ex05.sh -s -18 -90

  [ "$status" -eq 0 ]
  [ "$output" = "-108" ]
}

@test "9-12+167=164" {
  run bash ex05.sh -s 9 -12 167

  [ "$status" -eq 0 ]
  [ "$output" = "164" ]
}

@test "9-12+167+66-90+33=173" {
  run bash ex05.sh -s 9 -12 167 66 -90 33

  [ "$status" -eq 0 ]
  [ "$output" = "173" ]
}

@test "Non existing flag" {
  run bash ex05.sh -k 9

  [ "$status" -eq 1 ]
  [ "$output" = "Error.." ]
}

@test "(12+3+8+9)/4=8" {
  run bash ex05.sh -m 12 3 8 9

  [ "$status" -eq 0 ]
  [ "$output" = "8" ]
}

@test "(33+1)/2=17" {
  run bash ex05.sh -m 33 1

  [ "$status" -eq 0 ]
  [ "$output" = "17" ]
}

@test "(-9+9)/2=0" {
  run bash ex05.sh -m -9 9

  [ "$status" -eq 0 ]
  [ "$output" = "0" ]
}

@test "Two flags input" {
  run bash ex05.sh -s -e 9

  [ "$status" -eq 1 ]
  [ "$output" = "Error.." ]
}

@test "Odd sum for {9}=9" {
  run bash ex05.sh -o 9

  [ "$status" -eq 0 ]
  [ "$output" = "9" ]
}

@test "Odd sum for {8}=0" {
  run bash ex05.sh -o 8

  [ "$status" -eq 0 ]
  [ "$output" = "0" ]
}

@test "Odd sum for {-28}=0" {
  run bash ex05.sh -o 8

  [ "$status" -eq 0 ]
  [ "$output" = "0" ]
}

@test "Odd sum for {4 6 3}=10" {
  run bash ex05.sh -o 4 6 3

  [ "$status" -eq 0 ]
  [ "$output" = "3" ]
}

@test "Even sum for {12}=12" {
  run bash ex05.sh -e 12

  [ "$status" -eq 0 ]
  [ "$output" = "12" ]
}

@test "Even sum for {23}=0" {
  run bash ex05.sh -e 23

  [ "$status" -eq 0 ]
  [ "$output" = "0" ]
}

@test "Even sum for {-11}=0" {
  run bash ex05.sh -e 23

  [ "$status" -eq 0 ]
  [ "$output" = "0" ]
}

@test "Even sum for {11 24 77}=0" {
  run bash ex05.sh -e 11 24 77

  [ "$status" -eq 0 ]
  [ "$output" = "24" ]
}






