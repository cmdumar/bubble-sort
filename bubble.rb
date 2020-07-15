def bubble_sort(arr)
  if arr.length == 1
    puts 'Array has been sorted!'
  else
    x = 0
    until x == (arr.length - 1) do
      for i in 1..arr.length-1
        if arr[i-1] > arr[i]
          arr[i-1], arr[i] = arr[i], arr[i-1]
        end
      end
      x += 1
    end
  end
  return arr
end

bubble_sort([12, 1, 4, 5, 6, 0, 11, 9])