# Project Euler Problem 2
# Each new term in the Fibonacci sequence is generated 
# by adding the previous two terms. By starting with 1 and 2,
# the first 10 terms will be: 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
# By considering the terms in the Fibonacci sequence whose values
# do not exceed four million, find the sum of the even-valued terms.

def even_fib(n, a = 1, b = 2, result = 0)
	return result if a > n && b > n
	result += a if a % 2 == 0
	result += b if b % 2 == 0
	
	even_fib(n, a += b, b += a, result)
end

puts even_fib(3_999_999)