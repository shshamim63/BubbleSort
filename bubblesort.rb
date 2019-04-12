def bubble_sort(array)
  n = array.length - 1
  loop do
    swapped = false
    for i in 0..n - 1
      if array[i] > array[i + 1]
        array[i], array[i + 1] = array[i + 1], array[i]
        swapped = true
      end  
    end
    n -= 1
    break unless swapped
  end
  array
end

def bubble_sort_by(array)
  n = array.length - 1
  loop do
    swapped = false
    for i in 0..n - 1
      if block_given?
        if yield(array[i],array[i + 1]) > 0
          array[i], array[i + 1] = array[i + 1], array[i]
          swapped = true
        end
      elsif array[i].length > array[i + 1].length
        array[i], array[i + 1] = array[i + 1], array[i]
        swapped = true
      end
    end
    n -= 1
    break unless swapped
  end
  array
end
array_str = ["hi","hello","hey"]
array_num = [6,8,5,9,7,4,5,1,2,10]


print bubble_sort(array_num)
print bubble_sort_by(array_str) { |left,right|
  left.length <=> right.length
}
print bubble_sort_by(array_str)