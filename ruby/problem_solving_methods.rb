#release 0
def search_array(array, n)
    if array.include?(n)
       p array.rindex(n)
    end
end

arr = [2, 4, 6, 8]

search_array(arr, 3)

#release 1

def fibonacci(n)
  fib = [0, 1]
  repeat = n-2
  repeat.times do
    fib << fib [-1] + fib [-2]
  end
  p fib

end

fibonacci(9)

#take in array. compare first index value (beginning with index 0)  with next index value. If first index value is greater than next index value, swap the values.  loop through the array until you've evaluated all the indexes, and the array is eventually sorted from lowest value to highest value.

def bubble_time(array)
  n = array.length

  loop do
  swapped = false

  (n-1).times do |i|
    if array [i] > array [i + 1]
      array[i], array[i+1]=array[i+1], array[i]
    swapped = true
    p array
  end
end

break if not swapped
end

array
end



a = [1, 2, 10, 2, 1, 9, 9, 8, 7]
bubble_time(a)
