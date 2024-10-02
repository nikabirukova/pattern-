require 'delegate'

class Engine
  def start
    'Engine started'
  end

  def stop
    'Engine stopped'
  end
end

class Car < SimpleDelegator
  def initialize(engine)
    super(engine)
  end
end

# Використання
engine = Engine.new
car = Car.new(engine)
puts car.start  # Виведе: Engine started
puts car.stop   # Виведе: Engine stopped
