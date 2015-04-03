class Flashcard <ActiveRecord::Base
  belongs_to :category
  validates :question, presence: true
  validates :answer, presence: true

  def to_s
    return "ID: #{id} Q: #{question} A: #{answer}"
  end
end
