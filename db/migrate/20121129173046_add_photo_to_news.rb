class AddPhotoToNews < ActiveRecord::Migration
  def change
    add_column :news_bulletins, :photo_file_name, :string
    add_column :news_bulletins, :photo_content_type, :string
    add_column :news_bulletins, :photo_file_size, :string
    
  end
end
