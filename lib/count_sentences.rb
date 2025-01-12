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
    self.split(" ").count { |word| word.sentence? || word.question? || word.exclamation? }
    # self.split(/[[!?.]]\s/).count
  end
end