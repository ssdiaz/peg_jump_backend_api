class CreateBoard < ActiveRecord::Migration[6.1]
  def change
    create_table :boards do |t|
      t.integer :game_id

      # t.timestamps
    end
  end
end
