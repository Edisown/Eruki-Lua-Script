gg.showUiButton()
while true do
if gg.isClickedUiButton() then
mainmenu = gg.choice({'Medlabs 1','GoldFurnace 2'}) 
if mainmenu== 1 then Medlabs() end
if mainmenu== 2 then GoldFurnace() end
end

function Medlabs() 
gg.setVisible(false)
gg.clearResults()
gg.searchNumber("1;10,000;0;0;0;0;0;0;2;5::165", gg.TYPE_DWORD)
r = gg.getResults(100000)
gg.editAll("6;1;1,769,292,326;1,852,400,748;1,867,013,991;1,953,067,123;828,337,249;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;2;125",gg.TYPE_DWORD)
gg.refineNumber("6",gg.TYPE_DWORD)
r = gg.getResults(100000)
gg.addListItems(r)
gg.clearResults()
gg.sleep(1000)
gg.searchNumber("h1873635F7061636B6167655F3100000000000000000000000", gg.TYPE_BYTE)
r = gg.getResults(100000)
gg.editAll("h 26 42 75 69 6c 64 69 6e 67 5f 48 6f 73 70 69 74 61 6c 5f 32",gg.TYPE_BYTE)
gg.clearResults()
end




function GoldFurnace() 
gg.setVisible(false)
gg.clearResults()
gg.searchNumber("1;44,000;0;0;0;0;0;0;2;20::165", gg.TYPE_DWORD)
r = gg.getResults(100000)
gg.editAll("6;1;1,769,292,314;1,852,400,748;1,128,816,487;12,895;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;2;3000",gg.TYPE_DWORD)
gg.refineNumber("6",gg.TYPE_DWORD)
r = gg.getResults(100000)
gg.addListItems(r)
gg.clearResults()
gg.sleep(1000)
gg.searchNumber("h1873635F7061636B6167655F3200000000000000000000000", gg.TYPE_BYTE)
r = gg.getResults(100000)
gg.editAll("h 1a 42 75 69 6c 64 69 6e 67 5f 48 43 5f 32",gg.TYPE_BYTE)
gg.clearResults()
gg.toast("Test Script")
end


function noselect() 
end

    gg.sleep(100)
end
