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
:email => "andrewk@gmil.com",
:password => "chicken",
:password_confirmation => "chicken",
:mobile => "0435470576"
})
p "User count: #{User.all.count}"



Comment.destroy_all
