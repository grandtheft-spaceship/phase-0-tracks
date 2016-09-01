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



