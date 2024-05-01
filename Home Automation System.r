class SmartDevice
  attr_accessor :name, :status

  def initialize(name)
    @name = name
    @status = "off"
  end

  def turn_on
    @status = "on"
    puts "#{@name} has been turned on."
  end

  def turn_off
    @status = "off"
    puts "#{@name} has been turned off."
  end
end

class HomeAutomationSystem
  def initialize
    @devices = []
  end

  def add_device(device)
    @devices << device
    puts "#{device.name} has been added to the home automation system."
  end

  def turn_all_on
    @devices.each { |device| device.turn_on }
    puts "All devices have been turned on."
  end

  def turn_all_off
    @devices.each { |device| device.turn_off }
    puts "All devices have been turned off."
  end
end

# Example usage
light = SmartDevice.new("Living Room Light")
ac = SmartDevice.new("Air Conditioner")
tv = SmartDevice.new("Television")

home_automation = HomeAutomationSystem.new
home_automation.add_device(light)
home_automation.add_device(ac)
home_automation.add_device(tv)

home_automation.turn_all_on
home_automation.turn_all_off
