def merge_sort(arr)
	if arr.size < 2
		return
	else
		left = arr.slice(0, arr.size / 2)
		right = arr.slice(arr.size / 2, arr.size - 1)
		merge_sort(left)
		merge_sort(right)

		merger(left, right, arr)
	end
end

def merger(left, right, result)
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

#p merger([1,3,4],[2,5,6],[])



def merge2(left, right, result = [])
	until left.empty? || right.empty?
		(left[0] < right[0]) ? result << left.shift : result << right.shift
	end	
	if left.empty? 
			result += right
	end
	if right.empty? 
		result += left
	end
	result
end


p merge_sort([5,3,4,2,1,8,7,6])
x = (1..100).to_a.reverse
p merge_sort(x)