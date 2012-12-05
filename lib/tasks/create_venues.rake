# encoding: utf-8
namespace :kf do
  task :create_venues => :environment do
    
    # Create default venues

    Venue.create!(:name => 'Café Mir', :link => 'http://www.cafemir.no/', :desc => 'Brun musikkcafé med hyppige konserter i mange sjangere.')
     
    Venue.create!(:name => 'Café Mono', :link => 'http://www.cafemono.no/', :desc => 'Populært vannhull i sentrum med konserter av alle slag.')

    Venue.create!(:name => 'Parkteateret', :link => 'http://www.parkteateret.no', :desc => 'Konsertsted midt på Grünerløkka.')

    Venue.create!(:name => 'Blitz', :link => 'http://www.blitz.no', :desc => 'Autonomt ungdomshus med café- og konsertdrift')

    Venue.create!(:name => 'Tamara Pub', :link => 'http://www.tamara-pub.com/', :desc => 'Liten kunstcafé i Birkelunden på Grünerløkka.')

    Venue.create!(:name => 'Taxi Take Away', :link => 'http://www.taxitakeaway.no', :desc => 'Liten kollektivstyrt bar rett ved Hausmania.')

    Venue.create!(:name => 'Stein & Jord Platebar', :link => 'http://www.steinogjord.no', :desc => 'Kul liten platesjappe i tunnelen ovenfor Rockefeller.')

    Venue.create!(:name => 'Andre steder', :link => 'http://www.konsertforeninga.no', :desc => 'Andre steder Konsertforeninga holder konserter.')
    
    Venue.create!(:name => 'Sound of Mu', :link => 'http://www.soundofmu.no', :desc => 'Liten kunstcafé i bunnen av Markveien')

  end  
end