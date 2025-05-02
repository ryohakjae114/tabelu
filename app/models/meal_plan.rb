class MealPlan < ApplicationRecord
  validates :name, presence: true, length: { maximum: 20 }
  validates :description, presence: true, length: { maximum: 200 }

  has_many :meal_plan_subscribes, dependent: :destroy
end
