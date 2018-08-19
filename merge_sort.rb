def merge_sort(arr)
	if arr.size < 2
		return arr
	else
		left = merge_sort(arr.slice(0, arr.size / 2))
		right = merge_sort(arr.slice(arr.size / 2, arr.size - 1))

		#merge1(left, right, arr)
		merge2(left, right)
	end
end

def merge1(left, right, result) #traditional way
	l = 0
	r = 0
	x = 0
	while l < left.size && r < right. size
		if left[l] <= right[r]
			result[x] = left[l]
			l += 1
			x += 1
		else
			result[x] = right[r]
			r += 1
			x += 1
		end
	end
	while l < left.size
		result[x] = left[l]
			l += 1
			x += 1
	end
	while r < right.size
		result[x] = right[r]
			r += 1
			x += 1
	end
	result
end

def merge2(left, right, result = []) #ruby like way
	until left.empty? || right.empty?
		(left[0] < right[0]) ? result << left.shift : result << right.shift
	end	
	result += right if left.empty?
	result += left if right.empty? 
	result
end

#p merge_sort([5,3,4,2,1,8,7,6])
#x = (1..100).to_a.reverse
#y = 20.times.map {rand(100) + 1}
#p merge_sort(x)
#p merge_sort(y)