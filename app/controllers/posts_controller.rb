class PostsController < ApplicationController
  def new
    @post = Post.new(flash[:post])
  end

  def create
    post = Post.new(post_params)
    if post.save
      flash[:notice] = "「#{post.title}」を投稿しました"
      redirect_to root_path
    else
      redirect_to :back, flash: {
        post: post,
        error_messages: post.errors.full_messages
      }
    end
  end

  private
  
    def post_params
      params.require(:post).permit(:title, :text, { :tag_ids=> [] })
    end
end
