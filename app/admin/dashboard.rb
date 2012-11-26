ActiveAdmin::Dashboards.build do
  
  
  section "Siste konserter" do
    table_for Concert.order("created_at desc").limit(5) do
      column "Tittel", :title do |concert|
        link_to concert.title, edit_admin_concert_path(concert)
      end
      column "Konsertsted", :venue
      column "Konsertdato", :show_date
      column "Opprettet", :created_at, :sortable => :created_at do |concert|
        (time_ago_in_words concert.created_at) + " siden"
      end
    end
    strong { link_to "Se alle konsertene", admin_concerts_path }
  end


  section "Siste Nyheter" do
    table_for NewsBulletin.order("created_at desc").limit(5) do
      column "Overskrift", :title do |news|
        link_to news.title, edit_admin_news_bulletin_path(news)
      end
      column "Opprettet", :created_at, :sortable => :created_at do |news|
        (time_ago_in_words news.created_at) + " siden"
      end
    end
    strong { link_to "Se alle nyhetene", admin_news_bulletins_path }
  end
end