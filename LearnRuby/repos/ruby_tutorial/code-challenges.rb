def arithmetic(a, b, operator)
  case operator
  when "add"
    a + b 
  when "subtract"
    a - b
  when "multiply"
    a * b
  when "divide"
    a / b
  end
end

# Super Duper Easy
# Make a function that returns the value multiplied by 50 and increased by 6. 
# If the value entered is a string it should return "Error".
def problem x
  if x.is_a? String
    "Error"
  else
    (x * 50) + 6
  end
end

def problem x
  x*50+6 rescue 'Error'
end

def problem x
  x.is_a?(String) ? "Error" : x * 50 + 6
end

# Small enough? - Beginner
# You will be given an array and a limit value. 
# You must check that all values in the array are below or equal to the limit value. 
# If they are, return true. Else, return false.
# You can assume all values in the array are numbers.
def small_enough(a, limit)
  a.all? { |x| x <= limit }
end

# Beginner - Reduce but Grow
# Given a non-empty array of integers, return the result of multiplying the values together in order.
def grow(x)
  x.reduce { |accum, curr| accum * curr }
end

def grow(x)
  x.inject(:*)
end

# Task
# Given a list of digits, return the smallest number that could be formed from these digits, using the digits only once (ignore duplicates).
def min_value(digits)
  digits.uniq.sort.join('').to_i
end

def min_value(digits)
  digits.uniq.sort.join.to_i
end

# Task
# Sort array by string length 7kyu
# Write a function that takes an array of strings as an argument and returns 
# a sorted array containing the same strings, ordered from shortest to longest.
def sort_by_length(arr)
  arr.sort_by(&:length)
end

# Grasshopper - Grade book 8kyu
# Complete the function so that it finds the average of the three scores passed to it and returns the letter value associated with that grade.
def get_grade(s1, s2, s3)
   score = (s1 + s2 + s3) / 3
  
   case score
   when 90..100
    "A"
   when 80..89
    "B"
   when 70..79
    "C"
   when 60..69
    "D"
   when 0..59
    "F"
   end
end

def get_grade(s1, s2, s3)
  case (s1 + s2 + s3).fdiv 3
  when 90..100 then 'A'
  when 80...90 then 'B'
  when 70...80 then 'C'
  when 60...70 then 'D'
  else 'F'
  end
end

# Are You Playing Banjo? 8kyu
# Create a function which answers the question "Are you playing banjo?".
# If your name starts with the letter "R" or lower case "r", you are playing banjo!
def are_you_playing_banjo(name)
  if name[0].downcase == "r"
    name + " plays banjo"
  else
    name + " does not play banjo"
  end  
end

def are_you_playing_banjo(name)
  name[0].downcase == "r" ? "#{name} plays banjo" : "#{name} does not play banjo"
end

def are_you_playing_banjo(name)
  name.start_with?("r","R") ? "#{name} plays banjo" : "#{name} does not play banjo"
 end

# Filling an array (part 1) 8kyu
# We want an array, but not just any old array, an array with contents!
# Write a function that produces an array with the numbers 0 to N-1 in it.
def arr(n = 0)
  num = n - 1
  (0..num).to_a  
end

def arr(n = 0)
  (0...n).to_a
end

def arr(n = 0)
  n.times.to_a
end

# Total amount of points 8kyu
# Our football team finished the championship. The result of each match look like "x:y". Results of all matches are recorded in the collection.
# For example: ["3:1", "2:2", "0:1", ...]

# Write a function that takes such collection and counts the points of our team in the championship. Rules for counting points for each match:

# if x > y: 3 points
# if x < y: 0 point
# if x = y: 1 point
def points(games)
  points = 0
  games.each do |game|
    if game[0] > game[2]
      points += 3
    elsif game[0] == game[2]
      points += 1
    end
  end
  points
end

def points(games)
  games.map { |x| x[0] > x[2] ? 3 : x[0] == x[2] ? 1 : 0 }.sum
end
end
