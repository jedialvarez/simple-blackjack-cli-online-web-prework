def welcome
  puts "Welcome to the Blackjack Table"
  # code #welcome here
end

def deal_card
  rand(1...11) # code #deal_card here
end

def display_card_total(total)
puts "Your cards add up to #{total}"
  # code #display_card_total here
end

def prompt_user(phrase = "Type 'h' to hit or 's' to stay")
puts phrase  # code #prompt_user here
end

def get_user_input
gets.chomp  # code #get_user_input here
end

def end_game(total)
puts "Sorry, you hit #{total}. Thanks for playing!"
# code #end_game here
end

def initial_round
sum = deal_card + deal_card
display_card_total(sum)
sum
end

 def hit?(number)
 prompt_user
 user_input = get_user_input
 if user_input == "s"
 elsif user_input == "h"
 number = deal_card + number
 else
  invalid_command
  prompt_user
  end
  number
end

def invalid_command
  puts "Please enter a valid command."

end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
    welcome
    card_total = initial_round
    until card_total > 21
      card_total = hit?(card_total)
      display_card_total(card_total)
    end
  end_game(card_total)


end

  # code runner here
#end
