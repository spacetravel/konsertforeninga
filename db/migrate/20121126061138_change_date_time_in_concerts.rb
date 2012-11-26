class ChangeDateTimeInConcerts < ActiveRecord::Migration
  def change
    remove_column :concerts, :show_date_time
    add_column :concerts, :show_date, :date
    add_column :concerts, :show_time, :time
  end
end
