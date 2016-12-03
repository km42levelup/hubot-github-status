URL_STATUS= 'https://status.github.com/api/status.json'
URL_LAST_MESSAGE= 'https://status.github.com/api/last-message.json'
URL_MESSAGES = 'https://status.github.com/api/messages.json'

formatString = (string) ->
  decodeURIComponent(string.replace(/(\n)/gm," "))
moment = require 'moment'

githubMessageParser = (json) ->
  """#{moment(json['created_on']).fromNow()}
  Status: #{json['status']}
  Message: #{formatString(json['body'])}
  """

status = (msg) ->
  msg.http(URL_STATUS)
    .get() (err, res, body) ->
      json = JSON.parse(body)
      if not err
        msg.send """#{moment(json['last_updated']).fromNow()}
        Status: #{json['status']}"""
      else
        msg.send "Error: #{err}"
lastMessage = (msg) ->
  msg.http(URL_LAST_MESSAGE)
    .get() (err, res, body) ->
      json = JSON.parse(body)
      if not err
        msg.send githubMessageParser json
      else
        msg.send "Error: #{err}"

statusMessages = (msg) ->
  msg.http(URL_MESSAGES)
    .get() (err, res, body) ->
      jsonArray = JSON.parse(body)
      if not err
        msg.send (githubMessageParser json for json in jsonArray).join('\n')
      else
        msg.send "Error: #{err}"


module.exports =
  status: status
  last_status: lastMessage
  messages: statusMessages
