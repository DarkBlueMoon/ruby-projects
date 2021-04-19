# Uses the bubble sorting algorithm to sort,
# in ascending order, an array of numbers.
# e.g.
# > bubble_sort([4,3,78,2,0,2])
# => [0,2,2,3,4,78]
def bubble_sort(arr)
  len = arr.length
  loop do
    swapped = false
    
    for i in 1...len do
      if arr[i-1] > arr[i]
        arr[i-1], arr[i] = arr[i], arr[i-1]
        swapped = true
      end
    end

    break if swapped == false
  end

  arr
end

p bubble_sort([4,3,78,2,0,2])
p bubble_sort([4,23,6,21,12,64,529,294,23,524,234,6523])