class Alligator < ApplicationRecord
  def == other
    other.is_a?(Alligator) && other.name == name
  end
end
