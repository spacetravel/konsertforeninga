class NyheterController < ApplicationController

  def index
    @news = NewsBulletin.order('created_at ASC')

  end
  
  def show
    @nyhet = NewsBulletin.find(params[:id])
  end
end