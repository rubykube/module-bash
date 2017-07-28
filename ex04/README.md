# Fourth Bash Exercise

**find** is a really handy program to search for files
and directories with uncountable options (see **man find**). **find** per default searches through all
directories and subdirectories and prints the relative paths of all files satisfying
the conditions to *stdout*. All options you provide are connected using a logical
*and*. This can of cause all be changed (see documentation). If you have never
used **find** before, try the following:
* **find -name "*.sh"**
* **find -type f -name "*.sh"**
* **find $HOME -type d -name "*bash*"**

---

In this exercise you should build a **grep_all** script:
* The script should search for all files in or below the working directory
(using **find**)
* In all files found, the script should grep for the pattern provided on **$1**
and it should print to *stdout* in which files and on which line the match
occurred.
* The simplest way to achieve this is to pipe the output of **find** to **while
read** line.
