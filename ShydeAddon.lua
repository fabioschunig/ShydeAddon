local frame=CreateFrame("Frame");
-- frame:RegisterEvent("PLAYER_LOGIN");
frame:RegisterEvent("VARIABLES_LOADED");
frame:SetScript("OnEvent",function(self,event,...)
    --/console turnspeed 290
	--/run print("Turnspeed is now ", GetCVar("turnspeed"))
	--/console cameraDistanceMaxZoomFactor 2.6
	C_CVar.SetCVar("TurnSpeed",350)
	C_CVar.SetCVar("cameraDistanceMaxZoomFactor",2.6)
end);
