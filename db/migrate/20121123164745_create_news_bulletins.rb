class CreateNewsBulletins < ActiveRecord::Migration
  def change
    create_table :news_bulletins do |t|
      t.string :title
      t.text :content
      t.integer :serie_id
      
      t.timestamps
    end
  end
end
