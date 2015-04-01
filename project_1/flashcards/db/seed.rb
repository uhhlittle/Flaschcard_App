require 'active_record'
require_relative 'connection'
require_relative '../lib/category'
require_relative '../lib/flashcard'

categories = Category.create([
  {name: "Spanish Verbs"},
  {name: "Spanish Nouns"}
])

span_verbs = Category.find_by(name:"Spanish Verbs")
span_verbs_flashcards = span_verbs.flashcards.create([
  {question: "creer" , answer: "to create", is_answered: false},
  {question: "comer", answer: "to eat", is_answered: false},
  {question: "ganar", answer: "to win", is_answered: false}
  ] )

span_nouns = Category.find_by(name:"Spanish Nouns")
span_nouns_flashcards = span_nouns.flashcards.create([
  {question: "azul", answer: "blue", is_answered: false},
  {question: "amarillo", answer: "yellow", is_answered: false},
  {question: "zapatos", answer: "shoes", is_answered: false}
  ])
