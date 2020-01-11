class AddTotalHealthToDinosaurs < ActiveRecord::Migration[6.0]
  def change
    add_column :dinosaurs, :total_health, :integer
  end
end
