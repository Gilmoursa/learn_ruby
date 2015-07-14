def add(x,y)
	x+y
end

def subtract(x,y)
	x-y
end

def sum(array)
	if (array == [])
		0
	else
		array.inject(:+)
	end
end

def multiply(array)
	if (array == 0)
		0
	else
		array.inject(:*)
	end
end

def power(x,y)
	x**y
end

def factorial(n)
	if (n == 0)
		return 1
	else
		n*factorial(n-1)
	end
end