class AuthorsController < ApplicationController
  def show
    @author = Author.find(params[:id])
  end

  def new
  end

  def create
    @author = Author.new(author_params)
    if @author.save
    redirect_to author_path(@author)
    else
      # flash[:errors] = @author.errors_full_messages
    render :new
    end
  end

  private

  def author_params
    params.permit(:email, :name)
  end
end
