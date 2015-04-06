require 'active_record'
require 'spec_helper'
require_relative '../db/connection'
require_relative '../lib/category.rb'
require_relative '../lib/flashcard.rb'

describe Flashcard do
  let(:apple_translation) { Flashcard.new(id: 1, question: "manzana", answer: "apple") }

  describe '#to_s' do
    it "should print to question and answer" do
      expect(apple_translation.to_s).to eq("ID: 1 Q: manzana A: apple")
    end
  end
  # same comments as category spec
end
