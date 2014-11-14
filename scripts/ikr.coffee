# Description:
#   IKR helps your bot agree with the things you love
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   enthusiastic adverbs trigger random agreements
#
# Notes
#   See jargon array for list of trigger phrases
#
# Author:
#   Dave Josephsen <dave@skeptech.org> (https://github.com/djosephsen)

replies = require './data/ikr-replies.json'
triggers = require './data/triggers.json'
regex = new RegExp triggers.join('|'), 'gi'

module.exports = (robot) ->
  robot.hear regex, (msg) ->
    msg.send msg.random replies
