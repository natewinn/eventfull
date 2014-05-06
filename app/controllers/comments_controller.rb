class CommentsController < ApplicationController
	
	def index
		@comments = Comment.all
	end

	def new
		@new_comment = Comment.new
	end

	def show
		@comment = Comment.find(params[:id])
	end

	def create
		@new_comment = Comment.new(comment_params)
		if @new_comment.save
			redirect_to :back
		end
	end

	def edit
		@comment = Comment.find(params [:id])
	end

	def update
		@comment = Comment.find(params[:id])
		if @comment.update_attributes(comment_params)
			redirect_to comments_path
		else
			redirect_to edit_comment_path
		end
	end

	def destroy
		@comment = Comment.find(params[:id])
		@comment.destroy
			redirect_to comments_path
	end

	private

	def comment_params
		params.require(:comment).permit!
	end
end