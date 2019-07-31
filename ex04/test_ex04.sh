#!/usr/bin/

@test "Default" {
  run bash ex04.sh Hello resources/text_1.txt

  [ "$status" -eq 0 ]
  [ "$output" = "text_1.txt
1
7
11" ]
}

@test "No args" {
  run bash ex04.sh

  [ "$status" -eq 1 ]
  [ "$output" = '' ]
}

@test "Without first arg" {
  run bash ex04.sh resources/text_2.txt

  [ "$status" -eq 1 ]
  [ "$output" = '' ]
}


@test "Without second arg" {
  run bash ex04.sh Hello

  [ "$status" -eq 1 ]
  [ "$output" = '' ]
}

@test "Using number" {
  run bash ex04.sh 123 resources/numbers.txt

  [ "$status" -eq 0 ]
  [ "$output" = "numbers.txt
1
8" ]
}
