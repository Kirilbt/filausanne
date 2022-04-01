class RequestsController < ApplicationController

  def index
    if current_user.admin?
      @requests = Request.available
    else
      @requests = Request.where(user_id: current_user)
    end
  end

  def new
    @sleep = Sleep.find(params[:sleep_id])
    @request = Request.new
  end

  def create
    @request = Request.new(request_params)
    @sleep = Sleep.find(params[:sleep_id])
    @request.service = @sleep
    @request.user = current_user
    @request.status = "Pending"
    if @request.save
      redirect_to requests_path
    else
      render 'requests/new'
    end
  end

  def edit
    @request = Request.find(params[:id])
  end

  def update
    @request = Request.find(params[:id])
    if @request.update(request_params)
      @request.status = "Pending"
      redirect_to requests_path
    else
      render 'requests/edit'
    end
  end

  private

  def request_params
    params.require(:request).permit(:start_date, :end_date, :sleep_id)
  end
end
