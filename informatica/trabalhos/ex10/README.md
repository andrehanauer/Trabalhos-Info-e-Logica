# Project Euler Template

## Introduction

To use this template you need to create a source code and after adding your solution compile it with the commands described bellow.

## The source code

### Creating the source code

To create the source code issue the command:

`$ make peX.c`

where `X` is the number of the exercise you want to address. For example, lets assume from now on that we want to program a solution for exercise number 8. Issue:

`$ make pe8.c`

And this will create the source code for you to implement the solution.

### What to do inside the source code

* Add your name in the Author copyright notice
* Go to function PEN() and start to code your solution there
* Do not change the function main()
* Add the problem description in the comments before PEN() function
* You can add more functions at the and (before the footnote)
* The answer is to be put in a unsigned int variable "r" that is already declared.

## The library

### What is inside projecteuler.h and projecteuler.c

This library (.h) and the definition file (.c) contains some functions that will help you check during loops if the file is still running.

The functionalities are:

* GRABsignals() and LEGOsignals() should changed in any way. They are there to grab and let go Operating System's signals such as INT, QUIT and ALARM. They are used only in function main(). Do not use it anywhere else. Do not touch function main().
* You can use the function ctrlc_printf("..."); to print inside a loop, only if the user press CONTROL+C
    - Example:

    ctrlc_printf("Current result is %lu\n", r);

    This will print a partial result only when the user press CONTROL+C

* You can use the function minutes() to know how many minutes have passed.
    - Example:

    if( 2==minutes() ) break;

    This will break a loop if 2 minutes have passed

    The Project Euler has a rule that all problems can be solved by a good solution that finds the answer in LESS THAN ONE MINUTE (the one minute rule). So, if your program takes more than one minute to find a solution, you may need to re-think your algorithm.

## Author

* Ruben Carlo Benante
* Contact: rcb@upe.br
* Date: 2019-03-25
* Copyright License GNU/GPL 2.0

