def my_uniq(array)
  result = []
  # p array.each
  array.each do |x|
    result << x if !result.include?(x)
  end

  return result
end

class Array
  def two_sum
    result = []
    result = self.each_with_index.map {|x, y| x = [x, y]}
    result = result.combination(2).to_a
    result = result.select {|(x, y)| x.first + y.first == 0}
    result.map! {|(x, y)| [x.last, y.last]}
  end
end

def my_transpose(arr)
  hash = Hash.new(Array.new)
  arr.each_with_index do |x, y|
    arr.each_with_index do |a, b|
      hash[y] += [arr[b][y]]
    end
  end
  hash.values
end

def stock_picker(arr)
  arr = arr.each_with_index.map {|x, y| x = [x, y]}
  arr = arr.permutation(2).to_a # possible days
  arr = arr.select {|(x, y)| (x.last < y.last) && (x.first < y.first)}
  col = []
  arr.each {|(x, y)| col << (x.first - y.first)}
  p_pos = col.index(col.min)
  return [ arr[p_pos].first.last, arr[p_pos].last.last ]
end

stock_picker([5, 1, 10, 3])
