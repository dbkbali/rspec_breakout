require "rspec"
require_relative "../lib/text_summarizer.rb"

describe TextSummarizer do

  context "initialization" do

    it "initializes with text" do
     text = "Rspec is very boring I am falling asleep"
     expect(TextSummarizer.new(text)).to be_an_instance_of(TextSummarizer)  
    end

    it "if text string is empty raises an error" do
     text = ""
     expect{TextSummarizer.new(text)}.to raise_error(BlankTextError, "need text")
    end
  end

  it "#translate method " do
    text = "I am"
    instance_summarizer = TextSummarizer.new(text)
    allow(instance_summarizer).to receive(:translate).and_return("je suis")
    expect(instance_summarizer.translate).to eq("je suis")
  end


end
