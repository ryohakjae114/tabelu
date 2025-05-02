class MealPlanSubscribe < ApplicationRecord
  belongs_to :user
  belongs_to :meal_plan

  validates :user_id, uniqueness: true
end
