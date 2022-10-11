class PostsController < ApplicationController
  def show; end

  def new
    @notification = Notification.new
  end

  def create
    @notification = notification.new(notification_params)
    if @notification.save
      redirect_to notification_path(@notification)
    else
      redirect_to root_path
    end
  end

  private

  def post_params
    params.require(:notification).permit(:content, :title, :user_id)
  end
end
