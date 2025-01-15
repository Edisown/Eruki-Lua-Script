--[[
    Author: @Edison
    Date: [7/19/2022]
    Description: [Simple Auto Spam]
]]

-- AutoSpammer 

TextV1 = "Hello World"
TextV2 = "Hello World"
TextV3 = "Hello World"
TextV4 = "Hello World"


while true do
SendPacket(2, "action|input\n|text|" .. TextV1)
Sleep(3750)
SendPacket(2, "action|input\n|text|" .. TextV2)
Sleep(3750)
SendPacket(2, "action|input\n|text|" .. TextV3)
Sleep(4000)
SendPacket(2, "action|input\n|text|" .. TextV4)
Sleep(5100)
end