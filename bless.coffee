# Description:
#   Allows Hubot to bless someone after they sneeze. Thanks, Hubot. 
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot bless <name> - hubot bless <name> in <language>
#
# Author:
#   jdmcpeek


blesses = {
  English: "God Bless you",
  Albanian: "Shëndet",
  Afrikaans: "Gesondheid",
  Arabic: "صحة",
  Armenian: "առողջություն",
  Basque: "Doministiku'",
  Bosnian: "Nazdravlje",
  Bulgarian: "Наздраве",
  Catalan: "Salut",
  Cantonese: "大吉利事", 
  Chinese: "长命百岁",
  Croation: "Na zdravlje",
  Czech: "Na zdraví",
  Danish: "Prosit",
   

}


module.exports = (robot) ->
  robot.respond /bless (.*)/i, (blessing) ->
    name = blessing.match[1].trim()
    bless(blessing, name)

bless = (blessing, name, language) ->
  msg
    .http("http://www.randominsults.net")
    .header("User-Agent: Insultbot for Hubot (+https://github.com/github/hubot-scripts)")
    .get() (err, res, body) ->
      msg.send "#{name}: #{getQuote body}"


