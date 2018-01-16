class AddChatroomIdToMessages < ActiveRecord::Migration[5.1]
  def change
    add_reference :messages, :chatroom
  end
end
