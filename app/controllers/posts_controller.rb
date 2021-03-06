class PostsController < ApplicationController
  def index
    @posts = Post.all
  end
  def create
    @post = Post.new( post_params)
    if @post.save
      redirect_to @post
    end
  end
  def new
    @post=Post.new
  end
  def edit
    @post = Post.find(params[:id])
  end

  def update
    print "Update: ", params
    @post = Post.find(params[:id])

    if @post.update(post_params)
      redirect_to @post
    end
  end
  def show
    @post = Post.find(params[:id])

  end
  def destroy
    @post = Post.find(params[:id])
     if @post.destroy
      redirect_to posts_path
      end
  end

end
private
def post_params
  params.require(:post).permit(:title, :text)
end


