class AddLikeToIngredient < ActiveRecord::Migration[6.0]
  def change
    add_column :ingredients, :like, :integer
  end
end
