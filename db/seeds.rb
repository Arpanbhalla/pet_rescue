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
