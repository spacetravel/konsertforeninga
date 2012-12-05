namespace :kf do
  task :create_users => :environment do
      AdminUser.create!(:email => 'admin@konsertforeninga.no', :password => 'kod3Boks', :password_confirmation => 'kod3Boks')

      AdminUser.create!(:email => 'oyvindd@gmail.com', :password => 'fisk3Boll', :password_confirmation => 'fisk3Boll')

      AdminUser.create!(:email => 'stale.liavik@gmail.com', :password => 'grisegutt', :password_confirmation => 'grisegutt')

      AdminUser.create!(:email => 'geir.lindahl@gmail.com', :password => 'collage', :password_confirmation => 'collage')

      AdminUser.create!(:email => 'andreas@konsertforeninga.no', :password => 'gammalpunk', :password_confirmation => 'gammalpunk')

  end
end