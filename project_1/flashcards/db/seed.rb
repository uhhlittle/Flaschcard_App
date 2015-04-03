require 'active_record'
require_relative 'connection'
require_relative '../lib/category'
require_relative '../lib/flashcard'

categories = Category.create([
  {name: "Verbs/Verbos"},
  {name: "Colors/Coloras"},
  {name: "Clothing/Ropa"}
])

verbs = Category.find_by(name:"Verbs/Verbos")
verbs_flashcards = verbs.flashcards.create([
  {question: "creer" , answer: "to believe", score: 0, is_answered: false},
  {question: "comer", answer: "to eat", score: 0, is_answered: false},
  {question: "ganar", answer: "to win", score: 0, is_answered: false},
  {question: "ser", answer: "to be", score: 0, is_answered: false},
  {question: "dar", answer: "to give", score: 0, is_answered: false},
  {question: "hablar", answer: "to speak", score: 0, is_answered: false},
  {question: "decir", answer: "to say", score: 0, is_answered: false}
  ] )

colors = Category.find_by(name:"Colors/Coloras")
colors_flashcards = colors.flashcards.create([
  {question: "azul", answer: "blue", score: 0,  is_answered: false},
  {question: "amarillo", answer: "yellow", score: 0, is_answered: false},
  {question: "violeta", answer: "purple", score: 0, is_answered: false},
  {question: "verde", answer: "green", score: 0, is_answered: false},
  {question: "naranja", answer: "orange", score: 0, is_answered: false},
  {question: "blanco", answer: "white", score: 0, is_answered: false},
  {question: "roja", answer: "red", score: 0, is_answered: false},
  {question: "negro", answer: "black", score: 0, is_answered: false}
  ])

clothing = Category.find_by(name:"Clothing/Ropa")
clothing_flashcards = clothing.flashcards.create([
  {question: "camiseta", answer: "t-shirt", score: 0,  is_answered: false},
  {question: "zapatos", answer: "shoes", score: 0,  is_answered: false},
  {question: "pantalones", answer: "pants", score: 0,  is_answered: false},
  {question: "chaqueta", answer: "jacket", score: 0,  is_answered: false},
  {question: "camisa", answer: "shirt", score: 0,  is_answered: false},
  {question: "lunetas", answer: "glasses", score: 0,  is_answered: false}
  ])
