# When done, submit this entire file to the autograder.

# Part 1

def sum arr
    if not arr.empty?
        sum = 0
        arr.each{|a| sum+=a}
        return sum
    else return 0
    end
end

def max_2_sum arr
  return arr.sort.last(2).sum
end

def sum_to_n? arr, n
  if arr.combination(2).any? { |a| a.sum == n }
   return true
  else
   return false
  end
end

# Part 2

def hello(name)
  return 'Hello, ' + name
end

def starts_with_consonant? s
  if /[aeiouAEIOU*]/.match(s[0]) || s.empty? || /[^a-zA-Z0-9.*]/.match(s)
    return false
  else
    return true
  end
end

def binary_multiple_of_4? s
  if  /^[10]*00$/.match(s) || s == "0"
    return true
  else
    return false
  end
end

# Part 3

class BookInStock
  attr_accessor :isbn, :price
  def initialize(isbn, price)
    raise ArgumentError.new("Not a valid ISBN") if isbn == ""
    @isbn = isbn
    raise ArgumentError.new("nope") if price <= 0
    @price = price
  end
  def price
    @price
  end
  def isbn
    @isbn
  end 
  def price_as_string
    new_price = @price.to_f
    new_price = '%.2f' % @price
    new_price.to_s.insert(0,'$')
  end
end
