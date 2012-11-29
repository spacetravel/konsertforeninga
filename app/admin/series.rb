ActiveAdmin.register Serie do
  
  actions :all, :except => [:show]
  
  config.filters = false
  config.comments = false
  
  menu :label => "Konsertserier", :priority => 13
  
  index do
    column "Navn", :name do |serie|
      link_to serie.name, edit_admin_series_path(serie)
    end
    column "Opprettet", :created_at, :sortable => :created_at do |concert|
      (time_ago_in_words serie.created_at) + " siden"
    end
    column "Bilde", :photo do |serie|
      image_tag serie.photo.url(:medium)
    end
    
    default_actions
  end
  
  form do |f|
    f.inputs "Detaljer" do
      f.input :name, :label => "Navn"
      f.input :desc, :label => "Beskrivelse"
      f.input :photo, :as => :file, :input_html => { :multipart => true }, :label => "Bilde", :hint => f.template.image_tag(f.object.photo.url(:medium))
      
    end
    
    f.buttons
  end
  
end
