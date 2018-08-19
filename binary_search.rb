require_relative 'merge_sort'

def binary_search(array, target)
	start = 0
	stop = array.size - 1
	middle = array.size / 2
	return target if array[middle] == target#base case
	return nil if array.size == 0 #if array is empty or doesn't contain target
	#prepare array for recursion by sliceing depending on middle
	(array[middle] < target) ? start = middle + 1 : stop = middle
	binary_search(array[start, stop], target)#recursion call
end

numbers = [11, 23, 8, 14, 30, 9, 6, 17, 22, 28, 25, 15, 7, 10, 19]
numbers = merge_sort(numbers)
target = 19
p binary_search(numbers, target)