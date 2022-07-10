# Defines a Phrase class.
class Phrase < String
  # Returns content for palindrome testing.
  def processed_content
    self.downcase
  end

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

# Defines a translated Phrase.
class TranslatedPhrase < Phrase
  attr_accessor :translation

  def initialize(content, translation)
    super(content)
    @translation = translation
  end

  # Processes the translation for palindrome testing.
  def processed_content
    self.translation.downcase
  end
end

frase = TranslatedPhrase.new("recognize", "reconocer")
puts frase.palindrome?

class String

  # Returns content for palindrome testing.
  def processed_content
    self.downcase
  end

  # Returns true for a palindrome, false otherwise.
  def palindrome?
    processed_content == processed_content.reverse
  end
end

napoleonsLament = String.new("Able was I ere I saw Elba")
puts "-------------------------"
puts "napolenosLament -> #{napoleonsLament.palindrome?}"

puts "foobar".palindrome?
puts "Racecar".palindrome?
puts "Able was I ere I saw Elba".palindrome?

module Palindrome

  # Returns true for a palindrome, false otherwise.
  def palindrome?
    processed_content == processed_content.reverse
  end

  private

    # Returns content for palindrome testing.
    def processed_content
      self.to_s.downcase
    end
end

class String
  include Palindrome
end

class Integer
  include Palindrome
end