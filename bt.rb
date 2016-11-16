require 'colorize'

def ask_input
	print "Enter a phrase: ".colorize(:green)
	phrase = gets.strip.downcase
	if phrase.length > 0
		check_palindrome(phrase)
	else
		puts "You have to type something!".colorize(:red)
		ask_input
	end
end

def check_palindrome(phrase)
	phrase.gsub!(/[^a-z0-9]/, '')
	reversed = []
	phrase_arr = phrase.split("")
	phrase_arr.each do |i|
		reversed.unshift(i)
	end
	reversed = reversed.join('')
	if reversed == phrase
		puts "#{phrase}".colorize(:light_blue) + " backwards is " + "#{reversed}".colorize(:light_blue) + " and " + "is a palindrome!".colorize(:green)
	else
		puts "#{phrase}".colorize(:light_blue) + " backwards is " + "#{reversed}".colorize(:light_blue) + ", and is " + "not a palindrome.".colorize(:red)
	end
end

while true
	ask_input
end