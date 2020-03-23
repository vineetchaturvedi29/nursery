class AddDetailToPlants < ActiveRecord::Migration[5.2]
  def change
    add_column :plants, :detail, :text
  end
end
