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
  return array
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
  return array
end
print "Optins 1.Sort numbers  2. Sort strings "
print "Enter your choice: "
choice = gets.chomp.to_i
if choice == 1 
  print "Enter the number of element: "
  num_element = gets.chomp.to_i
  i = 0
  array = []
  while i < num_element do
    print "Add #{i}th number element: "
    num = gets.chomp.to_i
    array.push(num)
    i += 1
  end
  print bubble_sort(array)
elsif choice == 2 
  print "Enter the number of element: "
  num_element = gets.chomp.to_i
  i = 0
  array = []
  while i < num_element do
    print "Add #{i}th number element: "
    str = gets.chomp.to_s
    array.push(str)
    i += 1
  end
  print bubble_sort_by(array) { |left,right|
    left.length <=> right.length
  }
else
  print "Invalid input"
end