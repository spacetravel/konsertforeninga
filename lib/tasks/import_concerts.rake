# encoding: utf-8
namespace :kf do
  task :import_concerts => :environment do

    require 'nokogiri'
    require 'open-uri'

    url = "http://konsertforeninga.herokuapp.com/concerts_final.xml"
  
    doc = Nokogiri::XML(open(url))

      concerts = doc.xpath('//concert')

      concerts.each do |concert|
        title = concert.at('title').text
        desc = concert.at('desc').text
        time = concert.at('show-time').text
        date = concert.at('show-date').text
        serie = concert.at('serie-id').text
        venue = concert.at('venue-id').text
        price = concert.at('price').text
        photo_file_size = concert.at('photo-file-size').text
        photo_file_name = concert.at('photo-file-name').text
        photo_content_type = concert.at('photo-content-type').text
        

         @data = Concert.new(
           :title            => title,
           :desc             => desc,
           :serie_id         => serie,
           :venue_id         => venue,
           :show_date        => date,
           :price            => price,
           :show_time        => time,
           :photo_file_size  => photo_file_size,
           :photo_file_name  => photo_file_name,
           :photo_content_type => photo_content_type)
           
         if @data.save!
              puts "Success"
         else
            puts "Didn't work"
         end
      end
  end
end