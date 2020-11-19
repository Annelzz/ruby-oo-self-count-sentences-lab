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
    sections = self.split(/\.|\?|\!/)
    sections.delete_if do |part|
      part.size < 2
    end
    .size
  end
end