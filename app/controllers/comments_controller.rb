class CommentsController < ApplicationController

	# check that user is logged in before allowing to comment
	# before_action :authenticate_user!

	def create
		@idea = Idea.find(params[:idea_id])
		@comment = @idea.comments.create(comment_params)
		if @comment.save
			flash[:success] = "Added comment."
			redirect_to idea_path(@idea)
		else
			flash[:error] = "There was a problem adding your comment."
			render action: :new
		end
	end

	def destroy
		@idea = Idea.find(params[:idea_id])
		@comment = @idea.comments.find(params[:id])
		@comment.destroy
		flash[:success] = "Your comment has been deleted."
		redirect_to idea_path(@idea)
	end

	private
		def comment_params
			params.require(:comment).permit(:commenter, :body)
		end
end
