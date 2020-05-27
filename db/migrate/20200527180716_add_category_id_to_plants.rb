class AddCategoryIdToPlants < ActiveRecord::Migration[5.2]
  def change
    add_column :plants, :category_id, :integer
    remove_column :categories, :plant_id, :integer
  end
end
