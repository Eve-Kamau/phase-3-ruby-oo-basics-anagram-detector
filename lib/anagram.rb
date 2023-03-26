# Your code goes here!
class Anagram

  def initialize(anagram)
      @anagram = anagram
  end

  def is_anagram?(text)
    text.chars.sort == @anagram.chars.sort
  end

  def match(words)
    words.filter do |text|
      is_anagram?(text)
    end
  end

end

listen = Anagram.new("listen")
listen.match(%w[enlists google inlets banana])
