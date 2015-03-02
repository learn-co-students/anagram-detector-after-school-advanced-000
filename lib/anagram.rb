# Your code goes here!
class Anagram
  def initialize(word)
    @word = word
  end

  def match(string)
    matches = []  
    string.each do |word|
      letters = word.split('')
      hash = letters.each_with_object(Hash.new(0)) {|l, h| h[l] += 1}
      letters2 = @word.split('')
      hash2 = letters2.each_with_object(Hash.new(0)) {|l, h| h[l] += 1}
      puts hash, hash2
      if hash == hash2
        matches << word
      end
    end
    matches
  end
end

zombie = Anagram.new('zombie')
zombie.match( ["hello", "world", "zombie", "pants", "dipper"])
