require 'telegram/bot'
token = '240556961:AAEP-A47vhju8Vy3P7C7vZZTdGseOpdmY9I'

Telegram::Bot::Client.run(token) do |bot|
  bot.listen do |message|
    case message.text
    when '/start'
        bot.api.send_message(chat_id: message.chat.id, text: "Hello, #{message.from.first_name}")
    when '/sitepoint'
      bot.api.send_message(chat_id: message.chat.id, text: "Welcome to http://sitepoint.com")
    when '/topics'
        bot.api.send_message(chat_id: message.chat.id, text: "topics text")
    end
  end
end
