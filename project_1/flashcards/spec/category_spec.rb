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
    # i'd be careful with the wording of this test maybe, "it should return as a string in a specific format" because it doesn't print the return
  end
end

# when going forward with testing look at the things you want the Class category to be able to do. Start general and get more specific.
