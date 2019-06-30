--Valdemar Larsen--
Citizen.CreateThread(function()
	while true do
		Citizen.Wait(1)
		local spiller = 0
		for i = 0, 31 do
		    if NetworkIsPlayerActive(i) then  -- native
		        spiller = spiller+1
		    end
		end
		spiller_hud(0.505, 0.85, 1.0,1.0,0.75, "~w~Spillere Online:~y~ "..spiller, 255, 255, 255, 255)
	end
end)

function spiller_hud(x,y ,width,height,scale, text, r,g,b,a, outline)
    SetTextFont(4)
    SetTextProportional(0) 
    SetTextScale(scale, scale)
	SetTextColour( 0,0,0, 255 )
    SetTextDropShadow(0, 0, 0, 0,255)
    SetTextEdge(1, 0, 0, 0, 255)
    SetTextDropShadow()
	SetTextOutline()
    SetTextEntry("STRING")
    AddTextComponentString(text)
    DrawText(x - width/2, y - height/2 + 0.005)
end