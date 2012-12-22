puts 'CREATING ROLES'
Role.create([
  { :name => 'admin' }, 
  { :name => 'user' }
], :without_protection => true)
puts 'SETTING UP DEFAULT USER LOGIN'
user = User.create! :email => 'user@example.com', :password => 'please', :password_confirmation => 'please'
puts 'New user created: ' << user.email
user2 = User.create! :email => 'user2@example.com', :password => 'please', :password_confirmation => 'please'
puts 'New user created: ' << user2.email
user.add_role :admin
user2.add_role :user