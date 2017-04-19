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


keywords = [/POST/, /PATCH/, /proposals/, /briefings/, /extentions/]

HubotSlack = require 'hubot-slack'

for keyword, i in keywords
  module.exports = (robot) ->
    robot.listeners.push new HubotSlack.SlackBotListener robot, /#keyword/i, (res) ->
      res.send "@daisuke.nishimori 【テスト中】ヤバめのエラーだよ"

  module.exports = (robot) ->
    robot.hear /#{keyword}/i, (msg) ->
      msg.send "@daisuke.nishimori おつかれさま！"

module.exports = (robot) ->
  robot.listeners.push new HubotSlack.SlackBotListener robot, /POST|PATCH|proposals|extentions|briefings/i, (res) ->
    res.send "@daisuke.nishimori 【テスト中】ヤバめのエラーだよ"

module.exports = (robot) ->
  robot.hear /|POST|PATCH|proposals|extentions|briefings|/i, (msg) ->
    msg.send "@daisuke.nishimori おつかれさま！"


