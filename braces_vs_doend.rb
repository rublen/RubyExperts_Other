arr = [11,88,33,44,66,99,77]
p arr.find_all { |n| n > 66 }

puts '*****'

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

p arr_sym.find_all do |s| 
  ('a'..'f') === s.to_s
end

puts "---------------------------------"

p arr.any? { |n| n > 66 }

puts '*****'

p arr.any? do |n|
  n > 66
end

puts "---------------------------------"

p arr.all? { |n| n > 66 }

puts '*****'

p arr.all? do |n|
  n > 66
end

# [].any?  #=> false 
# [1, 2, 3].any?  #=> true
# [].all?  [1, 2, 3].all?  #=> true
