# Describe the difference between ! and ? in Ruby. 

<<-ANS 
For method definition, ! is often used to show that a method is destructive,
while ? is often used to show that a method will returen a Boolean.

! also means 'not' in Boolean logic.
? is part of the syntax in the ternary operator.
ANS

# And explain what would happen in the following scenarios:


# what is != and where should you use it?
'Not true, would use an a conditional'
# put ! before something, like !user_name
'Makes the object falsey'
# put ! after something, like words.uniq!
'See answer above with respect to method definition'
# put ? before something
'Do not worry about this per TA'
# put ? after something
'See answer above with respect to method definition'
# put !! before something, like !!user_name
'Seems redundant to me...you are saying that the object is not falsey'