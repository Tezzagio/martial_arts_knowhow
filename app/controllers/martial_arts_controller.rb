class MartialArtsController < ApplicationController
	before_action :authenticate_user!, only: [ :new, :create ]

  def index
  	 @martial_arts = Martial_art.order ('id DESC').all
  end


  def search
	   @search = params[:query]
	   @martial_arts = Movie.search(@search)
	   @no_results = !@martial_art
  end

  def new
  	 @martial_arts = Martial_art.new 
  	 @martial_arts = Martial_art.order ('id DESC').all
  end

  def create
	@martial_art = Martial_art.new(parameters)
	if @martial_art.valid?
		 @martial_art.save
		 flash[:info] = 'Great!!! Martial Art added'
		 return redirect_to root_path
  end
end

    flash[:error] = "You have errors"

private
  def parameters
    params.require(:martial_art).permit(:name, :popularity)
  end
end






