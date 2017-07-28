# Fifth Bash Exercise

Write a script that takes the argument **-m**, **-s**, **-e** or **-o**,
followed by as many numbers as the user wishes. The script should:

* Calculate the sum of all numbers if **-s** is provided
* The sum of even numbers if **-e** is provided
* The sum of odd numbers if **-o** is provided
* The mean if **-m** is provided
* Give an error if none of the arguments are given

---

Some ideas:

* In both cases you will need to calculate the sum, so try to get that working
first.
* As you know **bc** evaluates expressions given to it on *stdin*, so try to built
an appropriate sum expression from all commandline arguments using a
loop. This you **echo** to **bc** in order to get the sum.
* You may assume that users are nice and will only provide valid strings as
the number arguments to your script.
