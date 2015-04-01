class Category <ActiveRecord::Base
 has_many :flashcards

  def to_s
    return "ID: #{id} CATEGORY: #{name}"
  end
end
