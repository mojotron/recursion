def fibonacci_sequence(number, sequence = [0, 1])
	(number - 2).times { sequence << (sequence[-2] + sequence[-1]) }
	sequence
end

p fibonacci_sequence(5)
p fibonacci_sequence(15)

def fibonacci_sequence_recursive(number, sequence = [0, 1])
	return sequence[0..-2] if number == 1
	sequence << sequence[-2] + sequence[-1]
	fibonacci_sequence_recursive(number - 1, sequence)
end

p fibonacci_sequence_recursive(5)
p fibonacci_sequence_recursive(15)
