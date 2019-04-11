def bubble_sort(array)
  n=array.length-1
  loop do
    swapped = false
    for i in 0..n-1
      if array[i] > array[i+1]
        array[i], array[i+1] = array[i+1], array[i]
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
    for i in 0..n-1
      if yield(array[i],array[i+1]) > 0
        array[i], array[i+1] = array[i+1], array[i]
        swapped = true
      end
    end
    n -= 1
    break unless swapped
  end
  array
end
print bubble_sort([2,1,5,4])
print bubble_sort_by(["hi","hello","hey"]) { |left,right|
  left.length <=> right.length
}