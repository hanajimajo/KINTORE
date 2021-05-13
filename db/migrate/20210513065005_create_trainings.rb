class CreateTrainings < ActiveRecord::Migration[5.2]
  def change
    create_table :trainings do |t|
      t.integer :user_id
      t.integer :genre_id
      t.string :image_id
      t.string :title
      t.string :time
      t.string :set
      t.text :description

      t.timestamps
    end
  end
end
