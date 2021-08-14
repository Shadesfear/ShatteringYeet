	ShatteringYeet = CreateFrame("frame") 
	local self = ShatteringYeet 
	 
	SlashCmdList["SHATTERINGYEET"] = function(msg) ShatteringYeet:SlashHandler(msg) end 
	SLASH_COMEHERE1 = "/shatteringyeettoggle" 
	SLASH_COMEHERE2 = "/syt" 
	 
	if not ShatteringYeet_Options then ShatteringYeet_Options = { ChatOff=false } end 
	 
	function ShatteringYeet_OnEvent(self, event, arg1, arg2, arg3, arg4, arg5) 
		 
	     if (arg3 == 64382) and arg1 == "player" then        
	        PlaySoundFile("Interface\\AddOns\\ShatteringYeet\\Sounds\\yeet.mp3")
			if not (ShatteringYeet_Options.ChatOff) then SendChatMessage("YEET!", "SAY"); end 
		 end
	end 
	 
	function ShatteringYeet:SlashHandler(msg) 
	   local arg = string.lower(msg) 
	    if ShatteringYeet_Options.ChatOff==false then 
	        ShatteringYeet_Options.ChatOff=true; 
	        DEFAULT_CHAT_FRAME:AddMessage("|cFFFFFF00[SY]|r Chat Messages Off") 
	    else 
	        ShatteringYeet_Options.ChatOff=false; 
	        DEFAULT_CHAT_FRAME:AddMessage("|cFFFFFF00[SY]|r Chat Messages On") 
	    end 
	end