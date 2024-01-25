#Control Structures

'Control structures in R allow you to control the flow of execution of a series of R expressions.
Basically, control structures allow you to put some “logic” into your R code, rather than just always
executing the same R code every time. Control structures allow you to respond to inputs or to
features of the data and execute different R expressions accordingly.
Commonly used control structures are
• if and else: testing a condition and acting on it
• for: execute a loop a fixed number of times
• while: execute a loop while a condition is true
• repeat: execute an infinite loop (must break out of it to stop)
• break: break the execution of a loop
• next: skip an interation of a loop
Most control structures are not used in interactive sessions, but rather when writing functions or
longer expresisons.'

'14.1 if-else

The if-else combination is probably the most commonly used control structure in R (or perhaps
any language). This structure allows you to test a condition and act on it depending on whether it’s
true or false.
'

x <- runif(1, 0, 10)
if(x > 3) {
  y <- 10
} else {
  y <- 0
}

'14.2 for Loops

For loops are pretty much the only looping construct that you will need in R. While you may
occasionally find a need for other types of loops, in my experience doing data analysis, I’ve found
very few situations where a for loop wasn’t sufficient.
In R, for loops take an interator variable and assign it successive values from a sequence or vector.
For loops are most commonly used for iterating over the elements of an object (list, vector, etc.)'

for(i in 1:10){
  print(i)
}

x <- c("a", "b", "c", "d")

for(i in 1:4){
  print(x[i])
}

for(i in seq_along(x)) {
  print(x[i])
}

for(letter in x){
  print(letter)
}

'14.4 while Loops

While loops begin by testing a condition. If it is true, then they execute the loop body. Once the loop
body is executed, the condition is tested again, and so forth, until the condition is false, after which
the loop exits.
'

count<-0
while(count<10){
  print(count)
  count<-count+1
}

'14.5 repeat Loops

repeat initiates an infinite loop right from the start. These are not commonly used in statistical or
data analysis applications but they do have their uses. The only way to exit a repeat loop is to call
break.
One possible paradigm might be in an iterative algorith where you may be searching for a solution
and you don’t want to stop until you’re close enough to the solution. In this kind of situation, you
often don’t know in advance how many iterations it’s going to take to get “close enough” to the
solution.
'
x0 <- 1
tol <- 1e-8
repeat {
  x1 <- computeEstimate()
  if(abs(x1 - x0) < tol) { ## Close enough?
    break
  } else {
    x0 <- x1
  }
}

'next, break
next is used to skip an iteration of a loop.
break is used to exit a loop immediately, regardless of what iteration the loop may be on.
'
