class CommentsController < ApplicationController

	def create
		#render plain: params[:comment].inspect
		#c = Comment.new(comment_params)
		#c.save
		#redirect_to c.issue
		@comment=Comment.new(comment_params)
		@comment.save
		respond_to do |format|
			format.js
		end

	end

	private
		def comment_params
			params.require(:comment).permit(:issue_id, :content, :user_id)
		end

end
