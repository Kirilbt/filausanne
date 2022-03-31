class EatsController < ApplicationController
  before_action :set_eat, only: [:show]
  before_action :must_be_admin, only: [:edit, :update]

  def index
    @eats = Service.eats.all
  end

  def show
  end

  def edit
    @eat = Eat.find(params[:id])
  end

  def update
    @eat = Eat.find(params[:id])
    @eat.update(eat_params)

    redirect_to eat_path(@eat)
  end

  private

  def eat_params
    params.require(:eat).permit(:name, :description, :address, :phone_number, :website, :price, :capacity)
  end

  def set_eat
    @eat = Eat.find(params[:id])
  end

  def must_be_admin
    unless current_user && current_user.admin?
      redirect_to root_path, notice: "You must be an admin to edit the details" # TO TRANSLATE
    end
  end
end
