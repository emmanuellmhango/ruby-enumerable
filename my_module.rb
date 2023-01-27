module MyEnumerable
  def all?
    arr = @list.length
    @list.each do |val| 
      arr -= 1 if yield val 
    end
    arr === 0
  end

  def any?
    list_len, arr = @list.length, @list.length
    @list.each do |val| 
      arr -= 1 if yield val
    end
    arr < list_len
  end

  def filter
    arr = []
    @list.each do |val| 
      arr.push(val) if yield val 
    end
    arr
  end
end