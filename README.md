# Bash

Bash is a very powerful Unix shell and command scripting language.The man page for Bash is a well written and informational document. Additional guides, information, and examples can be found at the Linux Documentation Project. Shellcheck.net provides a web interface (and binary for some distros) that checks shell scripts for errors or common issues and provides information on how
to best correct them.

## Introduction to bash course

 In the course you will revisit some basic concepts of a Unix-like operating
system and review the set of Unix core-utils one needs for everyday scripting.
Also you will learn the bash shell and its core language features, including

• control statements (if,for,while, . . . )

• file or user input/output

• bash functions

• features simplifying code reuse and script structure

 The final exercises will be concerned with the extraction of information (e.g.
from files)using so-called regular expressions and programs like awk, sed or grep.

## Running the Tests

 As there isn't much of a bash ecosystem, there also isn't really a defacto leader
in the bash testing area. For these examples we are using bats. You should be
able to install it from sources like this:
```
$ git clone https://github.com/sstephenson/bats.git
$ cd bats
$ ./install.sh $HOME/root
```

## Useful Bash Resources

• [Shellcheck provides shell script guidelines and help](http://www.shellcheck.net/)

• [The Linux Documentation Project Guides](http://tldp.org/guides.html)

• [Bash man page](https://linux.die.net/man/1/bash)

• Also thanks for [material for the advanced bash scripting course at Heidelberg University](https://github.com/mfherbst/bash-course)

