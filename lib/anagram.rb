class Anagram

  def initialize(preanagram)
    @split_anagram = preanagram.chars.to_a.sort
    @wordarray = []
  end

  def match(array)
    array.each do |word|
      if word.chars.to_a.sort == @split_anagram
         @wordarray << word
      else
        nil
      end
    end
    @wordarray
  end

end

#rubber duck debugging works
