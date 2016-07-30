def add(num_one, num_two)
	num_one + num_two
end

def subtract(num_one, num_two)
	num_one - num_two
end

def sum(array)
	array.inject(0) {|sum, element| sum + element}
end

def multiply(array)
	array.inject(:*)
end

def power(num_one, num_two)
	num_one ** num_two
end

def factorial(num)
	(1..num).inject(1, :*)
end
