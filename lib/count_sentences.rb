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
    myarr = self.split(/[?.!]/)
    myarr.size
    myarr.reject {|sentence| sentence == ""}.size
    #binding.pry
  end
end
