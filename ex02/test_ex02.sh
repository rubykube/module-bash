#!/bin/bash

@test "Default" {
  run bash ex02.sh resources/1 clown qwe baium

  [ "$status" -eq 0 ]
  [ "$output" = "clown 4
1
4
6
7
qwe 2
3
5
baium 1
2" ]
}

@test "No args" {
  run bash ex02.sh

  [ "$status" -eq 1 ]
  [ "$output" = '' ]
}

@test "Without right args" {
  run bash ex02.sh resources/1 lol cat vim

  [ "$status" -eq 0 ]
  [ "$output" = 'lol 0
cat 0
vim 0' ]
}


@test "With empty lines" {
  run bash ex02.sh resources/3 toto tata tyty

  [ "$status" -eq 0 ]
  [ "$output" = 'toto 1
3
tata 1
7
tyty 1
11' ]
}

@test "with number" {
  run bash ex02.sh resources/4 1111 2222 3333

  [ "$status" -eq 0 ]
  [ "$output" = "1111 1
2
2222 1
5
3333 1
3" ]
}
