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
  Dutch: "morgen mooi weer",
  Esperanto: "sanon",
  Estonian: "Terviseks",
  Finnish: "Terveydeksi",
  French: "à tes souhaits",
  German: "Gesundheit",
  Greek: "στην υγεία σου",
  Hawaiian: "a mauli ola",
  Hebrew: "לבריאות",
  Hindi: "हरी ॐ",
  Hungarian: "Egészségedre",
  Indonesian: "Alhamdulillah",
  Irish: "Dia linn",
  Japanese: "お大事に",
  Korean: "........",
  Kurdish: "Kher be inshalla",
  Latvian: "Uz veselību",
  Lithuanian: "Į sveikatą",
  Macedonian: "Hа здравје",
  Mongolian: "Бурхан өршөө",
  Nepali: "ʼचिरन्जिभी",
  Norwegian: "Prosit",
  Persian: "عافیت باشه",
  Polish: "Na zdrowie",
  Portuguese: "Santinho",
  Romanian: "Sănătate",
  Russian: "будь здоров",
  Serbian: "Наздравље",
  Slovak: "Na zdravie",
  Slovenian: "Bog pomagaj",
  Spanish: "salud",
  Swedish: "Prosit",
  Turkish: "Çok yaşa",
  Ukrainian: "будь здоровий",
  Urdu: "yar-hum-o-kullah",
  Uzbek: "Sog' bo'ling",
  Vietnamese: "Sống lâu",
  Welsh: "Bendith",
  Yiddish: "זײַ געזונט"
}


module.exports = (robot) ->
  robot.respond /bless (.*) in (.*)/i, (msg) ->
    name = msg.match[1].trim()
    language = msg.match[3].trim()
    bless(msg, name, language)
    


bless = (msg, name, language = English) ->
  msg.send "#{blesses[language]}, #{name}!"
    


