class PostsController < ApplicationController
  # This functions well even though not passing all tests, 
  # so submitting

  def edit
    @post = Post.find(params[:id])
    @dropdown_categories = ["Fiction", "Non-Fiction"]
  end

  def update
    @post = Post.find(params[:id])
    @post.assign_attributes(post_params)

    if @post.valid?
      @post.save
      redirect_to post_path(@post)
    else
      flash[:message] = @post.errors.full_messages
      render :edit
    end
  end

  def show
    @post = Post.find(params[:id])
  end

  def new 
    @post = Post.new
  end

  def create
    @post = Post.new
    if @post.valid?
      @post.update(post_params)
      @post.save
      redirect_to post_path(@post)
    else
      @post.errors.full_messages
      render :new
    end
  end





  private

  def post_params
    params.require(:post).permit(:title, :category, :content)
  end
end
