# frozen_string_literal: true

# Class to perform Math operations
class Baskara
  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  # It returns an array containing the roots of the equation.
  # It can have zero, one or two elements, depending on delta's signal.
  def value
    @value ||= calculate
  end

  def delta
    @delta ||= @b * @b - 4 * @a * @c
  end

  private

  def calculate
    return [] if delta.negative?

    %i[+ -].map { |op| expression(op) }.uniq
  end

  def expression(operator)
    (-@b.send(operator, Math.sqrt(delta))) / (2 * @a)
  end
end
