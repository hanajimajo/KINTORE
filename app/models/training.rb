class Training < ApplicationRecord

  belongs_to :user
  attachment :image

end
