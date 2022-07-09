# Defines a Phrase class.
class Phrase < String
  # Returns true for a palindrome, false otherwise.
  def palindrome?
    processed_content = downcase
    processed_content == processed_content.reverse
  end

  # Makes the phrase LOUDER.
  def louder
    processed_content = self.upcase
  end
end

phrase = Phrase.new("Madam, I'm Adam.")
puts phrase 

phrase = "Able was I, ere I saw Elba."
puts phrase

phrase = Phrase.new("Racecar")
puts phrase.palindrome?

phrase_rotator = "rotator"
puts phrase.palindrome?

phrase_whisper = "whisper so the bad man doesn't hear us"
puts phrase.louder