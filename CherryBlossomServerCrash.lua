local mt = getrawmetatable(game)
local nc = mt.__namecall

setreadonly(mt, false)

mt.__namecall = function(self, ...)
    local args = {...}
    local method = getnamecallmethod()
    
    if method == "Kick" then
        return wait(9e9)
    end
    
    return nc(self, ...)
end

local Players = game.Players

game:GetService("StarterGui"):SetCoreGuiEnabled('Backpack', false)

game:GetService("RunService").Heartbeat:Connect(function()
    Players.LocalPlayer.Character.Humanoid:ChangeState(11)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(4139, 10898, 1453)
    for i,v in pairs(game.Workspace:GetDescendants()) do
        if v:IsA("ClickDetector") then
            if v.Parent.Name ~= "Shirt Purchase" then
                fireclickdetector(v)
            end
        end
    end
    for i,v in pairs(Players.LocalPlayer.Backpack:GetChildren()) do
        if v:IsA("Tool") then
            if v.CanBeDropped == true then
                v.Parent = Players.LocalPlayer.Character
            end
        end
    end
    wait()
    for i,v in pairs(Players.LocalPlayer.Character:GetChildren()) do
        if v:IsA("Tool") then
            v.Parent = workspace
        end
    end
end)

game.Workspace.ChildAdded:Connect(function(child)
    wait(1)
    child:Destroy()
end)
