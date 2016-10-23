User.destroy_all
u1 = User.create ({
:first_name => "Arpan",
:last_name => "Bhalla",
:email => "arpanbhalla@gmail.com",
:password => "chicken",
:password_confirmation => "chicken",
:mobile => "0435479576",
:address => "50 Motilal nehru Nagar Bhilai"
})

u2 = User.create ({
:first_name => "Andrew",
:last_name => "Knight",
:email => "andrewk@gmail.com",
:password => "chicken",
:password_confirmation => "chicken",
:mobile => "0435470576",
:address => "General Assembly, Sydney 2000"
})
p "User count: #{User.count}"


Animal.destroy_all
a1 = Animal.create ({
  :species => "Rabbit" ,
  :breed => "British Giant",
  :sex => "Male",
  :dob => "03/09/2000" ,
  :images => ['pgy4zfjqpbz6gnaxaeml','h90b2zfgid6neniwwmcv'],
  :description => "large size, long broad body, solid and firm condition, broad head, erect ears and bold eyes. Coat: 1.9 to 2.54cms (¾ to 1 inch) in length, thick and very dense, medium texture (not harsh or soft).Colour: in OZ - brown grey (agouti) & opal – overseas white, dark steel grey & blue. Minimum Adult weight: bucks 5.670 kgs (12 ½ lbs). Does 6.123 kgs (13 ½ lbs).
",
  :price => "$300.00"
  })

  a2 = Animal.create ({
    :species => "Dog" ,
    :breed => "Labrador",
    :sex => "Female",
    :dob => "03/09/2005" ,
    :images => ['qvb6krp39obtcslhbkgl','d0oimvnhlkzslw1oxl0a'],
    :description => "Labrador Retriever
    The Labrador Retriever was bred to be both a friendly companion and a useful working dog breed.Good with small Kids",
    :price => "$100.00"
    })

p  "Total animals :#{Animal.count}"

u1.animals << a1
u2.animals << a2
