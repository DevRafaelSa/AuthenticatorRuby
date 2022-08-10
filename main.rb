users = [
          { username: "Rafael", password: "password1" },
          { username: "João", password: "password2" },
          { username: "Rafaela", password: "password3"},
          { username: "Mariana", password: "password4"},
          { username: "Pedro", password: "password5"},
        ]

def auth_user(username, password, list_of_users)
  list_of_users.each do |user_record|
      if user_record[:username] == username && user_record[:password] == password
        return user_record
      end
    end
    "Credential are not correct" #em ruby o ultimo return é implicito
end


puts "Welcome to the authenticator"
25.times {print "-"}
puts
puts "This program will take input from the user and compare password"
puts "If password is correct, you will get back the user object"


# Hash, Array, Branching, While loops and designing program execution flow
#passo 1: a entrada do programa para verificar username e senha precsa funcionar... um while loop ajuda.
attempts = 1
while attempts < 4
  print "Username: "
  username = gets.chomp
  print "Password: "
  password = gets.chomp
  authentication = auth_user(username, password, users)
  puts authentication
  puts "Press n to quit or any ohter key to continue..."
  input = gets.chomp.downcase
  break if input == "n"
  attempts += 1
end
puts "You have exceeded the numbe of attempts" if attempts == 4
