# encoding: utf-8
namespace :kf do
  task :create_series => :environment do
    
    # Create default series

    Serie.create!(:name => 'Blow Out!', :desc => 'Konsertserien Blow Out! er et samarbeid mellom Konsertforeninga og jazzmusikere i Oslo. Blow Out! presenterer improvisert musikk fra inn- og utland annenhver tirsdag året rundt.', :photo_file_name => 'BLOWOUT_LOGO_1.jpg', :photo_content_type => 'image/jpeg', :photo_file_size => '17002')

    Serie.create!(:name => 'FemmeBrutal!', :desc => 'FemmeBrutal et feministisk klubbkonsept som kombinerer musikk og politikk ved å fremme feminister og kvinner på scenen!', :photo_file_name => 'femmebrutal.jpg', :photo_content_type => 'image/jpeg', :photo_file_size => '49198')

    Serie.create!(:name => 'Blårollinger', :desc => 'Konsertserie for rockerunger og foreldrene deres. Konsertene holdes på formiddagen hver søndag hele høst- og vårsemesteret.', :photo_file_name => 'blaarollinger.jpg', :photo_content_type => 'image/jpeg', :photo_file_size => '29204')

    Serie.create!(:name => 'Death Jazz', :desc => 'Konsertserien Death Jazz tar sikte på å fremheve ytterkantene av jazzsjangeren, der hvor jazzen dør og en ny musikk oppstår.', :photo_file_name => 'deathjazz.jpg', :photo_content_type => 'image/jpeg', :photo_file_size => '35897')

    Serie.create!(:name => 'Gutvik Ukentlig', :desc => 'Sommerserie for improvisert musikk på små rare steder rundt om i Oslo.', :photo_file_name => 'gutvikukentlig.jpg', :photo_content_type => 'image/jpeg', :photo_file_size => '15807')

    Serie.create!(:name => 'TaximPro;', :desc => 'Assorterte improviserte tilstelninger på Taxi Take Away.', :photo_file_name => 'taximpro.jpg', :photo_content_type => 'image/jpeg', :photo_file_size => '52793')

    Serie.create!(:name => 'CHK', :desc => 'Konsertserie med fokus på kvinnelige utøvere.', :photo_file_name => 'chk.jpg', :photo_content_type => 'image/jpeg', :photo_file_size => '43422')

    Serie.create!(:name => 'Andre', :desc => 'Konserter utenfor seriene', :photo_file_name => 'konsertforeninga-logo.png', :photo_content_type => 'image/png', :photo_file_size => '25495')

    Serie.create!(:name => 'Ladyfest', :desc => 'Konserter av og med kvinner.', :photo_file_name => 'ladyfest.png', :photo_content_type => 'image/png', :photo_file_size => '97863')

  end  
end