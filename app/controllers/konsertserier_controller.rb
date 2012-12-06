class KonsertserierController < ApplicationController

  def index
    @series = Serie.order('created_at ASC')
  end
  
  def show
    @serie = Serie.find(params[:id])
    @konserter = Concert.where("serie_id = ?",params[:id]).order('show_date DESC')
  end
end
