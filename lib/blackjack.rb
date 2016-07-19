def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)

end

def display_card_total(card_total)########## argument error
  puts "Your cards add up to #{card_total}"
  card_total
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"

end

def get_user_input
    gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
  # code #end_game here
end

def initial_round
  # card_total = 0
  # counter = 0
  # while counter < 2
  #   card_total +=deal_card 
  #   counter+=1
  # end
  # return card_total
  # return display_card_total(card_total)
  card1 = deal_card
  card2 = deal_card
  card_total = card1 + card2

  display_card_total(card_total)
  # card_total

end

def hit?(card_total)
  
 # until card_total>21
    prompt_user
    decision = get_user_input
    if decision == 'h'
      add = deal_card
        #
      card_total += add
    # elsif decision == 's' 
    #   card_total += 0
      
    # else
    #   card_total += 0
    end
 # end

 return card_total


end


  #  while card_total > 21
  # prompt_user
  # decision = get_user_input
  #   if decision == 'h'
  #     add = deal_card
  #     card_total += add
  #   elsif decision == 's' 
  #     prompt_user
  #     get_user_input
  #     add = deal_card
  #     card_total += add
      
  #   else
  #     invalid_command
  #     prompt_user
  #     get_user_input
  #     add = deal_card
  #     card_total += add
      
  #   end
  # end
  # return card_total


def invalid_command
   puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # card_total = 0
  # welcome

  # card_total +=initial_round
  #   until card_total > 21
  #     card_total +=hit?
  #     display_card_total(card_total)
  #     # end_game
  #   end
  #   end_game



  welcome

  card_total =initial_round
    until card_total > 21
      card_total = hit?(card_total)
      display_card_total(card_total)
    end
    end_game(card_total)
  
end
  
#   # # sum += init
  
#   # # unless sum > 21
#   # #   additional = hit?
#   # #   sum += additional

#   # # end
#   # # # until card_total > 21
#   # # #   hit?
#   # # # end
#   # # end_game

  
#   # welcome
  
#   # initial round
  

  # it "calls on the #welcome method, 
  # then on the #initial_round method, 
  # then calls #hit? and #display_card_total methods
  # -until- the card sum is greater than 21,
  # then calls on the #end_game method" do

  #   expect(self).to receive(:deal_card).at_least(3).times.and_return(10)
  #   expect(self).to receive(:get_user_input).and_return("h")

  #   expect($stdout).to receive(:puts).with("Welcome to the Blackjack Table")
  #   expect($stdout).to receive(:puts).with("Your cards add up to 20")
  #   expect($stdout).to receive(:puts).with("Type 'h' to hit or 's' to stay")
  #   expect($stdout).to receive(:puts).with("Your cards add up to 30")
  #   expect($stdout).to receive(:puts).with("Sorry, you hit 30. Thanks for playing!")
  #   runner


