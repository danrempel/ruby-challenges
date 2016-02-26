class Pet
  def initialize(pet_name, owner_name)
    @name = pet_name
    @owner_name = owner_name
  end

  def set_name=(pet_name)
    @name = pet_name
  end

  def get_name
    return @name
  end 

  def set_owner=(owner_name)
    @owner_name = owner_name
  end      

  def get_owner
    return @owner_name
  end
end

class Ferret < Pet
  def talk
    return "squeeeeee"
  end          
end
 
class Chincilla < Pet
  def talk
    return "eeeep"
  end           
end
 
class Parrot < Pet
  def talk
    return "squaaawk"
  end
end
 
my_ferret = Ferret.new("Fredo", "Adda")
ferretname = my_ferret.get_name
 
my_parrot = Chincilla.new("Budgie", "Adda")
parrotname = my_parrot.get_name
 
my_chincilla = Parrot.new("Dali", "Adda")
chincillaname = my_chincilla.get_name
 
puts "#{ferretname} says #{my_ferret.talk}, 
#{parrotname} says #{my_parrot.talk}, 
#and #{chincillaname} says #{my_chincilla.talk}."

puts my_ferret.inspect
puts my_parrot.inspect
puts my_chincilla.inspect