=begin
def simple_search(array, integer)
	index = 0

	while index < array.length
		if array[index] == integer
			integer_index = index
			p integer_index
		else
			p nil
		end

		index += 1
	end
end

array = [1, 3, 4, 5]

simple_search(array, 2)
simple_search(array, 4)
=end

def fib(num)
  fib_array = [0, 1]

  if num == 0
    p []
  elsif num == 1
    p [0]
  else 
    until fib_array.length == num
      next_num = fib_array[-1] + fib_array[-2]
      fib_array << next_num 
    end
  p fib_array
  end
end

fib(100) 