class HomeController < ApplicationController

  def index
    @series = Serie.all
    @news = NewsBulletin.order('created_at DESC')
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
