ActiveAdmin.register NewsBulletin do

  actions :all, :except => [:show]

  filter :title
  filter :content
  
  
  menu :label => "Nyheter", :priority => 12
  config.comments = false
  
  index do
    column "Bilde", :photo do |news|
      image_tag news.photo.url(:thumb)
    end
    column "Overskrift", :title do |news|
      link_to news.title, edit_admin_news_bulletin_path(news)
    end
    column "Opprettet", :created_at, :sortable => :created_at do |concert|
      (time_ago_in_words concert.created_at) + " siden"
    end
    default_actions
  end
  
  form do |f|
    f.inputs "Detaljer" do
      f.input :serie, :label => "Konsertserie"
      f.input :title, :label => "Overskrift"
      f.input :photo, :as => :file, :input_html => { :multipart => true }, :label => "Bilde", :hint => f.template.image_tag(f.object.photo.url(:medium))
      f.input :content, :label => "Innhold"
      
    end
    
    f.buttons
  end
end
