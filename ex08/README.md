# 8th Bash Exercise

This exercise tries to show you how much more powerful **grep**
becomes when used with regular expressions:

* Design a regular expression to match a single digit. In other words if the
string contains the number “456”, the regex should match “4”, “5” and
“6” *separately* and not “456” as a whole.

* Now pipe this result in some appropriate Unix tools in order to find out
how many times each digit is contained in the file. The output should be
some sort of a table telling you that there are e.g. 2 fours, 3 twos, . . .
