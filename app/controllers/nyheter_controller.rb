class NyheterController < ApplicationController

  def index
    @news = NewsBulletin.all
  end
  
  def show
    @nyhet = NewsBulletin.find(params[:id])
  end
end