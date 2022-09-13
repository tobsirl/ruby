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