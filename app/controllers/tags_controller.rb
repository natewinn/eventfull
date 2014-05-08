class TagsController < ApplicationController
	
	def index
		@tags = Tag.all
	end

	def new
		@new_tag = Tag.new
	end

	def show
		@tag = Tag.find(params[:id])
	end

	def create
		@new_tag = Tag.where(tag_params).first_or_create
		@photo = Photo.find(params[:photo_id])
		if @new_tag.save
			@photo.tags << @new_tag
				redirect_to :back
		end
	end

	def edit
		@tag = Tag.find(params [:id])
	end

	def update
		@tag = Tag.find(params[:id])
		if @tag.update_attributes(tag_params)
			redirect_to tags_path
		else
			redirect_to edit_tags_path
		end
	end

	def destroy
		@tag = Tag.find(params[:id])
		@tag.destroy
			redirect_to tags_path
	end

	private

	def tag_params
		params.require(:tag).permit!
	end
end
