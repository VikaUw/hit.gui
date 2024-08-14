_G.Size = 20
_G.Disabled = true

game:GetService('RunService').RenderStepped:connect(function()
  if _G.Disabled then
    for i,v in next, game:GetService('Players'):GetPlayers() do
      if v.Name ~= game:GetService('Players').LocalPlayer.Name then
        pcall(function()
           v.Character.Head.Size = Vector3.new(_G.Size,_G.Size,_G.Size)
           v.Character.Head.Transparency = 0.9
           v.Character.Head.BrickColor = BrickColor.new("White")
           v.Character.Head.Material = "Neon"
           v.Character.Head.CanCollide = false
        end)
      end
    end
  end
end)
