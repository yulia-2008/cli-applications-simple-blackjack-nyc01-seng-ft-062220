def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
 i= rand(1..11)
 puts i 
 puts i
 return i
  
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.strip
end

def end_game(num)
  puts "Sorry, you hit #{num}. Thanks for playing!"
end

def initial_round
first_move=deal_card + deal_card
display_card_total(first_move)
first_move
end

def hit?(card_total)
  prompt_user
  input=get_user_input
  if input == "h"
    card_total+=deal_card
    puts card_total
  elsif input == "s"
  hit?(card_total)
else
  invalid_command
  hit?(card_total)
end
card_total
end

def invalid_command
 puts "Please enter a valid command"
end


def runner
  welcome 
  card_total=initial_round
   until hit?(card_total) >= 21 
   hit?(card_total)
   card_total+=deal_card
 end 
 display_card_total(hit?(card_total))
 end_game(21)
end
    
