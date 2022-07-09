# Defines a Phrase class.
class Phrase
  attr_accessor :content

  def initialize(content)
    @content = content
  end

  # Returns true for a palindrome, false otherwise.
  def palindrome?
    processed_content = self.content.downcase
    processed_content == processed_content.reverse
  end

  # Makes the phrase LOUDER.
  def louder
    processed_content = self.content.upcase
  end
end

phrase = Phrase.new("Madam, I'm Adam.")
puts phrase.content 

phrase.content = "Able was I, ere I saw Elba."
puts phrase.content

phrase = Phrase.new("Racecar")
puts phrase.palindrome?

phrase.content = "rotator"
puts phrase.palindrome?

phrase.content = "whisper so the bad man doesn't hear us"
puts phrase.louder