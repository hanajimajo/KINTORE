class Training < ApplicationRecord

  belongs_to :user
  attachment :image

  has_many :favorites, dependent: :destroy

  def favorited_by?(user)
    favorites.where(user_id: user.id).exists?
  end

  has_many :bookmarks, dependent: :destroy

  def bookmarked_by?(user)
    bookmarks.where(user_id: user.id).exists?
  end

  def self.looks(search, word)
    if search == "partial_match"
      @training = Training.where("title LIKE?","%#{word}%")
    else
      @trainings = Training.all
    end
  end

end
