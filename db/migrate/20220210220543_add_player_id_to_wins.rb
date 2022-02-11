class AddPlayerIdToWins < ActiveRecord::Migration[6.1]
  def change
    add_column :wins, :player_id, :integer
  end
end
