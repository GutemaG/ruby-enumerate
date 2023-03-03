class MyList
  include MyEnumerable

  def initialize(lst)
    @list = lst
  end

  def each(&block)
    @list.each(&block)
  end
end