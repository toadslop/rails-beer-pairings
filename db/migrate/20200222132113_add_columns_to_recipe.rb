class AddColumnsToRecipe < ActiveRecord::Migration[6.0]
  def change
    add_column :recipes, :api_id, :integer
    add_column :recipes, :ready_in, :integer
    add_column :recipes, :servings, :integer
  end
end
