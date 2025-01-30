local GrimSoulAuto = {
    Enabled = true
}

task.spawn(function()
    while GrimSoulAuto.Enabled do
        for _, obj in pairs(workspace:GetDescendants()) do
            if obj:IsA("ProximityPrompt") and obj.Parent and obj.Parent.Name:lower():find("grimsoul") then
                fireproximityprompt(obj)
                rconsoleprint("@@YELLOW@@\n[Fired ProximityPrompt: GrimSoul at " .. obj.Parent:GetFullName() .. "]\n")
            end
        end
        task.wait(0.5)
    end
end)

return GrimSoulAuto
