#!/usr/bin/env ruby

require ('./lib/find_replace.rb')

puts "please enter a phrase"
user_entry = gets.chomp
puts "What word in your phrase do you want replaced"
find_word = gets.chomp
puts "What word do you want to replace it with?"
replace_word = gets.chomp
puts "Here is your new phrase"
find_replace = Find_replace_word.new(user_entry,find_word,replace_word)
puts "#{find_replace.word_replacer}"
