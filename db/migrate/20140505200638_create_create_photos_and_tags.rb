class CreatePhotosAndTags < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :photo_name
      t.date :photo_date
      t.integer :event_id
    end
    
    create_table :tags do |t|
      t.string :tag_name
    end

    create_table :photos_tags, id: false do |t|
      t.integer :photo_id
      t.integer :tag_id
    end
  end
end
