class BlankTextError < StandardError

end


class TextSummarizer

  attr_reader :text

  def initialize(text)
    raise BlankTextError, "need text" if text.empty?
    @text = text
  end


  def translate
     # code to be written to connect to google translate and return french
     # Someone else is writing the code so to test this method use a stub
  end

  def long_string?
    test > 15
  end

end
