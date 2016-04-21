# Name: Greg Heitman
# Course: CSC 415-01
# Semester: Spring 2016
# Instructor: Dr. Pulimood
# Project name: Adopt-A-Hydrant
# Description: An open source application where users can claim responsibility for shoveling
#              a fire hydrant in the city of Boston when it snows 
# Filename: "app/controllers/requestownerships_controller.rb" 
# Description: This is the controller file for requestownerships. It defines parameters, and it also calls
#              the "ThingMailer" function that works with "json" to render the custom message being emailed to a user
#              once they click the "Request Ownership" button on a specific hydrant.
# Last modified on: 4/18/16

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
