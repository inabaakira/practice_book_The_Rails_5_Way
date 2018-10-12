class Item < ApplicationRecord
  def to_param
    description.parameterize
  end
end
