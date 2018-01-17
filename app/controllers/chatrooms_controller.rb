class ChatroomsController < ApplicationController
  def show
    @chatroom = Chatroom.find(params[:id])
    @messages = @chatroom.messages
    @message = Message.new
    @users = @chatroom.users.uniq
  end
end