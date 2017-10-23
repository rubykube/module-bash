#!/usr/bin/env bats

source ./ex06.sh

@test "echo" {
  run map echo echo

  [ "$status" -eq 0 ]
  [ "$output" = "echo" ]
 }

@test 'touch' {
  run map touch map.txt

  [ "$status" -eq 0 ]
  [ -f "map.txt" ]
}

@test 'touch with few params' {
  run map touch test1 test2 test3 test4 test5

  [ "$status" -eq 0 ]
  [ -f "map.txt" ]
}

@test 'cat' {
  run map cat map.txt

  [ "$status" -eq 0 ]
  [ "$output" = "" ]
}

 @test 'cat with few params' {
  run map cat test1 test2 test3 test4 test5

  [ "$status" -eq 0 ]
  [ "$output" = "" ]
 }

@test 'rm' {
  run map rm map.txt

  [ "$status" -eq 0 ]
  ! [ map.txt -f  ]
}
