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

=begin
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
=end

# Bubble Sort Algorithm

# 1. Take array
# 2. Compare the values of 'index' and 'index + 1'
	# If index: 1 is less than index: 0, switch the order of the elements
# 3. Increment the value of index +1. Repeat Step 2 until the end of the array.
# 4. Iterate through array again until no more swaps need to be made.
# 5. Return sorted array

def bubble_sort(array)
	index = 0

	array.map! do |num|
		if num > array[index+1] 
			array[index], array[index+1] = array[index+1], array[index]
		end
	end
	index += 1
end

array = [5,3,2,4,1]

bubble_sort(array)


=begin
	array.each do |num|
		if array[index+1] == nil
			break
		end

		if num < array[index+1]
			sorted_array << num
			sorted_array << array[index+1]
		else
			sorted_array << array[index+1]
			sorted_array << num
		end
	index += 1
	end
	p sorted_array
end
=end


=begin
	until index == array.length 
		if array[index] > array[index+1]
			sorted_array << array[index+1]
			sorted_array << array[index]
		else
			sorted_array << array[index]
			sorted_array << array[index+1]
		end
		index += 1
	end
	p sorted_array
end 

array = [5,3,2,4,1]

bubble_sort(array)
=end



























