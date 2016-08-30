User.destroy_all
u1 = User.create ({
:first_name => "Arpan",
:last_name => "Bhalla",
:email => "arpanbhalla@gmil.com",
:password => "chicken",
:password_confirmation => "chicken",
:image =>"http://vignette3.wikia.nocookie.net/rambo/images/e/ea/RamboBoat.jpeg/revision/latest/scale-to-width-down/670?cb=20120815000645",
:mobile => "0435479576"
})
p "User count: #{User.all.count}"

Animal.destroy_all
a1 = Animal.create ({
:species => "Dog",
:breed => "Labrador",
:sex => "Male",
:images => "https://upload.wikimedia.org/wikipedia/commons/8/83/Labrador_retriever_bulaj1.jpg",
:dob => "03/09/1984",
:description => "A male larador which is pure bred and microchipped and desexed, very good with small kids",
:price => "$300.00",
:user_id => 13
  })
p "Animal count #{Animal.all.count}"
