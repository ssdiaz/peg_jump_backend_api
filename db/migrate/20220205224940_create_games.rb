class CreateGames < ActiveRecord::Migration[6.1]
  def change
    create_table :games do |t|
      t.integer :player_id
      t.string :board_id

      # t.timestamps
    end
  end
end
