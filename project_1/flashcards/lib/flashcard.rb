class Flashcard <ActiveRecord::Base
  belongs_to :category
  validates :question, presence: true
  validates :answer, presence: true

  def to_s
    return "ID: #{id} Q: #{question} A: #{answer}"
  end
end

# looks good, what is the to_s method doing for you?
