def bubble(arr)
  return 'Array sorted!' if arr.length == 1

  count = 0
  until count == (arr.length - 1)
    (1..arr.length - 1).each do |i|
      arr[i - 1], arr[i] = arr[i], arr[i - 1] if yield(arr[i - 1], arr[i]).positive?
    end
    count += 1
  end

  print arr
  arr
end

bubble(%w[Hi Hello Hey]) do |left, right|
  left.length - right.length
end
