class AddSetToPieces < ActiveRecord::Migration[5.2]
  def change
    add_reference :pieces, :set, foreign_key: true
  end
end
