#!/usr/bin/env bats

@test "Default" {
  run bash grep_all.sh Hello resources/text_1.txt 

  [ "$status" -eq 0 ]
  [ "$output" = "resources/text_1.txt
1
7
11" ]
}

@test "No args" {
  run bash grep_all.sh

  [ "$status" -eq 1 ]
  [ "$output" = '' ]
}

@test "Without first arg" {
  run bash grep_all.sh  text_2.txt

  [ "$status" -eq 1 ]
  [ "$output" = '' ]
}


@test "Without second arg" {
 
  run bash grep_all.sh Hello 

  [ "$status" -eq 1 ]
  [ "$output" = '' ]
}

@test "Using number" {
  run bash grep_all.sh 123 resources/numbers.txt

  [ "$status" -eq 0 ]
  [ "$output" = "resources/numbers.txt
1
8" ]
}
