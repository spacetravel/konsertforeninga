class HomeController < ApplicationController

  def index
    @series = Serie.all
  end
  
  def nyhet
    @nyhet = NewsBulletin.find(params[:id])
  end
  
  def series
    @series = Serie.all
  end

  def english
  end
  
  def member
  end
  
  def about
  end
  
end
