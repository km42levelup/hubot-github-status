# Description
#   A Hubot script that query status.github.com
#
# Configuration:
#
#
# Commands:
#   hubot github status - return the current status
#   hubot github last message - return the last status message
#   hubot github messages - return all the status messages
#   orly - <what the hear trigger does>
#
# Notes:
#   <optional notes required for the script>
#
# Author:
#   Samuel Boucher
# Inspired by
# voke

routes = require './routes'
controller = require './controller'

module.exports = (robot) ->
  robot.respond routes.STATUS, controller.status
  robot.respond routes.LAST_MESSAGE, controller.last_message
  robot.respond routes.MESSAGES, controller.messages

