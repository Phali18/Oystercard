require 'oystercard'

describe Oystercard do
  it "should check default balance is 0" do 
    expect(subject.balance).to eq(0)
  end 
  
  describe "#top_up" do
    it "should increase balance by 10 if method called with value 10" do
      expect{ subject.top_up 10 }.to change{ subject.balance }.by 10
    end
    it "should throw an expection if new balance would exceed 90" do
      expect{ subject.top_up(91) }.to raise_error 
    end
  end
end 