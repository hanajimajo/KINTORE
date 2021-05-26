class AddUrlToTrainings < ActiveRecord::Migration[5.2]
  def change
    add_column :trainings, :url, :string
  end
end
