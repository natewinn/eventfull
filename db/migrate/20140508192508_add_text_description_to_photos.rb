class AddTextDescriptionToPhotos < ActiveRecord::Migration
  def change
    add_column :photos, :photo_description, :text
  end
end
