User.destroy_all
u1 = User.create ({
:first_name => "Arpan",
:last_name => "Bhalla",
:email => "arpanbhalla@gmail.com",
:password => "chicken",
:password_confirmation => "chicken",
:image =>"http://vignette3.wikia.nocookie.net/rambo/images/e/ea/RamboBoat.jpeg/revision/latest/scale-to-width-down/670?cb=20120815000645",
:mobile => "0435479576"
})

u2 = User.create ({
:first_name => "Andrew",
:last_name => "Knight",
:email => "andrewk@gmil.com",
:password => "chicken",
:password_confirmation => "chicken",
:image =>"http://i.imgur.com/WQbyiOA.png",
:mobile => "0435470576"
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
:price => "$300.00"
  })

a2 = Animal.create ({
:species => "Cat",
:breed => "NZ Cat",
:sex => "Male",
:images => "http://d39kbiy71leyho.cloudfront.net/wp-content/uploads/2016/05/09170020/cats-politics-TN.jpg",
:dob => "03/09/2084",
:description => "A male Cat which is pure bred and microchipped and desexed, very good with small kids",
:price => "$350.00"

  })
p "Animal count #{Animal.all.count}"

u1.animals << a1
u1.animals << a2

Comment.destroy_all
c1 = Comment.create ({
  :body => "The dog is too old to buy",
  :animal_id => a1.id,
  :user_id => u2.id
  })

c2 = Comment.create ({
  :body => "The cat is too naughty",
  :animal_id => a2.id,
  :user_id => u1.id
  })
