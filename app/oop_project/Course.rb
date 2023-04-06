# require 'bcrypt'

# my_password = BCrypt::Password.create("password1")
# #=> "$2a$12$K0ByB.6YI2/OYrB4fQOYLe6Tv0datUVf6VZ/2Jzwm879BW5K1cHey"
# puts my_password
# puts my_password.version              #=> "2a"
# puts my_password.cost                 #=> 12
# puts my_password == "password1"     #=> true
# puts my_password == "not my password" #=> false


# puts "new password dcrypt"

# my_password = BCrypt::Password.new("$2a$12$K0ByB.6YI2/OYrB4fQOYLe6Tv0datUVf6VZ/2Jzwm879BW5K1cHey")
# puts my_password
# if my_password == "my password" 
#     puts "True"
# else
#     puts "invalid password"
# end

# def create_hash_digest(password)
#     BCrypt::Password.create(password)

# end

# new_password = create_hash_digest("abubakar")
# puts new_password
# puts new_password == "abubakar"

require 'bcrypt'

users =   [
      {
        username: "ali", password: "password1"
      },
      {
        username: "umer", password: "password2"
      },
      {
        username: "usman", password: "password3"
      },
      {
        username: "hamza", password: "password4"
      },
      {
        username: "hassan", password: "password5"
      }
    ]

    def create_hash_digest(password)
    BCrypt::Password.create(password)

end

def varify_hash_digest(password)
    BCrypt::password.new(password)
end

def secure_user_password(list_of_users)
    list_of_users.each do |user_record|
        user_record[:password] = create_hash_digest(user_record[:password])
    end
    list_of_users
end

 new_users =  secure_user_password(users)
 puts new_users


 def authentication_user(username, password, list_of_users)
    list_of_users.each do |user_record|
        if user_record[:username] == username && varify_hash_digest(user_record[:password]) == password
            return user_record
        end
    end
    "credentials is invalid"
 end

 puts authentication_user("hamza", "password4", new_users)