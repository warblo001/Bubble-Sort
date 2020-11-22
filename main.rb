def bubble_sort(arr)
  change = true
  x = arr.length
  while change
    y = 0
    change = false
      for y in 1..(x-1) do
        if arr[y-1] > arr[y]
          arr[y-1], arr[y] = arr[y], arr[y-1]
        change = true
        end
      end
    x -= 1

    end

    print arr
  end


bubble_sort([4,3,78,2,0,2])

