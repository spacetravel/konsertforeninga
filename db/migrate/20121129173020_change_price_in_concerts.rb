class ChangePriceInConcerts < ActiveRecord::Migration
  def up
    remove_column :concerts, :price
    add_column :concerts, :price, :string
  end

  def down
  end
end
