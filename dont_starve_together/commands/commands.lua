-- 地图全开
size = 2 * TheWorld.Map:GetSize()
for x = -size, size, 32 do
    for z = -size, size, 32 do
        ThePlayer.player_classified.MapExplorer:RevealArea(x, 0, z)
    end
end
