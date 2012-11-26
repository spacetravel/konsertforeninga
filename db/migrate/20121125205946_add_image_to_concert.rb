class AddImageToConcert < ActiveRecord::Migration
  def change
    add_column :concerts, :photo_file_name, :string
    add_column :concerts, :photo_content_type, :string
    add_column :concerts, :photo_file_size, :string
  end
end
