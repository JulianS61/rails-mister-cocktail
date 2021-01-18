class AddFavoriteToIngredient < ActiveRecord::Migration[6.0]
  def change
    add_column :ingredients, :favorite, :boolean, default: false
  end
end
