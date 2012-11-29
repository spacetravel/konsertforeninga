class ChangePriceInConcerts < ActiveRecord::Migration
  def up
    remove_column :concerts, :price
  end

  def down
    add_column :concerts, :price, :string
  end
end
