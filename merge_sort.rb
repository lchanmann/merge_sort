def merge_sort list
  return list if list.size <= 1

  mid = list.length / 2
  left = merge_sort list.take mid
  right = merge_sort list.drop mid
  merge left, right
end

def merge left, right
  result = []
  while left.length + right.length > 0 do
    if left.length > 0 && right.length > 0
      if left.first <= right.first
        result << left.shift
      else
        result << right.shift
      end
    elsif left.length > 0
      result << left.shift
    elsif right.length > 0
      result << right.shift
    end
  end
  result
end
