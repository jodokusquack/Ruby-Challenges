require './substrings'

RSpec.describe "substrings" do

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

  it "finds all the substrings of a single word" do
    expect( substrings("below", dictionary) ).to eql({"below" => 1, "low"=>1})
  end

  it "finds all the substrings of multiple words" do
    expect( substrings("Howdy partner, sit down! How's it going?", dictionary)\
          ).to eql(
            {"how"=>2,
             "down"=>1,
             "howdy"=>1,
             "go"=>1,
             "going"=>1,
             "it"=>2,
             "i"=>3,
             "own"=>1,
             "part"=>1,
             "partner"=>1,
             "sit"=>1
    })
  end

  it "also correctly determines if there are no substrings to be found" do
    expect( substrings("jodokusquack", dictionary) ).to be_empty
  end
end
