class AddBoardIdToTiles < ActiveRecord::Migration[6.1]
  def change
    add_column :tiles, :board_id, :integer
  end
end
