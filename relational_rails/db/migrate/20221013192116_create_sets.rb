class CreateSets < ActiveRecord::Migration[5.2]
  def change
    create_table :sets do |t|
      t.string :name
      t.integer :min_age
      t.boolean :retired

      t.timestamps
    end
  end
end
