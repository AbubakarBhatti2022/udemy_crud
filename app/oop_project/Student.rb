require_relative 'crud'

class  Students 

    include Crud
    
    attr_accessor :first_name, :last_name, :email, :username, :password


    def initialize(firstname, lastname, email, username, password)

    @first_name = firstname
    @last_name = lastname
    @email = email
    @username = username
    @password = password

    end
    
    
    def to_s
        "first Name: #{@first_name}, last Name: #{@last_name}, Email: #{@email}, userName: #{@username}, password: #{@password} "
    end
    
    
end


record1 = Students.new("ali", "hussain", "abc@gmail.com", "alihussain", "123456")
record2 = Students.new("ahmad", "hassan", "def@gmail.com", "ahmadhussain", "654321")

new_hash_pass = record2.create_hash_digest(record2.password)
p
puts new_hash_pass