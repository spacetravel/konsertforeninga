class CreateConcerts < ActiveRecord::Migration
  def change
    create_table :concerts do |t|
      t.string :title
      t.text :short_desc
      t.text :desc
      t.datetime :show_date_time
      t.integer :serie_id
      t.integer :price

      t.timestamps
    end
  end
end
