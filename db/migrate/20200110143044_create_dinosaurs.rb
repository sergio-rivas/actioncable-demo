class CreateDinosaurs < ActiveRecord::Migration[6.0]
  def change
    create_table :dinosaurs do |t|
      t.integer :health
      t.string :name
      t.string :img
      t.boolean :alive, default: true

      t.timestamps
    end
  end
end
