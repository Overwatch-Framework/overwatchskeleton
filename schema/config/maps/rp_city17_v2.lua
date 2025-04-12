-- Incase you want to use the viewcontrol entity to set the main menu camera, you can use the following code.
-- But I've just hardcoded the values for us, so we don't have to rely on the viewcontrol entity.
-- The values are printed in the console, so you can copy them and paste them in the config file.
-- if ( SERVER ) then
--     util.AddNetworkString("ow.hl2rp.viewControl")
-- 
--     local viewControl = ents.FindByClass("point_viewcontrol")[1]
--     if ( IsValid(viewControl) ) then
--         ow.config:SetDefault("menuCamPos", viewControl:GetPos())
--         ow.config:SetDefault("menuCamAng", viewControl:GetAngles())
--         ow.config:SetDefault("menuCamFov", 75)
--     end
-- end

ow.config:SetDefault("menuCamPos", Vector(-2856, -1673.71875, 76))
ow.config:SetDefault("menuCamAng", Angle(345, 344, 0))
ow.config:SetDefault("menuCamFov", 75)