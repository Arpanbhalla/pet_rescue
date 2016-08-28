User.destroy_all
u1 = User.create :name => "Craig", :email => "craigsy@ga.co", :password => "chicken", :password_confirmation => "chicken",:image =>"http://vignette3.wikia.nocookie.net/rambo/images/e/ea/RamboBoat.jpeg/revision/latest/scale-to-width-down/670?cb=20120815000645"
u2 = User.create :name => "Jonesy", :email => "jonesy@ga.co", :password => "chicken", :password_confirmation => "chicken",:image =>"https://si.wsj.net/public/resources/images/BN-JB749_ARNOLD_12S_20150624123907.jpg"
u3 = User.create :name => "Badger", :email => "badger@ga.co", :password => "chicken", :password_confirmation => "chicken",:image => "http://cdn2.bigcommerce.com/server4900/364bb/products/111319/images/78053/286329__96524.1342527721.380.500.jpg?c=2"
p "User count: #{User.all.count}"
