#!/usr/bin/env bats

@test "Test work on first 5 lines" {
  run bash ex07.sh 5

  [ "$status" -eq 0 ]
  [ "$output" = $'BROWN  5429595\nWILLIAMS  4173254' ]
}

@test "No parameter returns error" {
  run bash ex07.sh

 [ "$status" -eq 1 ]
}

@test "Test work on first 10 lines" {
  run bash ex07.sh 10

  [ "$status" -eq 0 ]
  [ "$output" = $'BROWN  5429595\nWILLIAMS  4173254\nMILLER  3391134\nTAYLOR  3337476\nWILSON  3299960\nDAVIS  3212807\nWHITE  2881963' ]
}

@test "Test on 0 lines returns error" {
  run bash ex07.sh 0

  [ "$status" -eq 1 ]
}

@test "Test on 2 lines return empty string" {
  run bash ex07.sh 2

  [ "$status" -eq 0 ]
  [ "$output" = $'' ]
}
