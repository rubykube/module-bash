#!/usr/bin/env bats

@test "echo" {
  run ./map.sh   echo echo

  [ "$status" -eq 0 ]
  [ "$output" = "echo" ]
}
@test 'touch' {
  run ./map.sh  touch map.txt

  [ "$status" -eq 0 ]
  [ -f "map.txt" ]
}

 @test 'cat' {
   run ./map.sh  cat map.txt
   [ "$status" -eq 0 ]
   [ "$output" = "" ]
 }
@test 'rm' {
  run ./map.sh  rm map.txt
   [ "$status" -eq 0 ]
 ! [ map -d  ]
 }


