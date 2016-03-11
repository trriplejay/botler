module.exports = function(robot) {
  robot.respond(/version/i, function(res){
    var version = process.env.BOTLER_VERSION;
    res.send('I am version ' + version);
  });
}
