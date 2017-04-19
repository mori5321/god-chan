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



HubotSlack = require 'hubot-slack'


module.exports = (robot) ->
  robot.listeners.push new HubotSlack.SlackBotListener robot, /post|patch|put|briefings|extentions|proposals/i, (res) ->
    res.send "@daisuke.nishimori 【テスト中】ヤバめのエラーだよ"


module.exports = (robot) ->
  robot.hear /post|patch|put|briefings|extentions|proposals/i, (msg) ->
    msg.send "@daisuke.nishimori おつかれさま！"


