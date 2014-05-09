class Photo < ActiveRecord::Base
	# belongs to :events
	has_and_belongs_to_many :tags
	has_many :comments, as: :commentable
	mount_uploader :image, ImageUploader

end	