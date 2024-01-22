def echo(str)
    return str
  end
  
  def shout(str)
    return str.upcase
  end
  
  def repeat(str, times = 2)
    return ([str] * times).join(" ")
  end
  
  def start_of_word(str, n)
    return str[0, n]
  end
  
  def first_word(str)
    return str.split.first
  end
  

  # 04_simon_says.rb

# 04_simon_says.rb

def titleize(str)
    little_words = ["and", "the", "over"]
    words = str.split.map.with_index do |word, index|
      if index.zero?
        word.capitalize
      elsif !little_words.include?(word.downcase)
        word.capitalize
      else
        word.downcase
      end
    end
    return words.join(" ")
  end
  
  
  
  
  
  
  
