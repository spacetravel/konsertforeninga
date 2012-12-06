class KonsertserierController < ApplicationController

  def index
    @series = Serie.order('created_at ASC')
  end
  
  def show
    @serie = Serie.find(params[:id])
    @konserter_past = Concert.where("show_date < ? AND serie_id = ?",Time.now, params[:id]).order('show_date DESC')

    @konserter_future = Concert.where("show_date >= ? AND serie_id = ?",Time.now, params[:id]).order('show_date DESC')
  end
end
