class CreateTiles < ActiveRecord::Migration[6.1]
  def change
    create_table :tiles do |t|
      t.string :options
      t.string :removes
      t.boolean :active

      # t.timestamps
    end
  end
end
