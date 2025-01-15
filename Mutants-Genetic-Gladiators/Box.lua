gg.showUiButton()
while true do
if gg.isClickedUiButton() then
mainmenu = gg.choice({'Boxes'},   nill, 'Test')
if mainmenu== 1 then B1() end
end


function B1()
gg.setVisible(false)     
gg.clearResults()
gg.searchNumber(":Allowed", gg.TYPE_BYTE)
r = gg.getResults(100000)
gg.editAll("0",gg.TYPE_BYTE)
gg.clearResults()

gg.clearResults()
gg.searchNumber("h28416E6E697665727361727932335F426F785F3235000000106D6174657269616C000000", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
local start = gg.getResults(1) 
local valuesToEdit = {} 

for i = 1, #start do

    local target = start[i].address + 0xfffffffffffffff8
    table.insert(valuesToEdit, {address = target, flags = gg.TYPE_DWORD, value = 1})
end

-- Apply the values in one go
gg.setValues(valuesToEdit)
gg.clearResults()

gg.setVisible(false)     
gg.clearResults()
gg.searchNumber(":Allowed", gg.TYPE_BYTE)
r = gg.getResults(100000)
gg.editAll("0",gg.TYPE_BYTE)
gg.clearResults()

gg.clearResults()
gg.searchNumber("h2C416E6E69766572736172795F323031395F426F785F3900106D6174657269616C000000", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
local start = gg.getResults(1) 
local valuesToEdit = {} 

for i = 1, #start do

    local target = start[i].address + 0xfffffffffffff578
    table.insert(valuesToEdit, {address = target, flags = gg.TYPE_DWORD, value = 1})
end

-- Apply the values in one go
gg.setValues(valuesToEdit)
gg.clearResults()

gg.clearResults()
gg.searchNumber("1,986,289,960;1,601,465,957;1,701,601,635;1,918,985,326", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
local start = gg.getResults(100000)
local valuesToEdit = {} 

for i = 1, #start do
    local target = start[i].address + 0xffffffffffffffbc
    table.insert(valuesToEdit, {address = target, flags = gg.TYPE_DWORD, value = 1})
end
-- Apply the values in one go
gg.setValues(valuesToEdit)
gg.clearResults()

gg.clearResults()
gg.searchNumber("1,836,605,296;1,650,422,625;1,650,423,919;6,649,196", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
local start = gg.getResults(100000)
local valuesToEdit = {} 

for i = 1, #start do
    local target = start[i].address + 0xffffffffffffffbc
    table.insert(valuesToEdit, {address = target, flags = gg.TYPE_DWORD, value = 1})
end
-- Apply the values in one go
gg.setValues(valuesToEdit)

gg.clearResults()
gg.searchNumber("1,836,605,296;1,650,422,625;1,734,309,999;1,852,138,866", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
local start = gg.getResults(100000)
local valuesToEdit = {} 

for i = 1, #start do
    local target = start[i].address + 0xffffffffffffffbc
    table.insert(valuesToEdit, {address = target, flags = gg.TYPE_DWORD, value = 1})
end
-- Apply the values in one go
gg.setValues(valuesToEdit)



gg.clearResults()
gg.searchNumber("1,836,605,296;1,650,422,625;1,918,859,375;25,701", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
local start = gg.getResults(100000)
local valuesToEdit = {} 

for i = 1, #start do
    local target = start[i].address + 0xffffffffffffffbc
    table.insert(valuesToEdit, {address = target, flags = gg.TYPE_DWORD, value = 1})
end
-- Apply the values in one go
gg.setValues(valuesToEdit)
gg.clearResults()


gg.clearResults()
gg.searchNumber("1,852,727,596;1,919,252,073;2,037,539,187;2,020,565,599", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
local start = gg.getResults(100000)
local valuesToEdit = {} 

for i = 1, #start do
    local target = start[i].address + 0xffffffffffffffc0
    table.insert(valuesToEdit, {address = target, flags = gg.TYPE_DWORD, value = 1})
end
-- Apply the values in one go
gg.setValues(valuesToEdit)
gg.clearResults()

gg.clearResults()
gg.searchNumber("1,839,605,296;1,650,422,625;1,650,423,919;6,649,196", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
local start = gg.getResults(100000)
local valuesToEdit = {} 

for i = 1, #start do
    local target = start[i].address + 0xffffffffffffffbc
    table.insert(valuesToEdit, {address = target, flags = gg.TYPE_DWORD, value = 1})
end
-- Apply the values in one go
gg.setValues(valuesToEdit)

gg.clearResults()
gg.searchNumber("1,839,605,296;1,650,422,625;1,734,309,999;1,852,138,866", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
local start = gg.getResults(100000)
local valuesToEdit = {} 

for i = 1, #start do
    local target = start[i].address + 0xffffffffffffffbc
    table.insert(valuesToEdit, {address = target, flags = gg.TYPE_DWORD, value = 1})
end
-- Apply the values in one go
gg.setValues(valuesToEdit)



gg.clearResults()
gg.searchNumber("1,839,605,296;1,650,422,625;1,918,859,375;25,701", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
local start = gg.getResults(100000)
local valuesToEdit = {} 

for i = 1, #start do
    local target = start[i].address + 0xffffffffffffffbc
    table.insert(valuesToEdit, {address = target, flags = gg.TYPE_DWORD, value = 1})
end
-- Apply the values in one go
gg.setValues(valuesToEdit)
gg.clearResults()

gg.processResume()
gg.timeJump("5:0")
end

function noselect()
end

    gg.sleep(100)
end