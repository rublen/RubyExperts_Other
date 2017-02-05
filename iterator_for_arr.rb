# New method for arrays
class Array
  def map_with_index(&bl)
    self.map do |val|
      yield(val, self.index(val))
    end
  end
end

[1, 2, 3, 4].map_with_index { |v, i| p "a[#{i}]=#{v}"}
p [1, 2, 3, 4].map_with_index { |v, i| if i.odd? then v * 2 else v end }
