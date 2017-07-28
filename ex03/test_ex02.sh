#!/bin/bash

@test "Default" {
  run bash ex02.sh resources/1 Ipsum is and

  [ "$status" -eq 0 ]
  [ "$output" = "Ipsum 4
1
2
7
9
is 3
1
6
8
and 4
1
2
3
8" ]
}

@test "No args" {
  run bash ex02.sh

  [ "$status" -eq 1 ]
  [ "$output" = '' ]
}

@test "Without right args" {
  run bash ex02.sh resources/1 Helios Technologies Great

  [ "$status" -eq 0 ]
  [ "$output" = 'Helios 0
Technologies 0
Great 0' ]
}


@test "With empty lines" {
  run bash ex02.sh resources/3 like page sometimes

  [ "$status" -eq 0 ]
  [ "$output" = 'like 2
7
36
page 2
2
10
sometimes 2
13
36' ]
}

@test "with number" {
  run bash ex02.sh resources/4 1.10.32 2000 45

  [ "$status" -eq 0 ]
  [ "$output" = "1.10.32 3
7
12
15
2000 1
3
45 2
2
9" ]
}
