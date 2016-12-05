class CommentsController < ApplicationController

  def create
    @parent = Article.find params[:article_id] if params[:article_id]
    @parent = Comment.find param[:comment_id] if params[:comment_id]
    @comment = @parent.comments.new(comment_params)
    if @comment.save
      redirect_to article_index_path(params[:article_id])
    else
      render 'new'
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:body)
  end

end
