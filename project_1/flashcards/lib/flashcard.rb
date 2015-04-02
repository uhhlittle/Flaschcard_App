class Flashcard <ActiveRecord::Base
  belongs_to :category
  validates :name, presence: true, uniqueness: true

  def to_s
    return "ID: #{id} Q: #{question} A: #{answer}"
  end
end
