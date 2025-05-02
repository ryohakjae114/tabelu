class CreateMealPlanSubscribes < ActiveRecord::Migration[8.0]
  def change
    create_table :meal_plan_subscribes do |t|
      t.references :user, null: false, foreign_key: true
      t.references :meal_plan, null: false, foreign_key: true

      t.timestamps
    end
  end
  add_index :meal_plan_subscribes, :user_id, unique: true
end
