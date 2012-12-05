namespace :kf do
  task :import_concerts => :environment do

    require 'nokogiri'
    require 'open-uri'

    url = "http://www.konsertforeninga.no/konserter/xml"
    

    doc = Nokogiri::XML(open(url))

      concerts = doc.xpath('//node')

      concerts.each do |concert|
        title = concert.at('title').text
        desc = concert.at('field_konsert_beskrivelse_value').text
        time = concert.at('field_konsert_dato_value_1').text
        date = concert.at('field_konsert_dato_value').text
        serie = concert.at('field_konsert_serie_value').text
        scene = concert.at('field_konsert_scene_nid').text
        price = concert.at('field_konsert_pris_value').text
        
        case serie
          when "Blow Out!"
            serie_id = 1
          when "FemmeBrutal"
            serie_id = 2
          when "Death Jazz"
            serie_id = 4
          when "chk"
            serie_id = 5
          when "Ukentlig"
            serie_id = 6
          else 
            serie_id = 3
        end
        
        case scene
          when "Mir"
            scene_id = 1
          when "Mono"
            scene_id = 2
          when "Taxi Take Away"
            scene_id = 6
          when "Parkteateret"
            scene_id = 3
          when "Blitz"
            scene_id = 4  
          else
            scene_id = 5  
        end
        
#        regex_date = /\d{1,2}\.\d{1,2}\.\d{4}/
#        regex_time = /\d{1,2}\:\d{1,2}/

#        date = datetime[regex_date] # => "02.02.2002"
#        time = datetime[regex_time] 
        
        if price == ""
          price = "TBA"
        end
        
         @data = Concert.new(
           :title            => title,
           :desc             => desc,
           :serie_id         => serie_id,
           :venue_id         => scene_id,
           :show_date        => date,
           :price            => price,
           :show_time        => time,)
           
         if @data.save!
              puts "Success"
         else
            puts "Didn't work"
         end
      end
  end
end