def merge_sort list
  return list if list.size <= 1

  mid = list.length / 2
  left = merge_sort list.take mid
  right = merge_sort list.drop mid
  merge left, right
end

def merge left, right
  result = []
  (left.length + right.length).times do
    a, b = left.first, right.first
    result << (a <= b ? left.shift : right.shift) if a && b
    result << left.shift unless b
    result << right.shift unless a
  end
  result
end
