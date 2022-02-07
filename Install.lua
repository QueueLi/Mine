local REPOSITORY = "https://raw.githubusercontent.com/QueueLi/Mine/main"
local shell = require("shell")

local libs = {
    
    {
        url = REPOSITORY .. "/IgorTimofeev/AdvancedLua.lua",
        path = "/lib/advancedLua.lua"
    },
    {
        url = REPOSITORY .. "/IgorTimofeev/Color.lua",
        path = "/lib/color.lua"
    },
    {
        url = REPOSITORY .. "/IgorTimofeev/OCIF.lua",
        path = "/lib/FormatModules/OCIF.lua"
    },
    {
        url = REPOSITORY .. "/IgorTimofeev/Image.lua",
        path = "/lib/image.lua"
    },
    {
        url = REPOSITORY .. "/IgorTimofeev/DoubleBuffering.lua",
        path = "/lib/doubleBuffering.lua"
    },
    {
        url = REPOSITORY .. "/libs/slot_machine.lua",
        path = "/lib/slot_machine.lua"
    }
}

shell.execute("md /home/images/one_armed_creeper/")
shell.execute("md md /lib/FormatModules")
shell.execute("wget -f https://raw.githubusercontent.com/QueueLi/Mine/main/Slot.txt" .. " /home/Slot.lua")
shell.execute("wget -f " .. REPOSITORY .. "/libs/slot_machine.lua /lib/slot_machine.lua")
shell.execute("wget -f " .. REPOSITORY .. "/config/settings.lua /lib/settings.lua")


for i = 1, #libs do
		shell.execute("wget -f " ..  libs[i].url .. " " .. libs[i].path)
		
    end
