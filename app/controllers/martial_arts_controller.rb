class MartialArtsController < ApplicationController
	before_action :authenticate_user!, only: [ :new, :create ]

  def index
    @martial_arts = MartialArt.all
  end

  def search
    @search = params[:query]
    @martial_arts = MartialArt.search(@search)
    @no_results = !@martial_art
  end

  def new
    @martial_art = MartialArt.new(user: current_user) 
  end

  def show
    @martial_art = MartialArt.find params[:id]
  end

  def comment
    @martial_art = MartialArt.new user_id: current_user.id
    @martial_art = current_user.comments.new
  end

  def blog
      @blog = Blog.new(parameters)
      if @blog.valid?
        @blog.save
        flash[:info] = 'Nice one! Blog created'
        return redirect_to root_path
    end

    flash[:error] = "You have errors"

  end

def create
  @martial_art = MartialArt.new(parameters)
  if @martial_art.valid?
    @martial_art.save
    flash[:info] = 'Your new Martial Art has now been added'
    return redirect_to root_path
  end

   flash[:error] = "You have errors"
end

  private

  def parameters
    params.require(:martial_art).permit(:name, :description, :user_id)
    params.require(:blog).permit(:user_id, :category_id)
  end

 end
end
