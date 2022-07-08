# single line
(1..5).each { |i| puts 2**i }

(1..5).each do |i|
  puts 2**i
end

['ant', 'bat', 'cat', 42].each do |element|
  puts element
end

def sandwich
  puts "top bread"
  yield
  puts "bottom bread"
end
