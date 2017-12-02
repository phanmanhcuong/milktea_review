class NotisController < ApplicationController
  before_action :authenticate_user!

  def update
    Noti.where(user_id: params[:id]).each do |noti|
      noti.state = 1
      noti.save
    end
  end
end
