require('pry')

class Find_replace_word

  def initialize(user_entry, find_word, replace_word)
  @user_entry = user_entry
  @find_word = find_word
  @replace_word = replace_word
  end

  def find_replace 
    @user_entry.include? @find_word
  end

  def user_entry
    @user_entry
  end

  def find_word
    @find_word
  end

  def replace_word
    @replace_word
  end

  def word_replacer
    @user_entry.gsub(/\b#{@find_word}\b/i, @replace_word)
  end

end