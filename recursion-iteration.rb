# Place your solutions here
def fibonacci_iterative(n)
	start_time = Time.now
	a = 0
	b = 1
	n.times do
		temp = a #temp number for a
		a = b #assign a to the b (which is the next number)

		#add the previous two numbers in sequence
		b = temp + b # b will now be the new next number
	end
	end_time = Time.now
	running_time = end_time - start_time
	
	return "Iterative takes #{running_time} seconds"
end

def fibonacci_recursive(n)
	start_time = Time.now
	if n == 0 || n == 1
		value = n # both values will return n
	else
		a = fibonacci_recursive(n-1)
		b = fibonacci_recursive(n-2) 
		value = a + b
	end

	end_time = Time.now
	running_time = end_time - start_time
	return "Recursive takes #{running_time} seconds"
	
end

p fibonacci_iterative(20)
p fibonacci_recursive(20)

