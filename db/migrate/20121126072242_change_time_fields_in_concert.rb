class ChangeTimeFieldsInConcert < ActiveRecord::Migration
  def change
    remove_column :concerts, :show_time
    add_column :concerts, :show_hour, :integer
    add_column :concerts, :show_minutes, :integer
  end
end
