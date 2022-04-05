class RequestsController < ApplicationController

  def index
    if current_user.admin?
      @requests = Request.all
    else
      @requests = Request.where(user_id: current_user)
    end
  end

  def new
    @sleep = Sleep.find(params[:sleep_id])
    @request = Request.new
  end

  def create
    @request = Request.new
    @sleep = Service.find(params[:request][:service_id])
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
    if params[:commit] == t('request.edit.btn_cancel')
      @request.update(status: "Cancel")
      return redirect_to requests_path
    elsif params[:commit] == t('request.edit.update')
      @sleep = Service.find(params[:request][:service_id])
      @request.service = @sleep
      @request.update(request_params)
      @request.update(status: "Approved")
      TwilioClient.new.send_sms(User.find(@request.user_id).phone_number, t('general.twilio_sms_approved', name: "#{@sleep.name}", start_date: "#{@request.start_date.strftime("%d-%m-%Y")}", end_date: "#{@request.end_date.strftime("%d-%m-%Y")}", address: "#{@sleep.address}"))
      return redirect_to requests_path
    elsif params[:commit] == t('request.edit.refused')
      @request.update(status: "Refused")
      TwilioClient.new.send_sms(User.find(@request.user_id).phone_number, t('general.twilio_sms_refused', date: "#{@request.created_at.strftime("%d-%m-%Y")}"))
      return redirect_to requests_path
    end
    if @request.update(request_params)
      @request.update(status: "Pending")
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
