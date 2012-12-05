class KonserterController < ApplicationController
  def index
    @konserter = Concert.where("show_date >= ?", Time.now).order('show_date ASC')
  end

  def old
    @konserter = Concert.where("show_date < ?", Time.now).order('show_date DESC')
  end

  def show
    @konsert = Concert.find(params[:id])
  end
  
end
