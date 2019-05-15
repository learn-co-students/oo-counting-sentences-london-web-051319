require 'pry'

class String

  def sentence?
    # if self.end_with?(".")
    #   return true
    # else
    #   return false
    # end
    self.end_with?(".") == true ? true : false
  end

  def question?
    self.end_with?("?") == true ? true : false
  end

  def exclamation?
    self.end_with?("!") == true ? true : false
  end

  def count_sentences
    self.split(/[!?.]\s/).count
  end
  #binding.pry
end