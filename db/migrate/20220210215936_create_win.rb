class CreateWin < ActiveRecord::Migration[6.1]
  def change
    create_table :wins do |t|
      t.integer :move_count
      t.integer :win_count

      # t.timestamps
    end
  end
end
