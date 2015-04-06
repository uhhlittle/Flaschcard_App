class Category <ActiveRecord::Base
 has_many :flashcards
 validates :name, presence: true, uniqueness: true

  def to_s
    return "ID: #{id} CATEGORY: #{name}"
  end
end
# looks good, what is the to_s method doing for you?
