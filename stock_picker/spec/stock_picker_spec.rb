require "./stock_picker"

RSpec.describe "stock_picker" do

  it "retuns the correct day to buy, sell and the profit" do
    expect( stock_picker([1,25,5,5,45,5,6,20,0]) ).to eql([0,4,44])
  end

  it "correctly identifies when no profit can be made" do
    expect( stock_picker([100, 65, 8, 2 ,1]) ).to start_with "No profit"
  end

  it "doesn't get fooled when the last day is the cheapest" do
    expect( stock_picker([3, 45, 1, 100, 0]) ).to eql [2, 3, 99]
  end

  it "doesn't get fooled when the first day is the highest" do
    expect( stock_picker([42, 5, 30, 29, 3, 24]) ).to eql [1,2,25]
  end
end
