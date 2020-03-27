class PostsController < ApplicationController
  def index
    @posts = Post.all
  end
  def create
    @post = Post.new( post_params)

    @post.save
    redirect_to @post
  end
  def new
    @post=Post.new
  end
  def edit
    @post = Post.find(params[:id])
    if @post.edit

    end
  end
  def update
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
































# class PostsController < ApplicationController
#
#   def index
#     @posts =Post.all
#   end
#
#   def create
#     #render [:plain =>params [:post].inspect]
#     # render plain: params[:post] .inspect
#
#      @post = Post.new(post_params)
#     #to save data in database
#      @post.save
#     #to path to show
#     redirect_to @post
#   end
#
#   def new
#     # to make an object from post
#     @post=Post.new
#   end
#
#   def edit
#   end
#
#   def update
#   end
#
#   def show
#     @post = Post.find(params[:id])
#   end
#
#   def destroy
#   end
# end
#
# private
# def post_params
#   params.require(:post).permit(:title, :text)
# end
#
#
#
#
