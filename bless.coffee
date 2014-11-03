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
#   hubot bless <name> in <language>
#
# Author:
#   jdmcpeek


blessings = {
  "English": "God Bless you",
  "Albanian": "Shëndet",
  "Afrikaans": "Gesondheid",
  "Arabic": "صحة",
  "Armenian": "առողջություն",
  "Basque": "Doministiku'",
  "Bosnian": "Nazdravlje",
  "Bulgarian": "Наздраве",
  "Catalan": "Salut",
  "Cantonese": "大吉利事", 
  "Chinese": "长命百岁",
  "Croation": "Na zdravlje",
  "Czech": "Na zdraví",
  "Danish": "Prosit",
  "Dutch": "morgen mooi weer",
  "Esperanto": "sanon",
  "Estonian": "Terviseks",
  "Finnish": "Terveydeksi",
  "French": "à tes souhaits",
  "German": "Gesundheit",
  "Greek": "στην υγεία σου",
  "Hawaiian": "a mauli ola",
  "Hebrew": "לבריאות",
  "Hindi": "हरी ॐ",
  "Hungarian": "Egészségedre",
  "Indonesian": "Alhamdulillah",
  "Irish": "Dia linn",
  "Japanese": "お大事に",
  "Korean": "........",
  "Kurdish": "Kher be inshalla",
  "Latvian": "Uz veselību",
  "Lithuanian": "Į sveikatą",
  "Macedonian": "Hа здравје",
  "Mongolian": "Бурхан өршөө",
  "Nepali": "ʼचिरन्जिभी",
  "Norwegian": "Prosit",
  "Persian": "عافیت باشه",
  "Polish": "Na zdrowie",
  "Portuguese": "Santinho",
  "Romanian": "Sănătate",
  "Russian": "будь здоров",
  "Serbian": "Наздравље",
  "Slovak": "Na zdravie",
  "Slovenian": "Bog pomagaj",
  "Spanish": "salud",
  "Swedish": "Prosit",
  "Turkish": "Çok yaşa",
  "Ukrainian": "будь здоровий",
  "Urdu": "yar-hum-o-kullah",
  "Uzbek": "Sog' bo'ling",
  "Vietnamese": "Sống lâu",
  "Welsh": "Bendith",
  "Yiddish": "זײַ געזונט"
}

translations = [
  "God Bless you",
  "Shëndet",
  "Gesondheid",
  "صحة",
  "առողջություն",
  "Doministiku'",
  "Nazdravlje",
  "Наздраве",
  "Salut",
  "大吉利事", 
  "长命百岁",
  "Na zdravlje",
  "Na zdraví",
  "Prosit",
  "morgen mooi weer",
  "sanon",
  "Terviseks",
  "Terveydeksi",
  "à tes souhaits",
  "Gesundheit",
  "στην υγεία σου",
  "a mauli ola",
  "לבריאות",
  "हरी ॐ",
  "Egészségedre",
  "Alhamdulillah",
  "Dia linn",
  "お大事に",
  "........",
  "Kher be inshalla",
  "Uz veselību",
  "Į sveikatą",
  "Hа здравје",
  "Бурхан өршөө",
  "ʼचिरन्जिभी",
  "Prosit",
  "عافیت باشه",
  "Na zdrowie",
  "Santinho",
  "Sănătate",
  "будь здоров",
  "Наздравље",
  "Na zdravie",
  "Bog pomagaj",
  "salud",
  "Prosit",
  "Çok yaşa",
  "будь здоровий",
  "yar-hum-o-kullah",
  "Sog' bo'ling",
  "Sống lâu",
  "Bendith",
  "זײַ געזונט"
]

String::capitalize = ->
  @charAt(0).toUpperCase() + @slice(1)


module.exports = (robot) ->
  robot.respond /bless (.*)/i, (msg) -> 
      name = msg.match[1].trim().capitalize()
      language = msg.random translations
      msg.send "#{blessings[language]}, #{name}!"
      msg.emote "#{name} feels a bit better now."
  
  robot.respond /in (.*) bless (.*)/i, (msg) -> 
      name = msg.match[2].trim().capitalize()
      language = msg.match[1].trim().capitalize()
      msg.send "#{blessings[language]}, #{name}!"
      msg.emote "#{name} feels a bit better now."
    



    



