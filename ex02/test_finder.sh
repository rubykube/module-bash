#!/usr/bin/env bats

@test "Existing path STR" {
  run bash ex.sh "STR"
  [ "$status" -eq 0 ]
  [ "$output" = $'STR\n./FOLDER/STR:' ]
  
}

@test "Existing path FOLDER" {
  run bash ex.sh "FOLDER"
  [ "$status" -eq 0 ]
  [ "$output" = $'FOLDER\n./FOLDER:\n./FOLDER/STR:' ]
}


