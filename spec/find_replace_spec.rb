require ('rspec')
require ('find_replace')

describe("Find_replace_word#find_replace") do
  it('finds the word that the user wants to replace') do
    findword = Find_replace_word.new("Hello world", "world", "universe")
    expect(findword.find_replace()).to(eq(true))
  end
  it('finds and replaces the inputted word') do
    findword = Find_replace_word.new("Hello world", "world", "Universe")
    expect(findword.word_replacer()).to(eq("Hello Universe"))
  end
end