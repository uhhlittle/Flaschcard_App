require 'active_record'
require 'pg'
require 'pry'

require_relative 'db/connection'
require_relative 'lib/category'
require_relative 'lib/flashcard'

def get_category
  puts "Which category?"
  puts Category.all
  category_name = gets.chomp
  return Category.find_by(name: category_name)


end

#define play method
#return remaining (is_answered = false) category.id.flashcards sequentially.

#method to assess correctness ie == current_flashcard.answer
#then is_answered = true
#else puts "Sorry, try again."

def get_card_input
  card_attr = {}
  puts Category.all
  puts "Which category?"
  card_attr[:category_id] = gets.chomp
  puts "What is the question?"
  card_attr[:question] = gets.chomp
  puts "What is the answer?"
  card_attr[:answer] = gets.chomp

  card_attr[:is_answered] = false
  return card_attr
end

def menu
  puts "Choose an option:
  1. Let's Translate!
  2. List all Flashcards.
  3. Edit an exisiting card.
  4. Add a new card.
  5. Delete a card.
  6. View Score.
  7. Quit"
  return gets.chomp
end

loop do

  choice = menu
  case choice

  when "1"
    puts Category.all

  when "2"
    Fridge.create(get_fridge_input)
  when "3"
    fridge = get_fridge
    fridge.destroy
  when "4"
    fridge = get_fridge
    puts fridge.foods
  when "5"
    fridge = get_fridge
    new_food = Food.create(get_food_input)
    new_food.fridge = fridge
    new_food.save
  when "6"
    fridge = get_fridge
    food = get_food(fridge)
    food.destroy
  when "7"
    fridge = get_fridge
    puts fridge.drinks
  when "8"
    fridge = get_fridge
    new_drink = Drink.create(get_drink_input)
    new_drink.fridge = fridge
    new_drink.save
  when "9"
    fridge = get_fridge
    drink = get_drink(fridge)
    puts "What is the new size?"
    new_size = gets.chomp
    drink.size = new_size
    drink.save
  when "10"
    fridge = get_fridge
    drink = get_drink(fridge)
    drink.destroy
  when "11"
    break
  end
end
