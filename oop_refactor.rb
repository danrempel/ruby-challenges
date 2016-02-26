class Computer
  attr_writer :model, :description
  attr_reader :model, :description
end

class Laptop < Computer
  attr_accessor :weight, :screen_size
end

class Desktop < Computer
  attr_accessor :monitor
end

dans_computer = Desktop.new
dans_computer.model = 'ASUS'
dans_computer.description =  'Custom built machine with an ASUS motherboard.'
dans_computer.monitor = 'Samsung S27E390'

jens_computer = Laptop.new
jens_computer.model = 'Macbook Air'
jens_computer.description =  '15" 2015 Macbook Air'
jens_computer.weight = '2.96lbs'
jens_computer.screen_size = '15"'

puts "Dan has a #{dans_computer.model} computer which is #{dans_computer.description}, it has a #{dans_computer.monitor} monitor."

puts "Jen has a #{jens_computer.model} computer which is a #{jens_computer.description}, it has a #{jens_computer.screen_size} screen and weights #{jens_computer.weight}."
