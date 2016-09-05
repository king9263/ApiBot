function set_text(lang, keyword, text)
    local hash = 'lang:'..lang..':'..keyword
    redis:set(hash, text)
end

function get_receiver_api(msg)
  if msg.to.type == 'user' then
    return msg.from.id
  end
  if msg.to.type == 'chat' then
    return '-'..msg.to.id
  end
  if msg.to.type == 'channel' then
    return '-100'..msg.to.id
  end
end
function send_api_msg(msg, receiver, text, disable_web_page_preview, markdown,inline_text,inline_url)
  
  
  local api_key = '237076182:AAEgPJBsfD9OFqHRT2zQyWByn9_RM-S0djw'
  
  
  local url_api = 'https://api.telegram.org/bot'..api_key
      ..'/sendMessage?chat_id='..receiver..'&text='..URL.escape(text)
  if disable_web_page_preview == true then
    url_api = url_api..'&disable_web_page_preview=true'
  end
  if markdown == 'md' then
    url_api = url_api..'&parse_mode=Markdown'
  elseif markdown == 'html' then
    url_api = url_api..'&parse_mode=HTML'
  end
if inline_text and inline_url then
url_api = url_api..'&reply_markup={"inline_keyboard":[[{"text":"'..inline_text..'","url":"'..inline_url..'"}]]}'
end
  local dat, res = https.request(url_api)
  local test = print(url_api)
  if res == 400 then
    reply_msg(msg.id, 'Error 400.\nWhat ever that means...', ok_cb, true)
  end
end
function send_api_keyboard(msg, receiver, text, keyboard)
  local api_key = '237076182:AAEgPJBsfD9OFqHRT2zQyWByn9_RM-S0djw'
  local url_api = 'https://api.telegram.org/bot'..api_key..'/sendMessage?chat_id='.. receiver..'&parse_mode=markdown&&text='..URL.escape(text)..'&disable_web_page_preview=true&reply_markup='..json:encode(keyboard)
  local dat, res = https.request(url_api)
  if res == 400 then
    reply_msg(msg.id, 'Error 400.\nWhat ever that means...', ok_cb, true)
  end
  end
