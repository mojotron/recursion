# Project Euler Problem 2

def is_a_prime?(number)
	if number == 1
		return false
	end
	divider = number - 1
	while divider > 1
		if number % divider == 0
			return false
		end
		divider -= 1
	end
	return true
end