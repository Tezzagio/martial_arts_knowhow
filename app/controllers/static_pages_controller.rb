class StaticPagesController < ApplicationController

  def home
  	@martial_arts = MartialArts.all
  end

  def help
  end


 end


