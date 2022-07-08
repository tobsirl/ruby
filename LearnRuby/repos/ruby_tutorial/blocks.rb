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

sandwich do
  puts "mutton, lettuce, and tomato"
end

def tag(tagname, text)
  html = "<#{tagname}>#{text}</#{tagname}>"
  yield html
end

# Wrap some text in a paragraph tag.
tag("p", "Lorem ipsum dolor sit amet") do |markup|
  puts markup
end