def permute(array, start = 0, result = [])
  if start >= array.length - 1
    result << array.dup
  else
    (start...array.length).each do |i|
      array[start], array[i] = array[i], array[start]
      permute(array, start +  1, result)
      array[start], array[i] = array[i], array[start]
    end
  end
  result
end

arr = [1,2,3]
puts permute(arr).inspect