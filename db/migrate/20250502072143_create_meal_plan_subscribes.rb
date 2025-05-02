class CreateMealPlanSubscribes < ActiveRecord::Migration[8.0]
  def change
    create_table :meal_plan_subscribes do |t|
      t.references :user, type: :uuid, null: false, foreign_key: true, index: { unique: true }
      t.references :meal_plan, null: false, foreign_key: true

      t.timestamps
    end
  end
end
