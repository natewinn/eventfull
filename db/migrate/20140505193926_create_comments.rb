class Comments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :commenter
      t.date :comment_date
      t.text :comment_text
      t.integer :commentable_id
      t.string :commentable_type
    end
  end
end