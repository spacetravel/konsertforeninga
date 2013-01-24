class AddPriceToConcerts < ActiveRecord::Migration
  def change
    remove_column :concerts, :price
    add_column :concerts, :price, :string
  end
end
