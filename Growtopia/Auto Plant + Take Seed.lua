--[[
    Author: @Vency, @Edison, @Arl3y
    Date: [9/16/2022]
    Description: [Growtopia Auto Plant + Take Seed]
]]

--# Local Info World Plant & Save
World_Name = "Contoh" 
World_Save = "Contoh" 
Door_ID = "Contoh" 

--# Local Info Plant
Seed_ID = 4585 -- ID of the seed

--Local Setting Delay
Delay_Plant = 400 --# Pref. 200-400
Delay_Warp = 5000 --# Maximum of 7000 to avoid ban
Delay_Find_Path = 1000 --# Pref. 1000

--#Dont Change
function getAmount(id)
  for _,x in pairs(getInventory()) do
    if x.id == id then
      return x.amount
    end
  end
  return 0
end

function send(txt)
  local var = {}
  var[0] = "OnTextOverlay"
  var[1] = txt
  sendVariant(var)
end

function join(wn,di)
    sleep(10)
    sendPacket(2, "action|join_request\nname|" .. World_Name)
    sendPacket(3, "action|join_request\nname|" .. wn .. "|" .. di .. "\ninvitedWorld|0")
end

function takeSeed()
    for _,obj in pairs(getWorldObject()) do
        if obj.id == Seed_ID then
            findPath(math.floor(obj.pos.x/32),math.floor(obj.pos.y/32))
            sleep(Delay_Find_Path)
            join(World_Name,Door_ID)
            sleep(Delay_Warp)
            plant(Seed_ID,Delay_Plant)
        end
    end
end

function plant(id,delay)
  for y=1,52 do
    for x=0,98 do
      if getAmount(Seed_ID) == 0 then
        join(World_Save,Door_ID)
          sleep(Delay_Warp)
            takeSeed()
              sleep(2000)
      elseif getAmount(id) > 0 and checkTile(x,y).fg == 0 and checkTile(x,y+1).fg % 2 == 0 and checkTile(x,y+1).fg ~= 0 then
        findPath(x,y,200)
        sleep(delay)
        sendPacketRaw(false,{value=id,type=3,x=getLocal().pos.x,y=getLocal().pos.y,punchy=getLocal().pos.y/32,punchx=getLocal().pos.x/32})
        sleep(delay)
      elseif y==1 and checkTile(x,y-1).fg == 0 and checkTile(x,y).fg % 2 == 0 and checkTile(x,y).fg ~= 0 and getAmount(id) > 0 then
        findPath(x,y-1,200)
        sleep(delay)
        sendPacketRaw(false,{value=id,type=3,x=getLocal().pos.x,y=getLocal().pos.y,punchy=getLocal().pos.y/32,punchx=getLocal().pos.x/32})
        sleep(delay)
      elseif y==52 and checkTile(x,y).fg ~= 0 and checkTile(x,y).fg % 2 == 0 and checkTile(x,y+1).fg == 0 and getAmount(id) > 0 then
        findPath(x,y+1,200)
        sleep(delay)
        sendPacketRaw(false,{value=id,type=3,x=getLocal().pos.x,y=getLocal().pos.y,punchy=getLocal().pos.y/32,punchx=getLocal().pos.x/32})
        sleep(delay)
      end
    end
  end
end

function Main()
    send("`9Warping To `2" ..World_Name)
    sleep(500)
    join(World_Name,Door_ID)
    sleep(Delay_Warp)
    send("`9Starting To Plant A `#"..getItemByID(Seed_ID).name)
    sleep(2000)
    plant(Seed_ID,Delay_Plant)
end

Main()