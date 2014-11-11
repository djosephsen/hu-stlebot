module.exports = (robot) ->

   robot.respond /add a foo/i, (msg) ->
  #   # Get number of sodas had (coerced to a number).
     currentfoos = robot.brain.get('foos') * 1 or 0
     robot.brain.set 'foos', currentfoos+1
     currentfoos = robot.brain.get('foos') * 1 or 0
     robot.respond "foos is now #{currentfoos}"
