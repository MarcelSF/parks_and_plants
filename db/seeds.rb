puts "Cleaning our db..."


Garden.destroy_all


new_garden = Garden.create(name: "My little garden", banner_url: 'https://images.unsplash.com/photo-1585320806297-9794b3e4eeae?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1489&q=80')


puts "#{new_garden.name} was created"
