
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

fib(6)
fib(100)



# Bubble Sort Algorithm

# 1. Take array
# 2. Compare the values of 'index' and 'index + 1'
	# If index: 1 is less than index: 0, switch the order of the elements
# 3. Increment the value of index +1. Repeat Step 2 until the end of the array.
# 4. Iterate through array again until no more swaps need to be made.
# 5. Return sorted array


def bubble_sort(array)
	length = array.length 
	counter = 0

	until counter == length
    	(length - 1).times do |index|
      		if array[index] > array[index + 1]
        		array[index], array[index + 1] = array[index + 1], array[index]
      		end
    	end
    	counter += 1
  	end
  	p array
end 

array = [9,8,7,6,5,4,3,2,1]

bubble_sort(array)




























