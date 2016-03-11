module.exports = function(robot) {
  robot.respond(/test/i, function(res){
    res.send('I\'m here...');
  });
}
