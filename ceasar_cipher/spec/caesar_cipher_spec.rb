require './caesar_cipher'

RSpec.describe "caesar_cipher" do
  it "shifts the input string by a positive number" do
    expect(caesar_cipher("Hello", 7)).to eq "Olssv"
  end

  it "shifts the input string by a negative number" do
    expect(caesar_cipher("Hello", -4)).to eq "Dahhk"
  end

  it "keeps the same case" do
    expect(caesar_cipher("WoRlDs", 10)).to eq "GyBvNc"
  end

  it "keeps punctuation" do
    expect(caesar_cipher("Hello, Odin?!?", 15)).to eq "Wtaad, Dsxc?!?"
  end

  it "wraps around from a to z" do
    expect(caesar_cipher("A to Z", 1)).to eq "B up A"
  end

  it "can cope with numbers bigger than 26" do
    expect(caesar_cipher("Goodbye, Odin.", 555)).to eq "Pxxmkhn, Xmrw."
  end
end
