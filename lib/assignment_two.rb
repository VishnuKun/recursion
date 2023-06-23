# frozen_string_literal: true

puts '-----------Assignment Two Initialized-----------'
puts '-----------Merge Sort-----------'

def merge_sort(arr)
  # recursion base
  return unless arr.length > 1

  # divide
  left, right = arr.each_slice((arr.length / 2.0).round).to_a

  # conquer
  # recursion
  merge_sort(left)
  merge_sort(right)

  # merge
  # pointers
  i = 0
  j = 0
  k = 0
  # compare
  while i < left.length && j < right.length

    if left[i] < right[j]
      arr[k] = left[i]
      i += 1
    else
      arr[k] = right[j]
      j += 1
    end
    k += 1
  end
  # in case of nil objects
  while i < left.length
    arr[k] = left[i]
    i += 1
    k += 1
  end

  while j < right.length
    arr[k] = right[j]
    j += 1
    k += 1
  end

  arr
end

arr_test = [13, 12_341, 3231, 63, 32, 1, 5, 0, 131_232]
ouput = merge_sort(arr_test)
p ouput
