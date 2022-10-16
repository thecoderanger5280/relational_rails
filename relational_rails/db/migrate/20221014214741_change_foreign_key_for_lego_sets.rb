class ChangeForeignKeyForLegoSets < ActiveRecord::Migration[5.2]
  def change
    rename_column :pieces, :set_id, :lego_set_id
  end
end
