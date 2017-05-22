def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  return rand(11) + 1
end

def display_card_total(total)
  puts "Your cards add up to #{total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  return gets.chomp
end

def end_game(total)
  puts "Sorry, you hit #{total}. Thanks for playing!"
  # code #end_game here
end

def initial_round
  total = deal_card + deal_card
  display_card_total(total)
  return total
end

def hit?(total)
  prompt_user
  response = get_user_input
  if response == "h"
    total += deal_card
    return total
  elsif response == "s"
    return total
  else
    invalid_command
  end
end

def invalid_command
  puts "Invalid Command!"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  total = initial_round
  while total < 21
    total = hit?(total)
    display_card_total(total)
  end
  end_game(total)
end
