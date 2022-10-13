class CreatePieces < ActiveRecord::Migration[5.2]
  def change
    create_table :pieces do |t|
      t.string :name
      t.integer :piece_number
      t.boolean :broken

      t.timestamps
    end
  end
end
