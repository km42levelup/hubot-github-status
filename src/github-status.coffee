# Description
#   A Hubot script that query status.github.com
#
# Configuration:
#
#
# Commands:
#   hubot github status - <what the respond trigger does>
#   hubot github last message - <what the respond trigger does>
#   hubot github messages - <what the respond trigger does>
#   orly - <what the hear trigger does>
#
# Notes:
#   <optional notes required for the script>
#
# Author:
#   Samuel Boucher <boucher.samuel.c@gmail.com>
# Inspired by
# voke

routes = require './routes'
controller = require './controller'

module.exports = (robot) ->
  robot.respond routes.STATUS, controller.status

  robot.respond routes.LAST_STATUS, controller.last_status

  robot.respond routes.MESSAGES, controller.messages

