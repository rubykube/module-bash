# 7th Bash Exercise

Consider the first *n* lines of the file **surnames.txt**

* First use head to only generate a derived file containing just the first *n*
lines

Write a bash one-liner using **sed** and **grep** that generates a list of the
surnames of all *Q-Chem* authors:

* Remove all initials and bothering "**.**" or "**-**" symbols (Do not remove the
"**-**" on compound surnames!)
* Replace all `,` by `\n`, the escape sequence for a line break.
