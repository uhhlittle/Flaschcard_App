class Flashcard <ActiveRecord::Base
  belongs_to :category

  def to_s
    return "ID: #{id} Q: #{question} A: #{answer}"
  end
end
