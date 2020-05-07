## Scope
What you have access to at any given point in code

* Common error generator
  `undefined local variable or method`
* Different levels of scope

### Global
Exists in a ruby file (that file alone)
Order often matters - if we want to use a variable, it needs to be defined above where we use it.

### Method
Exists between the `def` and `end` of a method.  Nothing can go in, nothing can come out. Only have access to local variables defined within the method.

Arguments become local variables inside the method scope.

### Block
Exists between the `do` and `end`. Have access to any variables defined inside the block; as well as variables defined outside the block (but within the scope that the block is contained in)

### Class
This expand our method scope to include:
* instance variables - when a method is defined within a class, that method has its regular scope AND can access instance variables.
* methods defined within that class
