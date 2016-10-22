User.destroy_all
u1 = User.create ({
:first_name => "Arpan",
:last_name => "Bhalla",
:email => "arpanbhalla@gmail.com",
:password => "chicken",
:password_confirmation => "chicken",

:mobile => "0435479576"
})

u2 = User.create ({
:first_name => "Andrew",
:last_name => "Knight",
:email => "andrewk@gmail.com",
:password => "chicken",
:password_confirmation => "chicken",
:mobile => "0435470576"
})
p "User count: #{User.count}"


Animal.destroy_all
a1 = Animal.create ({
  :species => "Dog" ,
  :breed => "Labrador",
  :sex => "Male",
  :dob => "03/09/2000" ,
  :description => "A male labrdor, who is fully vaccinated and ready to go home. Selling due to moving away. Good with small Kids",
  :price => "$300.00"
  })

  a2 = Animal.create ({
    :species => "Dog" ,
    :breed => "Border Collie",
    :sex => "Female",
    :dob => "03/09/2005" ,
    :description => "A male Bordercollie, who is fully vaccinated and ready to go home. Selling due to moving away. Good with small Kids",
    :price => "$100.00"
    })

p  "Total animals :#{Animal.count}"

u1.animals << a1
u2.animals << a2
