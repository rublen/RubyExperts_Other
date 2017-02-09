# New method for arrays
module Enumerable
  def map_with_index
    if block_given?
      map { |val| yield(val, index(val)) }
    else
      to_enum(:map_with_index)
    end
  end
end

[1, 2, 3, 4].map_with_index { |v, i| puts "a[#{i}]=#{v}" }

p [1, 2, 3, 4].map_with_index { |v, i| i.odd? ? v * 2 : v }

p [1, 0].map_with_index
