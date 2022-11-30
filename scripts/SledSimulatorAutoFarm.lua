game:GetService("Players").LocalPlayer.PlayerGui.MainGUI.MainFrame.PopupFrame:Destroy()
while wait() do
game:GetService("ReplicatedStorage").SledReplicatedStorage.Events.StartRaceEvent:FireServer()
wait(60)
game:GetService("ReplicatedStorage").SledReplicatedStorage.Events.ClosedRacePopupEvent:FireServer()
end
