class PostsController < ApplicationController

def create
  @post = current_user.posts.create(post_params)
  if @post.save
    # Handle a successful save.
  redirect_to pengguna_path(current_user), notice: 'You have successfull Create a new Post.'
  else
    redirect_to pengguna_path(current_user)
  end
end

def edit
  @post = Post.find(params[:id])
end

def update
  @post = Post.find(params[:id])
  @post.update(post_params)
  if @post.save
    redirect_to pengguna_path(current_user), notice: 'You have successfull Update a Post.'
  else
    redirect_to edit_post_path(@post)
  end
end

def destroy
  post = Post.find(params[:id])
  post.destroy
  redirect_to pengguna_path(current_user)
end

private
  def post_params
    params.require(:post).permit(:caption, :photo)
  end


end
