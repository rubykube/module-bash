#!/usr/bin/env bats

#set -xe

@test "Existing path STR" {
  run bash ./ex02.sh "STR"
  [ "$status" -eq 0 ]
  [ "$output" = $'STR\n./resources/FOLDER/STR:' ]
}

@test "Existing path FOLDER" {
  run bash ex02.sh "FOLDER"
  [ "$status" -eq 0 ]
  [ "$output" = $'FOLDER\n./resources/FOLDER:\n./resources/FOLDER/STR:' ]
}

@test "2 existing paths" {
  run bash ex02.sh "STR FOLDER"
  [ "$status" -eq 0 ]
  [ "$output" = $'STR\n./resources/FOLDER/STR:\nFOLDER\n./resources/FOLDER:\n./resources/FOLDER/STR:' ]
}


@test "2 existing paths" {
  run bash ex02.sh "FOLDER STR"
  [ "$status" -eq 0 ]
  [ "$output" = $'FOLDER\n./resources/FOLDER:\n./resources/FOLDER/STR:\nSTR\n./resources/FOLDER/STR:' ]
}

@test "Unexistinsting path" {
  run bash ex02.sh "UNEX"
  [ "$status" -eq 0 ]
  [ "$output" = $'the searched PATH is unexisting' ]
}

@test "Another unexisting path" {
  run bash ex02.sh "ANOTHERUNEX"
  [ "$status" -eq 0 ]
  [ "$output" = $'the searched PATH is unexisting' ]
}

@test "Existing FILE" {
  run bash ex02.sh "FINDME.txt"
  [ "$status" -eq 0 ]
  [ "$output" = $'FINDME.txt' ]
}


@test "Another existing FILE" {
  run bash ex02.sh "SRCHFL.txt"
  [ "$status" -eq 0 ]
  [ "$output" = $'SRCHFL.txt' ]
}

@test "2 existing FILES" {
  run bash ex02.sh "FINDME.txt SRCHFL.txt"
  [ "$status" -eq 0 ]
  [ "$output" = $'FINDME.txt\nSRCHFL.txt' ]
}





