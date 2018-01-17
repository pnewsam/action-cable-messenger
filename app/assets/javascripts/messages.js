App.messages = App.cable.subscriptions.create({ channel: 'MessagesChannel', random: 'hello!' }, {
  received: function(data) {
    console.log('received!')
    document.getElementById('messages').classList.remove('hidden')
    return document.getElementById('messages').appendChild(this.renderMessage(data));
  },
  renderMessage: function(data) {
    var li = document.createElement('li')
    li.innerHTML = data.message
    return li;
  }
});