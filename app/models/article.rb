class Article < ApplicationRecord

  belongs_to :admin, optional: true
  attachment :article_image

end
