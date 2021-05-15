class CommentsController < ApplicationController
  def create
    post = Post.find(params[:post_id])
    comment = post.comments.create(comment_params.merge(pengguna_id: current_user.id))
    if comment.save
      redirect_to pengguna_path(current_user), notice: 'Comment success'
    else
      redirect_to pengguna_path(current_user), alert: 'There was an error.'
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:content)
  end
end
