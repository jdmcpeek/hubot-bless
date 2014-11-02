description:
#   Allows Hubot to bless someone after they sneeze. Thanks, Hubot. 
#
# Dependencies:
#   "cheerio: "0.7.0"
#
# Configuration:
#   None
#
# Commands:
#   hubot bless <name> - hubot bless <name> in <language>
#
# Author:
#   jdmcpeek

cheerio = require('cheerio')

module.exports = (robot) ->
  robot.respond /insult (.*)/i, (msg) ->
    name = msg.match[1].trim()
    insult(msg, name)

insult = (msg, name) ->
  msg
    .http("http://www.randominsults.net")
    .header("User-Agent: Insultbot for Hubot (+https://github.com/github/hubot-scripts)")
    .get() (err, res, body) ->
      msg.send "#{name}: #{getQuote body}"

getQuote = (body) ->
  $ = cheerio.load(body)
  $('i').text()
