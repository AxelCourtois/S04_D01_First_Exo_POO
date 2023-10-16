require 'pry'

class User
  attr_accessor :email, :age
  @@all_users = []



  def initialize(email, age)
    @email = email.to_s
    @age = age.to_i
    @@all_users << self
  end



  def self.all
    return @@all_users
  end




  def self.find_by_email(email)
    user = @@all_users.find {|user| user.email == email}
      if user
        puts "Voici l'âge du User trouvé : #{user.age}"
      else  
        puts "Aucun User trouvé avec cette email : #{email}"
      end
  end
end