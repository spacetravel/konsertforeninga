ActiveAdmin.register Venue do

  actions :all, :except => [:show]
   
  config.filters = false
  config.comments = false
  
  menu :label => "Spillesteder", :priority => 14
  
  index do                            
    column "Navn", :name do |venue|
      link_to venue.name, edit_admin_venue_path(venue)
    end             
    column "Nettadresse", :link
    column "Beskrivelse", :desc
    default_actions                   
  end
  
  form do |f|
    f.inputs "Detaljer" do
      f.input :name, :label => "Navn"
      f.input :link, :label => "Lenke"
      f.input :desc, :label => "Beskrivelse"
    end
    
    f.buttons
  end

end
