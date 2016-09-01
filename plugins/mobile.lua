--[[
نمونه اصلی MOBILE اوپن شده توسط 
@ValtMan
@ubuntu_14 (main API)
بدون محدودیت استفاده کنید بدون تبلیغات :D

تشکر :)
Our Channel : @UB_CH
اگر بدون ذکر منبع پخش بشه دیگه اوپن نمیکنم
]]



local function run(msg, matches)
local url = http.request("http://www.mobile.ir/phones/AjaxLatestPhonesJson.aspx")
  local jdat = json:decode(url)
  local text2 = ''
  for i = 1 , #jdat do
    text2 = text2..i
    text2 = text2..' ) اسم مبایل : '..jdat[i].title
	text2 = text2..'\nجزییات : http://www.mobile.ir'..jdat[i].url.."\n"
    end
  return reply_msg(msg.id, text2, ok_cb, false)
end

return {
  description = "Get New Mobile Phones From Mobile.ir",
  patterns = {
    "^([Mm][Oo][Bb][Ii][Ll][Ee])$"
  },
  run = run
}
