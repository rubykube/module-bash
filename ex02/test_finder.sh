#!/usr/bin/env bats

#set -xe

@test "Existing path STR" {
  run ./finder.sh "STR"
  [ "$status" -eq 0 ]
  [ "$output" = $'STR\n./resources/FOLDER/STR:' ]
}

@test "Existing path FOLDER" {
  run bash finder.sh "FOLDER"
  [ "$status" -eq 0 ]
  [ "$output" = $'FOLDER\n./resources/FOLDER:\n./resources/FOLDER/STR:' ]
}

@test "2 existing paths" {
  run bash finder.sh "STR FOLDER"
  [ "$status" -eq 0 ]
  [ "$output" = $'STR\n./resources/FOLDER/STR:\nFOLDER\n./resources/FOLDER:\n./resources/FOLDER/STR:' ]
}


@test "2 existing paths" {
  run bash finder.sh "FOLDER STR"
  [ "$status" -eq 0 ]
  [ "$output" = $'FOLDER\n./resources/FOLDER:\n./resources/FOLDER/STR:\nSTR\n./resources/FOLDER/STR:' ]
}

@test "Unexistinsting path" {
  run bash finder.sh "UNEX"
  [ "$status" -eq 0 ]
  [ "$output" = $'the searched PATH is unexisting' ]
}

@test "Another unexisting path" {
  run bash finder.sh "ANOTHERUNEX"
  [ "$status" -eq 0 ]
  [ "$output" = $'the searched PATH is unexisting' ]
}

@test "Existing FILE" {
  run bash finder.sh "FINDME.txt"
  [ "$status" -eq 0 ]
  [ "$output" = $'FINDME.txt' ]
}


@test "Another existing FILE" {
  run bash finder.sh "SRCHFL.txt"
  [ "$status" -eq 0 ]
  [ "$output" = $'SRCHFL.txt' ]
}

@test "2 existing FILES" {
  run bash finder.sh "FINDME.txt SRCHFL.txt"
  [ "$status" -eq 0 ]
  [ "$output" = $'FINDME.txt\nSRCHFL.txt' ]
}





