# Project Euler Problem 1
# If we list all the natural numbers below 10 that are multiples of 3 or 5,
# we get 3, 5, 6 and 9. The sum of these multiples is 23.
# Find the sum of all the multiples of 3 or 5 below 1000.

def multiples_of_3_and_5(number, result = 0)
	return result if number == 0
	result += number if number % 3 == 0 || number % 5 == 0
	multiples_of_3_and_5(number - 1, result)
end

puts multiples_of_3_and_5(999)