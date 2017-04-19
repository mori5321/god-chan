# Description:
#   <description of the scripts functionality>
#
# Dependencies:
#   "<module name>": "<module version>"
#
# Configuration:
#   LIST_OF_ENV_VARS_TO_SET
#
# Commands:
#   hubot <trigger> - <what the respond trigger does>
#   <trigger> - <what the hear trigger does>
#
# Notes:
#   <optional notes required for the script>
#
# Author:
#   <github username of the original script author>

module.exports = (robot) ->

  robot.respond /おはよう/i, (msg) ->
    msg.send "おはようございます！"

module.exports = (robot) ->

  robot.hear /おはよう/i, (msg) ->
    msg.send "おつかれさま！"

HubotSlack = require 'hubot-slack'
module.exports = (robot) ->
  robot.listeners.push new HubotSlack.SlackBotListener robot, /proposals/i, (res) ->
    res.send "@daisuke.nishimori ヤバめのエラーだよ"

module.exports = (robot) ->
  robot.hear /proposals/i, (msg) ->
    msg.send "おつかれさま！"

