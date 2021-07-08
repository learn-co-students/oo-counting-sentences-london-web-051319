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
    myarr.reject {|sent| sent == ""}.size
  end
end
