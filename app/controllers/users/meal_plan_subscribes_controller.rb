class Users::MealPlanSubscribesController < ApplicationController
  before_action :set_meal_plan_subscribe, only: %i[edit update]

  def create
    @meal_subscribe = current_user.build_meal_plan_subscribe(meal_plan_id: params[:meal_plan_id])

    if @meal_subscribe.save!
      redirect_to edit_meal_plan_subscribe_path, notice: t('meal_plan_subscribe.created')
    else
      render :new, alert: t('meal_plan_subscribe.cant_created')
    end
  end

  def edit
    @meal_subscribe ||= current_user.build_meal_plan
  end

  def update
    @meal_subscribe = current_user.meal_plan_subscribe

    if @meal_subscribe.update!(meal_plan_id: params[:meal_plan_id])
      redirect_to edit_meal_plan_subscribe_path, notice: t('meal_plan_subscribe.updated')
    else
      render :new, alert: t('meal_plan_subscribe.cant_updated')
    end
  end

  def set_meal_plan_subscribe
    @meal_subscribe = current_user.meal_plan_subscribe
  end
end
