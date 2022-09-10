require './nameable'

class Decorator < Nameable
  attr_reader :component

  def initialize(component)
    super()
    @component = component
  end

  def correct_name
    @component.correct_name
  end
end

class CapitalizeDecorator < Decorator
  def correct_name
    @component.correct_name.capitalize
  end
end

class TrimmerDecorator < Decorator
  def correct_name
    @component.correct_name[0, 10]
  end
end
