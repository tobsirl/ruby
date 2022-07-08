states = ["Kansas", "Nebraska", "North Dakota", "South Dakota"]

# Returns a URL-friendly version of a string.
#   Example: "North Dakota" -> "north-dakota"
def urlify(string)
  string.downcase.split.join('-')
end

# urls: Imperative version
def imperative_urls(states)
  urls = []
  states.each do |state|
    urls << urlify(state)
  end
  urls
end
p imperative_urls(states)

names = ["John", "Paul", "George", "Ringo"]

["ALICE", "BOB", "CHARLIE"].map { |name| name.downcase }
print_name = names.map { |name| name.downcase }
p print_name

print_name_symbol = names.map(&:downcase)
p print_name_symbol

# urls: Functional version
def functional_urls(states)
  states.map { |state| urlify(state) }
end
puts functional_urls(states).inspect

