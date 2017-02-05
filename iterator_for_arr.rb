# New method for arrays
class Array
  def map_with_index
    map do |val|
      yield(val, index(val))
    end
  end
end

[1, 2, 3, 4].map_with_index { |v, i| puts "a[#{i}]=#{v}" }
p [1, 2, 3, 4].map_with_index { |v, i| i.odd? ? v * 2 : v }
