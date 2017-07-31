#!/bin/bash

@test "Default" {
  run bash ex10.sh resources/text_1.txt

  [ "$status" -eq 0 ]
  [ "$output" = "11 resources/text_1.txt" ]
}

@test "With empty lines" {
  run bash ex10.sh resources/text_2.txt

  [ "$status" -eq 0 ]
  [ "$output" = '32 resources/text_2.txt' ]
}

@test "empty file" {
  run bash ex10.sh resources/text_3.txt

  [ "$status" -eq 0 ]
  [ "$output" = '1 resources/text_3.txt' ]
}

@test "with directory" {
  run bash ex10.sh resources/files

  [ "$status" -eq 1 ]
  [ "$output" = "" ]
}

@test "empty lines in starting file" {
  run bash ex10.sh resources/text_4.txt
  [ "$status" -eq 0 ]
  [ "$output" = "14 resources/text_4.txt" ]
} 

@test "only empty lines" {
  run bash ex10.sh resources/text_5.txt
  [ "$status" -eq 0 ]
  [ "$output" = "20 resources/text_5.txt" ]
}

@test "with 2 files" {
  run bash ex10.sh resources/text_5.txt resources/text_4.txt
  [ "$status" -eq 0 ]
  [ "$output" = "20 resources/text_5.txt
14 resources/text_4.txt" ]
}

