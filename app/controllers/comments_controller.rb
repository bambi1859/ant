class CommentsController < ApplicationController

  def create
    comment=Comment.new
    comment.userid=params[:comment][:userid]
    comment.content=params[:comment][:content]
    comment.post_id=params[:comment][:post_id]
    comment.save
    redirect_to :back
  end
  
 def scout
     @comment = Comment.find(params[:comment_id])
     @user = @comment.userid #작성자
     
     @post = Post.find(@comment.post_id) 
     @post.situation = "진행 중"
     @post.developname = @user
     @post.save
    
    redirect_to :back
  end
  
  def destroy
    @destroy_comment= Comment.find(params[:id])
    @destroy_comment.destroy
    redirect_to :back
  end
  
end
