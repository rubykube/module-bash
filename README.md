Bash


 Bash is a very powerful Unix shell and command scripting language.The man page for Bash is a well written and informational document. Additional guides, information, and examples can be found at the Linux Documentation Project. Shellcheck.net provides a web interface (and binary for some distros) that checks shell scripts for errors or common issues and provides information on how
to best correct them.


Introduce to course


 In the course you will revisit some basic concepts of a Unix-like operating
system and review the set of Unix core-utils one needs for everyday scripting.
Also you will learn the bash shell and its core language features, including

• control statements (if,for,while, . . . )                                    
• file or user input/output                                                     
• bashfunctions                                                                 
• features simplifying code reuse and script structure                          
 
 The final exercises will be concerned with the extraction of information (e.g.
from files)using so-called regular expressions and programs like awk, sed or grep.



Running the Tests



 As there isn't much of a bash ecosystem, there also isn't really a defacto leader
in the bash testing area. For these examples we are using bats. You should be
able to install it from your favorite package manager, on OS X with homebrew this
would look something like this:

$ brew install bats                                                                
==> Downloading                                                                    
https://github.com/sstephenson/bats/archive/v0.4.0.tar.gz                          
==> Downloading from                                                              
https://codeload.github.com/sstephenson/bats/tar.gz/v0.4.0                          
############################################################### 100.0%      
==>./install.sh /opt/boxen/homebrew/Cellar/bats/0.4.0/opt/boxen/homebrew/Cellar/bats/0.4.0: 10 files, 60K, built in 2 seconds           



Useful Bash Resources


•http://www.shellcheck.net/                                                             
•http://tldp.org/guides.html                                                            
•https://linux.die.net/man/1/bash                                                                                                
•https://github.com/mfherbst/bash-course
