class Computer
  def initialize(model, description)
    @model = model
    @description = description
  end

  def set_model=(model)
    @model = model
  end

  def get_model
    return @model
  end

  def set_description=(description)
    @description = description
  end

  def get_description
    return @description
  end
end

class Laptop < Computer
  def weight(weight)
    @weight = weight
  end

  def screen_size(screen_size)
    @screen_size = screen_size
  end
end

class Desktop < Computer
  def monitor(monitor)
    @monitor = monitor
  end
end

dans_computer = Desktop.new('ASUS', 'Custom built machine with an ASUS motherboard.')
jens_computer = Laptop.new('Macbook Air', '15" 2015 Macbook Air')
desktop_monitor = dans_computer.monitor("Samsung S27E390")
laptop_screen = jens_computer.screen_size('15"')
laptop_weight = jens_computer.weight('2.96lbs.')

puts "Dan has a #{dans_computer.get_model} computer which is #{dans_computer.get_description}, it has a #{desktop_monitor} monitor."

puts "Jen has a #{jens_computer.get_model} computer which is a #{jens_computer.get_description}, it has a #{laptop_screen} screen and weights #{laptop_weight}."
