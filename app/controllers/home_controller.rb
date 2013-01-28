class HomeController < ApplicationController

  def index
    @series = Serie.all
    
    @first_concert = Concert.where('show_date >= ?', Time.now).order('show_Date ASC').first

    @second_concert = Concert.where('show_date >= ?', Time.now).order('show_Date ASC').second
  
    @concerts = Concert.where('show_date >= ?', Time.now).order('show_Date ASC')

  respond_to do |format|
    format.html # index.html.erb
    format.xml  { render :xml => @concerts }
    format.json { render :json => {
         :caption => @concerts.collect(&:title),
         :id => @concerts.collect(&:id),
          :image => 
        } 
    }

  render :json => {
  :query => 'e',
  :suggestions => @customers.collect(&:name),
  :data => @customers.collect(&:id)
}
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
