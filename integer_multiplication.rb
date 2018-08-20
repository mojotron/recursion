def standard_multiplication(x, y)
	return x * y if x < 10 && y < 10 # base case, single digit
	#largest size of digits,they are same, but left for human math logic
	n = [x.to_s.length, y.to_s.length].max
	# divide and conqure, half of numbers until single digit is left(1234 => 12 and 34)
	x_left = x / 10 ** (n / 2)
	x_right = x % 10 ** (n / 2)
	y_left = y / 10 ** (n / 2)
	y_right = y % 10 ** (n / 2) 
	# formula for multiplication
	# (10**n *(xl * yl)) + (10 ** (n/2) * ((xl * yr) + (xr * yl))) + (xr * yr)
	# needs 4 recursive calls
	x1 = standard_multiplication(x_left, y_left) #for (xl * yl)^^
	x2 = standard_multiplication(x_left, y_right) #for (xl * yr)^^
	x3 = standard_multiplication(x_right, y_left) #for (xr * yl)^^
	x4 = standard_multiplication(x_right, y_right) #for (xr * yr)^^
	# formated formula for recursive calls
	(10 ** (n) * x1) + (10 ** (n / 2) * (x2 + x3)) + x4
end

def karatsuba_multiplication(x, y)
	return x * y if x < 10 && y < 10 # base case
	# divide larger digit by 2 for easier implementation **
	n = ([x.to_s.length, y.to_s.length].max) / 2
	# divide and conquer using divmod method, returns array, of quotient and reaminder
	# same as x_left = x / 10 ** (n / 2) and x_right = x % 10 ** (n / 2)
	x_left, x_right = x.divmod(10 ** (n)) # **
	y_left, y_right = y.divmod(10 ** (n)) # **
	# formula for multiplication
	# (10**n *(xl * yl)) + (10 ** (n/2) * ((xl * yr) + (xr * yl))) + (xr * yr)
	# needs 3 recursive calls because of Gauss observation, x3 goes in ((xl * yr) + (xr * yl)) part
	x1 = karatsuba_multiplication(x_left, y_left)
	x2 = karatsuba_multiplication(x_right, y_right) 
	x3 = karatsuba_multiplication(x_left + x_right, y_left + y_right) - x1 - x2
	# formated formula for recursive calls wit karatsuba way
	(10 ** (n * 2) * x1)  + (10 ** (n) * x3) + x2 # ** n must be multiplyed by 2
end


p standard_multiplication(5678, 1234)
puts 5678 * 1234
p standard_multiplication(567, 1234)
puts 567 * 1234
p standard_multiplication(56765899, 12)
puts 56765899 * 12
p standard_multiplication(5, 123463)
puts 5 * 123463
p standard_multiplication(32, 0)
puts 30 * 0
puts
p karatsuba_multiplication(5678, 1234)
puts 5678 * 1234
p karatsuba_multiplication(567, 1234)
puts 567 * 1234
p karatsuba_multiplication(56765899, 12)
puts 56765899 * 12
p karatsuba_multiplication(5, 123463)
puts 5 * 123463
p karatsuba_multiplication(32, 0)
puts 30 * 0
