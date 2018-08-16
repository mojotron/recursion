# Project Euler Problem 3
# The prime factors of 13195 are 5, 7, 13 and 29.
# What is the largest prime factor of the number 600851475143 ?

def largest_prime_factor(prime, x = 2)
	return prime if prime <= x
	prime /= x if prime % x == 0
	largest_prime_factor(prime, x + 1)
end

p largest_prime_factor(600851475143)

