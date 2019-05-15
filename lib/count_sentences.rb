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
  	self.split(/[.!?]/).count{|x| x != ""} - (([sentence?, question?, exclamation?].any? || self == "") ? 0 : 1)
  end
end