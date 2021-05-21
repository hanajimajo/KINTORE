class AddGenreToTrainings < ActiveRecord::Migration[5.2]
  def change
    add_column :trainings, :genre, :string
  end
end
