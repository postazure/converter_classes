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
    if @unit == :celsius
      converted_value  = @value
    elsif @unit == :kelvin
      converted_value = @value - 273.15
    elsif @unit == :fahrenheit
      converted_value = (@value - 32.0)* (5.0/9.0)

    end

    converted_value
  end

  def to_fahrenheit
    if @unit == :fahrenheit
      converted_value = @value
    elsif @unit == :celsius
      converted_value = @value *(9.0/5.0) +32.0
    elsif @unit == :kelvin
      converted_value = (@value- 273.15) *(9.0/5.0) +32.0

    end

    converted_value
  end

  def to_kelvin
    if @unit == :kelvin
      converted_value = @value
    elsif @unit == :celsius
      converted_value = @value + 273.15
    elsif @unit == :fahrenheit
      converted_value = (@value-32.0)/1.8 +273.15
    end

    converted_value
  end
end
