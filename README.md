# BubbleSort
Applied some knowledge learned from the ruby course 
and made a Bubble Sort which is ready to use for both 
numbers and strings

#Pseudocode (optimized)
procedure bubbleSort(Array)
    n=Array.length-1
    repeat
        swapped = false 
        for i = 1 to n-1 inclusive do
            if A[i] > A[i+1] then
                swap(A[i], A[i+1])
                swapped = true
            end if
        end for
        n = n - 1
    until not swapped
end procedure
**collected from [Wikipedia](https://en.wikipedia.org/wiki/Bubble_sort)**
