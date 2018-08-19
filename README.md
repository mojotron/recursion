# Recursion

Goal of this project is to learn about recursion, and ways how to implement this concept instead
of iterators. Learning process is by solving various programing problems with recursion.
Recursion in computer science is a method of solving a problem where the solution depends 
on solutions to smaller instances of the same problem (as opposed to iteration). The approach can be applied to many types of problems, and recursion is one of the central ideas of computer science.
Learn more on [Wikipedia](https://en.wikipedia.org/wiki/Recursion_(computer_science)).

## Fibonacci sequence

In mathematics, the Fibonacci numbers are the numbers in the following integer sequence, called the Fibonacci sequence, and characterized by the fact that every number after the first two is the sum of the two preceding ones:
0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, ....
By definition, the first two numbers in the Fibonacci sequence are either 1 and 1, or 0 and 1, depending on the chosen starting point of the sequence, and each subsequent number is the sum of the previous two.
Learn more on [Wikipedia](https://en.wikipedia.org/wiki/Fibonacci_number).

Solution to this problem is made:
1. with use of iterator - fibonacci_sequence method
2. with use of recursion - fibonacci_sequence_recursive method

## Merge Sort

In computer science, merge sort (also commonly spelled mergesort) is an efficient, general-purpose, comparison-based sorting algorithm. Most implementations produce a stable sort, which means that the implementation preserves the input order of equal elements in the sorted output. Merge sort is a divide and conquer algorithm. Learn more on [Wikipedia](https://en.wikipedia.org/wiki/Merge_sort).

Solution to this problem is made:
1. recursively with helper method - merge1, more traditional syntax
2. recursively with helper method - merge1, more ruby way syntax

## Binary Search

Binary search works on sorted arrays. Binary search begins by comparing the middle element of the array with the target value. If the target value matches the middle element, its position in the array is returned. If the target value is less than the middle element, the search continues in the lower half of the array. If the target value is greater than the middle element, the search continues in the upper half of the array. By doing this, the algorithm eliminates the half in which the target value cannot lie in each iteration. Learn more on [Wikipedia](https://en.wikipedia.org/wiki/Binary_search_algorithm).

Solution to this problem is made:
1. recursively with - binary_search method, and with help of mearg_sort (previously defined) method for sorting array

## Additional recursive problems

This part contains spoilers for [Project Euler](https://projecteuler.net/) solutions so be careful!
Project Euler is a website dedicated to a series of computational problems intended to be solved with computer programs.
Problems solved:
1. Multiples of 3 and 5
2. Even Fibonacci numbers
3. Largest prime factor

This project is part of [The Odin Project curriculum](https://www.theodinproject.com/). 
Awesome on-line web development learning place!