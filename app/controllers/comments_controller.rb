class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      @prototype = @comment.prototype
      @comments = @prototype.comments
      render "prototypes/show"
    else
      redirect_to prototype_path(@comment.prototype_id)
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id, prototype_id: params[:prototype_id])
  end
end
