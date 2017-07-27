#/usr/bin/env bats

@test "Finding something" {
  run bash grep_all.sh text.txt

  [ "$status" -eq 0 ]
  [ "$output" = "text.txt" ]
}

@test "Try to find something" {
  run bash grep_all.sh $1

  [ "$status" -eq 0 ]
  [ "$output" = "$1" ]
}

