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

