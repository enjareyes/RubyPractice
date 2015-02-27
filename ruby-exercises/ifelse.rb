=begin 
If Statements
Now that we know how to write conditional statements, we can use them to modify the 
flow of the program between different branches.

If Statements

The basic branching structure in Ruby is the if structure. The if structure allows 
the program to run a particular set of code (or a branch) when a condition is true. 
Here are some if structures:

if x < 3 
  puts "This is a small number"
end

if temp > 60 && temp < 80 
  puts "It is a nice day outside"
end 

if num1.eql?(5)
  value = num1 * 5
end

Using the SANDBOX experiment with these code segments by assigning different values 
to the variables in the conditional statement to make it true or false. Notice that 
when the conditional statement is false there is no output because the flow of the 
program does not go into the body of the if branch.

Ruby also provides an unless modifier that is the opposite of the if. An unless branch 
will be followed "unless the statement is true", which is equivalent to saying 
"when the statement is false". All unless structures can also be written as if
structures and are only used to make code more readable in cases where a condition 
is easier to phrase in terms of a false outcome. Here is the first of the if structures 
from above rewritten as an unless:

unless x >= 3 
  puts "This is a small number"
end

Rewrite the other if structures above as unless and use the SANDBOX to verify that 
they work the same as the originals (ie give the same values of true or false for 
the same inputs).

=end

unless temp < 60 || temp > 80
	puts "It's a nice day outside"
end

unless num != 5
	value = num * 5
end

=begin

If and Unless statement modifiers
When the body of the if or unless structure is a single line, a statement modifier 
can be used at the end of this line instead of a full three line if structure. 
For example, the code

if "ruby" == language
  "nice choice"
end

can be written as

"nice choice" if "ruby" == language
Use the SANDBOX to write some of the other if and unless structures above using the 
statement modifier syntax.

=end

 
puts "This is a small number" if x < 3

puts "It is a nice day outside" if temp > 60 && temp < 80 

value = num1 * 5 if num1.eql?(5)  # value = num1 * 5 if num1 == (5)

=begin

If elsif

Often we want to branch into more than just one option. To do this we can use the
elsif (also called else if in other languages) and else branches. An elsif branch is 
written after the initial if and is used to test an additional condition. The elsif
branches are tested in order and if one of them is true, then the body of that branch 
executes and the remaining branches in the if structure are skipped. This can be seen 
in the following diagram.

if else diagram

An if structure can have as many elsif branches as you like. Here is an example of 
an if / elsif structure used to compute a course grade:


if average >= 90
  grade = "A"
elsif average >= 80
  grade = "B"
else
  grade = "F"
end

The third type of branch is an else branch which takes care of "everything else". 
As you see in the code above, the else branch must be the last branch in the if 
structure. An else branch has no conditional statement and it will only be executed 
if all the other branches evaluate to false. The else is often used for a default value 
or a fall through to make sure a value is assigned.

Order Matters!
When writing a multi part if / elsif structure, the order of the branches is important 
because the first branch that is true will be evaluated and then the others will be 
skipped. If we switch the ordering of the first and second branches as shown below, 
the average >= 90 statement will never be triggered.


if average >= 80
  grade = "B"
elsif average >= 90
  grade = "A"
else
  grade = "F"
end

This is because in the original version, when we write the second conditional 
statement as average >= 80, we are using the fact that if this code is reached then 
the first conditional statement (average >= 90) must have been false (ie: average < 90). 
Thus in fact the condition for getting a "B" is really average >= 80 && average < 90. 
The main thing to remember is that the order of the if / elsif branches matters!

=end








