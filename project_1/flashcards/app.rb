require 'active_record'
require 'pg'
require 'pry'

require_relative 'db/connection'
require_relative 'lib/category'
require_relative 'lib/flashcard'
# how often do you find yourself prompting a user for information, and then getting user input. Do you think that logic can be abstrated into a method and reused?
def get_category
  puts "Which category?"
  puts Category.all
  category_id = gets.chomp
  return Category.find_by(id: category_id)
end

def get_card(category)
  puts "Select card by ID."
  puts category.flashcards
  current_card = gets.chomp.to_i
  return category.flashcards.find_by(id: current_card)
  # maybe this method could be defined inside the Category Class definition. That way you can call the method on a Category Object, rather than passing in a category object to a local method
end

def play
  system "clear"
  header("STUDY MODE")
  play_category = get_category
  category_cards = play_category.flashcards.all
  # i think the all here is either redundant or it will make the program break
  category_cards.each do |card|
    system "clear"
    header("STUDY MODE")
    puts "Translate this word: #{card.question}"
    user_answer = gets.chomp
    if user_answer == card.answer
      card.is_answered = true
      # so I kind of saw this flaw in the schema file, but I wanted to see the UI before I made a comment
      # The question i'm posing, can the card be reused? once its answered correctly, is it ever reset to false? How might we fix this?
      card.save
      puts "Correcto!"
    end_menu_option
    else
      card.is_answered = false
      card.save
      puts "Lo Siento. Please try again."
    end_menu_option
    end
  end
end

def add_new_card
  system "clear"
  card_attr = {}
  header("Add New Card")
  puts "Select Category by ID"
  puts Category.all
  current_category = gets.chomp
  card_attr[:category_id] = current_category
  puts "What is the vocabulary word?"
  card_attr[:question] = gets.chomp
  puts "What is the translation?"
  card_attr[:answer] = gets.chomp
  card_attr[:is_answered] = false
  return card_attr
end

def header(title_text)
  dashes = "----------------"
  puts  " #{dashes}#{title_text}#{dashes}"
end


def score()
  system "clear"
  score = Flashcard.where(is_answered: true).count
  return "Your total score is #{score}"

end

def end_menu_option
  puts "Press <Enter> to continue."
  gets.chomp
end

def menu
  system "clear"
  header("SPANISH TRANSLATION")
  puts "Select an option:
  1. Let's Translate!
  2. List all categories.
  3. List all flashcards.
  4. Add a new flashcard.
  5. Edit an exisiting flashcard.
  6. Delete a flashcard.
  7. View Score.
  8. Quit"
  return gets.chomp
end

loop do

  choice = menu
  case choice
  when "1"
    game_play = play

  when "2"
    puts Category.all
    end_menu_option

  when "3"
    puts Flashcard.all
    end_menu_option
  when "4"
    Flashcard.create(add_new_card)
    end_menu_option

  when "5"
    current_category = get_category
    current_card = get_card(current_category)
    puts "What is the vocabulary word?"
    new_question = gets.chomp
    current_card.question = new_question
    puts "What is the translation?"
    new_answer = gets.chomp
    current_card.answer = new_answer
    current_card.save
    system "clear"
    puts"Card Edited!"
    end_menu_option

  when "6"
    current_category = get_category
    current_card = get_card(current_category)
    current_card.destroy
    system "clear"
    puts "Card DELETED."
    end_menu_option


  when "7"
    current_score = score

    puts current_score
    end_menu_option

  when "8"
    system "clear"
    break

  end
end
# overall looks good, start thinking about how you might refactor your code
