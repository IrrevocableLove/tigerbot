return function(message,guild)
	local content = message.content or message
	
	local id = content:match("<@&(.*)>") or (tonumber(content) and content:len() > 16 and content)
	
	for role in guild.roles do
		if role.name == content or role.id == id then
			return role
		end
	end
end