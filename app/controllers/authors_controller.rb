class AuthorsController < ApplicationController
  def show
    @author = Author.find(params[:id])
  end

  def new
    @author = Author.new
  end

  def create
    @author = Author.new(author_params)
    if @author.valid?
      @author.save
      redirect_to author_path(@author)
    else
      #@author.errors.full_messages
      flash[:message]=@author.errors.full_messages
      puts flash[:message]
      render :new
    end
  end

  def edit 
    @author = Author.find(params[:id])
  end
  

  def update 
    if @author.valid?
      @author = Author.find(params[:id])    
      @author.update(author_params)
      redirect_to author_path(@author)
    else
      @author.errors.full_messages
      render :edit
    end
  end


  private

  def author_params
    params.require(:author).permit(:name, :email, :phone_number)
  end
end
