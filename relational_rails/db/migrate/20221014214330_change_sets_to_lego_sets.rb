class ChangeSetsToLegoSets < ActiveRecord::Migration[5.2]
  def change
    rename_table :sets, :lego_sets
  end
end
