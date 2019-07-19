require 'test_helper'

class TranslationTest < ActiveSupport::TestCase
  test "to_pig_latin_with_one_consonant" do
    assert_equal 'ellohay', Translation.to_pig_latin("hello")
  end
  test "to_pig_latin_with_zero_consonants" do
    assert_equal 'yearway', Translation.to_pig_latin("year")
  end
  test "to_pig_latin_with_multiple_words" do
    assert_equal 'orningtonmay escentcray', Translation.to_pig_latin("mornington crescent")
  end
  test "to_pig_latin_with_sentence_case" do
    assert_equal 'Ouldway youway indmay?', Translation.to_pig_latin("Would you mind?")
  end
  test "to_pig_latin_with_dash" do
    assert_equal 'oneway - otway', Translation.to_pig_latin("one - two")
  end
end
