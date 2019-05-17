require 'pry'

class String

  def sentence?
    if self.end_with?(".") 
      true
    else
      false
    end
  end

  def question?
    if self.end_with?("?")
      true
    else
      false
    end
  end

  def exclamation?
    if self.end_with?("!")
      true
    else
      false
    end
  end

  def count_sentences
    delimiters = ['.', '!', "?"]
    split_sentence = self.split(Regexp.union(delimiters))
    split_sentence_filtered = split_sentence.select {|sentence| sentence.size >= 1}
    split_sentence_filtered.size
  end
end

