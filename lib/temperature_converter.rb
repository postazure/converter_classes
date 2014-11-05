class TemperatureConverter
  def initialize unit, value
    @unit = unit
    @value = value
  end

  def unit
    @unit
  end

  def value
    @value
  end

  def to_celsius
    {
      celsius: @value,
      kelvin: (@value-273.15),
      fahrenheit: ((@value - 32.0)* (5.0/9.0))
    }[@unit]
  end

  def to_fahrenheit
    {
      celsius: @value *(9.0/5.0) +32.0,
      kelvin: (@value- 273.15) *(9.0/5.0) +32.0,
      fahrenheit: @value
    }[@unit]
  end

  def to_kelvin
    {
      celsius: @value + 273.15,
      kelvin: @value,
      fahrenheit: (@value-32.0)/1.8 +273.15
    }[@unit]
  end

  #-----------Class Methods
  def self.to_celsius unit, value
    {
      celsius: value,
      kelvin: (value-273.15),
      fahrenheit: ((value - 32.0)* (5.0/9.0))
    }[unit]
  end

  def self.to_fahrenheit unit,value
    {
      celsius: value *(9.0/5.0) +32.0,
      kelvin: (value- 273.15) *(9.0/5.0) +32.0,
      fahrenheit: value
    }[unit]
  end

  def self.to_kelvin unit,value
    {
      celsius: value + 273.15,
      kelvin: value,
      fahrenheit: (value-32.0)/1.8 +273.15
    }[unit]
  end
end
