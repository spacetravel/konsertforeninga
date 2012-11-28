class RemoveShortDescFromConcerts < ActiveRecord::Migration
  def change
    remove_column :concerts, :short_desc
  end
end
