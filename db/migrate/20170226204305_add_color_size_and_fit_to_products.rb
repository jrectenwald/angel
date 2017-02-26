class AddColorSizeAndFitToProducts < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :color, :string
    add_column :products, :size, :string
    add_column :products, :fit, :string
  end
end
