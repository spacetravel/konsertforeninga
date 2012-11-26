class ChangeTimeFieldsInConcertAgain < ActiveRecord::Migration
  def change
    add_column :concerts, :show_time, :string
    remove_column :concerts, :show_hour
    remove_column :concerts, :show_minutes
  end
end


