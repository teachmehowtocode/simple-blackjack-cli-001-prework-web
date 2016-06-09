def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand 1..11
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(total)
  puts "Sorry, you hit #{total}. Thanks for playing!"
end

def initial_round
  deal1 = deal_card
  deal2 = deal_card

  cards = deal1 + deal2

  display_card_total(cards)
  return cards
end

def hit?(card_total)
  prompt_user
  answer = get_user_input
 if answer.include?('h')
    card_total += deal_card
  elsif answer.include?('s')
    card_total
  else
    invalid_command
  end
  card_total
end

def invalid_command
  puts "invalid Command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  card_score = initial_round
  until card_score > 21
    card_score = hit?(card_score)
    display_card_total(card_score)
end
    end_game(card_score)
end
