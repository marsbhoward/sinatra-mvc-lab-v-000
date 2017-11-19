
class PigLatinizer
  attr_reader :text

  VOWELS = %w{a e i o u}

  def piglatinize(word)
    if VOWELS.include?(word[0].downcase)
      return word + "way"
    end

    split_on = word.chars.index {|letter| VOWELS.include?(letter)}

    word[split_on..-1] + word[0...split_on] + "ay"
  end

  def to_pig_latin(text)
    words = text.split(" ")

    latinized = words.map do |word|
      piglatinize(word)
    end
    latinized.join(" ")
  end
end
