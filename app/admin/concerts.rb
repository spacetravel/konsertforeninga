ActiveAdmin.register Concert do
  filter :title
  filter :desc 
     
  menu :label => "Konserter", :priority => 11
  
  config.per_page = 20
  config.comments = false

  index do
    column "Navn", :title do |concert|
      link_to concert.title, edit_admin_concert_path(concert)
    end

    column "Pris", :price do |concert|
      number_to_currency concert.price
    end
    column "Bilde", :photo do |concert|
      image_tag concert.photo.url(:thumb)
    end
    
    column "Konsertsted", :venue
    
    column "Dato", :show_date

    column "Tidspunkt", :show_time
  
    column "Opprettet", :created_at, :sortable => :created_at do |concert|
      (time_ago_in_words concert.created_at) + " siden"
    end
    default_actions
  end
  
  form do |f|
    f.inputs "Detaljer" do
      f.input :serie, :label => "Konsertserie"
      f.input :title, :label => "Tittel"
      f.input :venue, :label => "Konsertsted"
      f.input :show_date, :label => "Dato", :as => :datepicker
  
      f.input :show_time, :label => "Tidspunkt"
            
            
      f.input :price, :label => "Pris"
      f.input :photo, :as => :file, :input_html => { :multipart => true }, :label => "Bilde", :hint => f.template.image_tag(f.object.photo.url(:medium))
      f.input :short_desc, :label => "Ingress"
      f.input :desc, :class => "tinymce", :label => "Tekst",
    end
    
    f.buttons
  end
end
