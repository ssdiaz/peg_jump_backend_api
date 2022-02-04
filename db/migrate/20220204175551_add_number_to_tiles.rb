class AddNumberToTiles < ActiveRecord::Migration[6.1]
  def change
    add_column :tiles, :number, :integer
  end
end
