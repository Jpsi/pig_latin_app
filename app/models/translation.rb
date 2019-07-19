class Translation < ApplicationRecord
  def self.to_pig_latin original
    original.split(" ").map { |word| to_pig_latin_single word }.join(" ")
  end
  def self.to_pig_latin_single original
    trailing_symbols = original[/[^[a-z][A-Z]]*\z/]
    original = original[0, original.index(trailing_symbols)] unless trailing_symbols.empty?
    original_was_capitalized = (original == original.capitalize)
    original = original.downcase
    first_vowel = original[/[aeiouy]/]
    if first_vowel
      first_vowel_index = original.index(first_vowel)
      translation = "#{original[first_vowel_index..]}#{original[0,first_vowel_index]}#{first_vowel_index==0 ? 'y' : ''}ay"
    else
      translation = original
    end
    translation = "#{translation}#{trailing_symbols}"
    translation.capitalize! if original_was_capitalized
    translation
  end
end
