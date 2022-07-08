states = ["Kansas", "Nebraska", "North Dakota", "South Dakota"]

# urls: Imperative version
def imperative_urls(states)
  urls = []
  states.each do |state|
    urls << state.downcase.split.join("-")
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