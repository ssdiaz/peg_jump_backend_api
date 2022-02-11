class AddMovecountToGames < ActiveRecord::Migration[6.1]
  def change
    add_column :games, :move_count, :string
    add_column :games, :integer, :string
  end
end
