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
  it("finds and replaces even partial words") do
    findword = Find_replace_word.new("I am walking my cat to the Cathedral", "cat", "dog")
    expect(findword.word_replacer()).to(eq("I am walking my dog to the Cathedral"))
  end
  it("will replace the entire inputted phrase for a new word or new phrase") do 
    findword = Find_replace_word.new("hello world", "hello world", "Hello, to all of my wonderful instructors!")
    expect(findword.word_replacer()).to(eq("Hello, to all of my wonderful instructors!"))
  end
end