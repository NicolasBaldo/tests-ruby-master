# File: 06_pig_latin.rb

def translate(phrase)
    words = phrase.split(" ")
    translated_words = words.map { |word| translate_word(word) }
    translated_phrase = translated_words.join(" ")
    retain_capitalization(phrase, translated_phrase)
  end
  
  def translate_word(word)
    vowels = %w[a e i o u]
  
    if vowels.include?(word[0].downcase)
      # Translate word starting with a vowel
      translated_word = word + "ay"
    else
      # Translate word starting with a consonant
      consonant_count = 0
      consonant_count += 1 while consonant_count < word.length && !vowels.include?(word[consonant_count].downcase)
  
      # Handle special cases like 'sch' and 'qu'
      if word[consonant_count - 1..consonant_count].downcase == 'qu'
        consonant_count += 1
      end
  
      # Construct translated word
      translated_word = word[consonant_count..] + word[0, consonant_count] + "ay"
    end
  
    # Return the translated word
    translated_word
  end
  
  def retain_capitalization(original, translated)
    original.split(" ").map.with_index do |word, index|
      if word.capitalize == word
        translated.split(" ")[index].capitalize
      else
        translated.split(" ")[index]
      end
    end.join(" ")
  end
  