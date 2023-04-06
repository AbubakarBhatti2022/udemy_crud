require_relative 'crud'
 
users = [
          { username: "hassan", password: "password1" },
          { username: "nomi", password: "password2" },
          { username: "umer", password: "password3" },
          { username: "usman", password: "password4" },
          { username: "talha", password: "password5" }
        ]
 
hashed_users = Crud.create_secure_users(users)

puts hashed_users



