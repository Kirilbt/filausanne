class CaresController < ApplicationController
  before_action :set_care, only: [:show]
  before_action :must_be_admin, only: [:edit, :update]

  def index
    @cares = Service.cares.all
  end

  def show
  end

  def edit
    @care = Care.find(params[:id])
  end

  def update
    @care = Care.find(params[:id])
    @care.update(care_params)

    redirect_to care_path(@care)
  end

  private

  def care_params
    params.require(:care).permit(:name, :description, :address, :phone_number, :website, :price, :capacity)
  end

  def set_care
    @care = Care.find(params[:id])
  end

  def must_be_admin
    unless current_user && current_user.admin?
      redirect_to root_path, notice: "You must be an admin to edit the details" # TO TRANSLATE
    end
  end
end
