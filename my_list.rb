require_relative './my_enumerable'

class MyList
  include MyEnumerable
  attr_reader :list

  def initialize(*list)
    @list = list
  end

  def each(&block)
    @list.each(&block)
  end
end

lists = MyList.new(1, 2, 3, 4)

# puts lists.list

# Test all
puts(lists.all? { |e| e < 5 })
# true
puts(lists.all? { |e| e > 5 })
# false

# Test any?
puts(lists.any? { |e| e == 2 })
# true
puts(lists.any? { |e| e == 5 })
# false

# Test filter
print(lists.filter(&:even?))
# [2, 4]
