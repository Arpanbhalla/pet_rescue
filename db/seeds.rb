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


u3 = User.create ({
:first_name => "Pratima",
:last_name => "singh",
:email => "pratimasingh@gmail.com",
:password => "chicken",
:password_confirmation => "chicken",
:mobile => "0435470576"
})


u4 = User.create ({
:first_name => "Aryana",
:last_name => "Bhalla",
:email => "aryana@gmail.com",
:password => "chicken",
:password_confirmation => "chicken",
:mobile => "0435470576"
})
p "User count: #{User.count}"


Animal.destroy_all
a1 = Animal.create ({
  :species => "Rabbit" ,
  :breed => "British Giant",
  :sex => "Male",
  :dob => "03/09/2000" ,
  :images => ['http://res.cloudinary.com/dbgvixfy4/image/upload/v1477180184/pgy4zfjqpbz6gnaxaeml.jpg','http://res.cloudinary.com/dbgvixfy4/image/upload/v1477180161/h90b2zfgid6neniwwmcv.jpg'],
  :description => "large size, long broad body, solid and firm condition, broad head, erect ears and bold eyes. Coat: 1.9 to 2.54cms (¾ to 1 inch) in length, thick and very dense, medium texture (not harsh or soft).Colour: in OZ - brown grey (agouti) & opal – overseas white, dark steel grey & blue. Minimum Adult weight: bucks 5.670 kgs (12 ½ lbs). Does 6.123 kgs (13 ½ lbs).
",
  :price => "$300.00",
  :address => "61 Pindari Drive South Penrith"

  })

  a2 = Animal.create ({
    :species => "Dog" ,
    :breed => "Labrador",
    :sex => "Female",
    :dob => "03/09/2005" ,
    :images => ['http://res.cloudinary.com/dbgvixfy4/image/upload/v1477130238/qvb6krp39obtcslhbkgl.jpg','http://res.cloudinary.com/dbgvixfy4/image/upload/v1477130231/mtbprkze4tkzmamgjgba.jpg'],
    :description => "Labrador Retriever
    The Labrador Retriever was bred to be both a friendly companion and a useful working dog breed.Good with small Kids",
    :price => "$100.00",
    :address => "General Assembly, Sydney 2000"

    })
  a3 = Animal.create ({
    :species => "Horse" ,
    :breed => "Arab horse",
    :sex => "Female",
    :dob => "03/09/2007" ,
    :images => ['http://res.cloudinary.com/dbgvixfy4/image/upload/v1477139227/cxrmikzdvyicnxonypmp.jpg','http://res.cloudinary.com/dbgvixfy4/image/upload/v1477134445/lwyhlarbgs4ptw8lz56v.jpg'],
    :description => "Glenelen Park Sophina 7yo Pure Bred, Registered Arabian Bay Mare 14.3hh (unmeasured) Dam: Mathoura Sophirah Sire: Kevisan Park Regal Promise Gypsy is only offered for sale due to my work/ family commitments. She has been shown with much success,Trail Rides and she is easy to handle ,float.",
    :price => "$5000.00",
    :address => "1/12 Blaxland Avenue Penrith"
    })

    a4 = Animal.create ({
      :species => "Cat" ,
      :breed => "Bengal Cats",
      :sex => "Male",
      :dob => "03/09/2013" ,
      :images => ['http://res.cloudinary.com/dbgvixfy4/image/upload/v1477372338/thul-43c319fb-cc3a-56b5-afdc-f3544a682986_pwzsl6.jpg','http://res.cloudinary.com/dbgvixfy4/image/upload/v1477372339/cat-breed-landing-hero_shsa9t.jpg'],
      :description => "I am a Registered Breeder with Cats NSW and I have a Beautiful Lilac Point Ragdoll Cat that is looking for his new forever home

      He is almost 3 years old and still quite playful. His new home we would like to see him go to a family with children as I know he would love the interaction…..",
      :price => "$500.00",
      :address => "24 fernleaf crescent Beaumont hills"
      })
      a5 = Animal.create ({
        :species => "Snamke" ,
        :breed => "Python",
        :sex => "Male",
        :dob => "03/09/2011" ,
        :images => ['http://res.cloudinary.com/dbgvixfy4/image/upload/v1477372341/buying-a-ball-python_ryry7v.jpg','http://res.cloudinary.com/dbgvixfy4/image/upload/v1477372341/5837729742_8e1fb48c7b_z_aqmyck.jpg'],
        :description => "We offer exotic reptiles for sale online at absolute rock-bottom prices, which means we make these fascinating animals available to you affordably as pets, or even to start your own reptile breeding project. We are reptile enthusiasts who believe captive breeding is integral to the future of the market, as it not only helps protect wild herp populations, but is an incredibly rewarding experience that tends to intensify one's passion for these amazing prehistoric creatures.",
        :price => "$300.00",
        :address => "24 fernleaf crescent Beaumont hills"
        })

p  "Total animals :#{Animal.count}"

u1.animals << a1
u2.animals << a2
u3.animals << a3
u4.animals << a4
u4.animals << a5 
