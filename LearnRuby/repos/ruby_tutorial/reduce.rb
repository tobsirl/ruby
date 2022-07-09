numbers = 1..10

# sum: Imperative solution
def imperative_sum(numbers)
  total = 0
  numbers.each do |n|
    total += n
  end
  total
end
puts imperative_sum(numbers)

result = numbers.reduce(0) do |accum, curr|
  accum += curr
end

puts result