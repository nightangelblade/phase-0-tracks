# Release 0

int_array = [1, 27, 92, 34, 76]

def check_array(array, object)
array.each do |x| 
	x == object
break true if x == object
end
end

def search_array(array, object)
count = 0

	if check_array(array, object) == true
		until array[count] == object
			count += 1
		end
			p count
		
	elsif check_array(array, object) == array
			p nil
	else
	end
end

search_array(int_array, 76)

# Release 1

def f_method(input)
fibonacci = []
count = 0

until count == input

	 
	if count == 0
		fibonacci << 0
		count += 1
	elsif count == 1
		fibonacci << 1
		count += 1
	else
		fibonacci << fibonacci[count-1] + fibonacci[count-2]
		count += 1
	end
	
	end
fibonacci
end

f_method(100).include?(218922995834555169026)


# Release 2

=begin
- Define the method with one argument, the array
- Define a false statement that will become true when the array has been sorted
- Set a variable equal to the length of the array
- Loop through array so many times
	- if the value of the array at index is greater than the value of the array at next index position, swap the two
	- if the if statment is true, the false statment becomes true
- End loop if the swap doesn't happen
- Print the array
=end

	# Defining the method
def bubble_sort(array)
	# Taking in the length of the loop
  n = array.length

  loop do
    swapped = false
    # Do this loop so many times
    (n-1).times do |i|
    	# Statement is the values are not in order
      if array[i] > array[i+1]
      	# Swap the values
        array[i], array[i+1] = array[i+1], array[i]
        swapped = true
      end
    end
    # Exit loop if swap doesn't occur
    break if not swapped
  end

  array
end

test = [1, 2, 3, 10, 4, 6, 7, 5, 9, 8]

bubble_sort(test)