class PhotosController < ApplicationController

	def index
		@photos = Photo.all
	end

	def new
		@photos = Photo.all
		@new_photo = Photo.new
	end

	def show
		@photo = Photo.find(params[:id])
		@new_comment = @photo.comments.build
		@new_tag = @photo.tags.build
	end

	def create
		@new_photo = Photo.new(photo_params)
		if @new_photo.save
			redirect_to events_path
		else
			redirect_to new_photo_path
		end
	end

	def random_photo
		@photos = []
		until @photos.count == 8 do
		photo = Photo.find(rand(1..Photo.all.count))
		@photos << photo unless @photos.include?(photo)
	end

	end	

	def edit
		@photo = Photo.find(params [:id])
	end

	def update
		@photo = Photo.find(params[:id])
		if @photo.update_attributes(photo_params)
			redirect_to photos_path
		else
			redirect_to edit_photo_path
		end
	end

	def download_image
		@photo = Photo.find(params[:id])
		file = @photo.image
		send_file file.path
	end

	def destroy
		@photo = Photo.find(params[:id])
		@photo.destroy
			redirect_to events_path
	end

	private

	def photo_params
		params.require(:photo).permit!
	end
end