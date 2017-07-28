#!/bin/bash

@test "Default" {
  run bash ex10.sh resources/text_1.txt

  [ "$status" -eq 0 ]
  [ "$output" = "11 text_1.txt" ]
}

@test "With empty lines" {
  run bash ex10.sh resources/text_2.txt

  [ "$status" -eq 0 ]
  [ "$output" = '32 text_2.txt' ]
}

@test "With empty lines" {
  run bash ex10.sh resources/text_3.txt

  [ "$status" -eq 0 ]
  [ "$output" = '0 text_3.txt' ]
}

@test "with directory" {
  run bash ex10.sh resources/files

  [ "$status" -eq 1 ]
  [ "$output" = "" ]
}

@test "empty lines in starting file" {
  run bash ex10.sh resources/text_4.txt
  [ "$status" -eq 0 ]
  [ "$output" = "14 text_4.txt" ]
} 

@test "only empty lines" {
  run bash ex10.sh resources/text_5.txt
  [ "$status" -eq 0]
  [ "$output" = "20 text_5.txt" ]
}

@test "with 2 files" {
  run bash ex10.sh resources/text_5.txt resources/text_4.txt
  [ "$status" -eq 0]
  [ "$output" = "20 text_5.txt
14 text_4.txt" ]
}

