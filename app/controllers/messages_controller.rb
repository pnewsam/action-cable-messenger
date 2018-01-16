class MessagesController < ApplicationController
  def create
    Message.create(message_params)
  end
private
  def message_params
    params.require(:message).permit(:text, :user_id, :chatroom_id)
  end
end