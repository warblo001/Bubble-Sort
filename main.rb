def bubble_sort(arr)
  (1..(arr.length - 1)).each do
    (1..(arr.length - 1)).each do |y|
      arr[y - 1], arr[y] = arr[y], arr[y - 1] if arr[y - 1] > arr[y]
    end
  end
  arr
end

def bubble_sort_by(arr)
  (1..(arr.length - 1)).each do |y|
    arr[y - 1], arr[y] = arr[y], arr[y - 1] if (yield arr[y - 1], arr[y]).positive?
  end
  arr
end

p bubble_sort([4, 3, 78, 2, 0, 2])
x = bubble_sort_by %w[hi hello hey] do |left, right|
  left.length - right.length
end
p x
