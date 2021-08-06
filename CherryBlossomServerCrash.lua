local Players = game.Players

while wait() do
    for i,v in pairs(game.Workspace:GetDescendants()) do
        if v:IsA("ClickDetector") then
            fireclickdetector(v)
        end
    end
    wait(1)
    for i,v in pairs(Players.LocalPlayer.Backpack:GetChildren()) do
        if v:IsA("Tool") then
            v.Parent = Players.LocalPlayer.Character
        end
    end
    wait()
    for i,v in pairs(Players.LocalPlayer.Character:GetChildren()) do
        if v:IsA("Tool") then
            v.Parent = workspace
        end
    end
end
