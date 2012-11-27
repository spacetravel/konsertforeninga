class HomeController < ApplicationController

  def index
    @series = Serie.all
  end

  def english
  end
  
  def member
  end
  
  def about
  end
  
end
