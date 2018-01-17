class MessagesChannel < ApplicationCable::Channel
  def subscribed
    stream_from 'sup'
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
