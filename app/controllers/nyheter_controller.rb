class NyheterController < ApplicationController

  def index
    @news = NewsBulletin.order('created_at DESC')

  end
  
  def show
    @nyhet = NewsBulletin.find(params[:id])
  end
end