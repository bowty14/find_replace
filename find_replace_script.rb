#!/usr/bin/env ruby

require ('./lib/find_replace.rb')

puts "please enter a string to have words replaced"
user_entry = gets.chomp
puts "What word do you want replaced"
find_word = gets.chomp
puts "What word do you want to replace it with?"
replace_word = gets.chomp

find_replace = Find_replace_word.new(user_entry,find_word,replace_word)
puts "#{find_replace.user_entry - find_replace.find_word + find_replace.replace_word}"
