module.exports = (robot) ->

   robot.respond /add a foo/i, (msg) ->
     currentfoos = robot.brain.get('foos') * 1 or 0
     #msg.reply "foos is now #{currentfoos}"
     robot.brain.set 'foos', currentfoos+1
     currentfoos = robot.brain.get('foos') * 1 or 0
     msg.reply "foos is now #{currentfoos}"
