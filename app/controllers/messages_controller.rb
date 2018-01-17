class MessagesController < ApplicationController
  def create
    message = Message.new(message_params)
    if message.save
      ActionCable.server.broadcast 'sup',
        message: message.text,
        user: message.user.name
      head :ok
    end
  end
private
  def message_params
    params.require(:message).permit(:text, :user_id, :chatroom_id)
  end
end