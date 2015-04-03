require 'active_record'
require 'spec_helper'
require_relative '../db/connection'
require_relative '../lib/category.rb'
require_relative '../lib/flashcard.rb'

describe Category do
  let(:span_verbs) { Category.new(id: 1, category: "Spanish Verbs")}

  describe '#to_s' do
    it "should print return as a  string" do
    expect(span_verbs.to_s).to eq("ID: 1 CATEGORY: Spanish Verbs")
    end
  end
end
