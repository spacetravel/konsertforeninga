class HomeController < ApplicationController

  def index
    @series = Serie.all
    
    @first_concert = Concert.where('show_date >= ?', Time.now).order('show_Date ASC').first

    @second_concert = Concert.where('show_date >= ?', Time.now).order('show_Date ASC').second
  
    @concerts = Concert.where('show_date >= ?', Time.now).order('show_Date ASC')

  respond_to do |format|
    format.html # index.html.erb
    format.xml  { render :xml => @concerts }
    format.json { render :json => @concerts }
  end
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
        @news = NewsBulletin.order('created_at DESC')

  end
  
end
