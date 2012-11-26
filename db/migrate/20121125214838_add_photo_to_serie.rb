class AddPhotoToSerie < ActiveRecord::Migration
  def change
      add_column :series, :photo_file_name, :string
      add_column :series, :photo_content_type, :string
      add_column :series, :photo_file_size, :string
  end
end
