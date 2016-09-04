do

 function run(msg, matches)
if matches[1]:lower() == 'start' then
			if msg.to.type == 'user' then
			return 'Dear,'..(msg.from.first_name or '—-')..'\nWelcome to Neo Api Bot\nYou Can Make safe Group With Neo Api bot\n\n> Your Name: '..(msg.from.first_name or '—-')..'\n> Your Last Name: '..(msg.from.last_name or '—-')..'\n> Your ID: '..msg.from.id..'\n> Your UserName: @'..(msg.from.username or '—-')..''
			end
end
end
end
return {
patterns = {
"^[/]([Ss][Tt][Aa][Rr][Tt])"
},
run = run
}