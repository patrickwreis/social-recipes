class Recipe < ApplicationRecord
  validates :name, :cuisine, :food_type, :portion, :preparation_time,
            :difficulty, :ingredient, :steps, presence: true
end
