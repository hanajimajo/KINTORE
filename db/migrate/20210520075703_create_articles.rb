class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.string :title
      t.string :article_image_id
      t.text :description

      t.timestamps
    end
  end
end
