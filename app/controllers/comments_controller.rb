class CommentsController < ApplicationController

def create
	@post = Post.find(params[:post_id])
	 @comment = @post.comments.create(comment_params)
	 redirect_to @post
end

def destroy 
	@post = Post.find(params[:post_id])
	@comment = Comment.find(params[:id])
	@comment.destroy

	redirect_to @post
end

private

def comment_params
     params.require(:comment).permit(:name, :comment)
end 

end
