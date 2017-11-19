class PigLatinizer

  def piglatinize(string_to_convert)
    letters = ('a'..'z').to_a
    vowels = %w[a e i o u]
    consonants = letters - vowels

    if vowels.include?(string_to_convert[0])
      string_to_convert + "ay"
    elsif consonants.include?(string_to_convert[0]) && consonants.include?(string_to_convert[1])
      string_to_convert[2..-1] + string_to_convert[0..1] + "ay"
    elsif consonants.include?(string_to_convert[0])
      string_to_convert[1..-1] + string_to_convert[0] + "ay"
    else
      string_to_convert
    end
  end
end


  def to_pig_latin(string)
    string.split.collect{|word| piglatinize(word)}.join(" ")
  end

end

p = PigLatinizer.new

puts p.piglatinize("pork")
