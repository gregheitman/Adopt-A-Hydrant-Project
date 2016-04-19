class RequestownershipsController < ApplicationController
  respond_to :json

  def create
    @reminder = Reminder.new(requestownership_params)
    @reminder.from_user = current_user
    if @reminder.save
      ThingMailer.requestownership(@reminder.thing).deliver
      @reminder.update_attribute(:sent, true)
      render(json: @reminder)
    else
      render(json: {errors: @reminder.errors}, status: 500)
    end
  end

private

  def requestownership_params
    params.require(:requestownerships).permit(:thing_id, :to_user_id)
  end
end
