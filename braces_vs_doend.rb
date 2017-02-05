arr = [11,88,33,44,66,99,77]
p arr.find_all { |n| n > 66 }

puts '*****'
# "If no block is given, an Enumerator is returned instead." - from ruby-doc.org
p arr.find_all do |n|
  n > 66
end

puts '*****'
p (arr.find_all do |n| 
  n > 66
end)

puts "---------------------------------"

arr_sym = %i(a b c p k )
p arr_sym.find_all { |s| ('a'..'f') === s.to_s }

puts '*****'
# "If no block is given, an Enumerator is returned instead."
p arr_sym.find_all do |s| 
  ('a'..'f') === s.to_s
end

puts "---------------------------------"

p arr.any? { |n| n > 66 }

puts '*****'
# "If the block is not given, Ruby adds an implicit block of { |obj| obj } 
# that will cause any? to return true if at least one of the collection members 
# is not false or nil."
p arr.any? do |n|
  n > 66
end

puts "---------------------------------"

p arr.all? { |n| n > 66 }

puts '*****'
# "If the block is not given, Ruby adds an implicit block of { |obj| obj } which will
# cause all? to return true when none of the collection members are false or nil."
p arr.all? do |n|
  n > 66
end

# [].any?  #=> false 
# [1, 2, 3].any?  #=> true
# [].all?  [1, 2, 3].all?  #=> true
