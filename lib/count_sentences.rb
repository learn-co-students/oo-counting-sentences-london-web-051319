require 'pry'

class String

   def sentence?
      self.end_with?(".")
   end

  def question?
      self.end_with?("?")
  end

  def exclamation?
      self.end_with?("!")
  end

  def count_sentences
   # sentence_ends = [ "...", "!!", "??", ".", "!", "?",]
      sentence_ends = [ ".", "!", "?",]
      a = []
      self.split(" ").each do |word| 
         sentence_ends.each do |chars|
            if word.end_with?(chars)
               a << chars
            end
         end
      end
      a.length
   end

end