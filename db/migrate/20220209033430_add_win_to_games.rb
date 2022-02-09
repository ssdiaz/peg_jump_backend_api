class AddWinToGames < ActiveRecord::Migration[6.1]
  def change
    add_column :games, :win, :boolean
  end
end
