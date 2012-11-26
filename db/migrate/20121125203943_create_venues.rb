class CreateVenues < ActiveRecord::Migration
  def change
    create_table :venues do |t|
      t.string :name
      t.string :desc
      t.string :link
      
      t.timestamps
    end
  end
end
